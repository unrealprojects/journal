<?php
/**
* @package		ZOOfilter
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

/*
	Class: Zoofilter
		The controller class for zoofilter tasks
*/
class ZoofilterController extends AppController {
	
	protected $search_config = array();
	protected $items = array();
	protected $itemsTotal = 0;
	protected $search_params = null;
	protected $search_id = 0;
	protected $application = null;
	protected $plugin_params = null;

	/**
	 * Class Constructor
	 *
	 * @param App The reference to the global app object
	 * @param array An array of configuration values to pass to the controller
	 *
	 * @since 1.0.0
	 */
	public function __construct($app, $config = array()) {
		parent::__construct($app, $config);

		// load libraries
		jimport( 'joomla.plugin.plugin' );
		jimport( 'joomla.html.parameter' );

		// save the ZF plugin params
		$plugin = JPluginHelper::getPlugin('system', 'zoofilter');
		$this->plugin_params = $this->app->data->create($plugin->params);
	}

	/*
		Function: search
			Do the actual search

		Returns:
			HTML
	*/
	public function search( )
	{
		// init vars
		$db 		= $this->app->database;
		$menuId		= JRequest::getInt('Itemid') ? '&Itemid='.JRequest::getInt('Itemid') : '';

		// get App
		$this->application = $this->app->table->application->get(JRequest::getInt('app_id', 1));

		// for ZOOorder
		$this->addDefaultParams();

		// get compare ID
		$id = $this->getSearchId();

		// Support for tmpl (ajax)
		$url = 'index.php?option=com_zoo&controller=zoofilter&task=dosearch&search_id='.$id.'&app_id='.$this->application->id.$menuId;
		if (JRequest::getCmd('tmpl')) {
			$url .= '&tmpl=component';
		}

		$this->setRedirect(JRoute::_($url, false));
		$this->redirect();
	}

	/*
		Function: getSearchId
	*/
	protected function getSearchId()
	{
		// init vars
		$params 	= JRequest::get('request');
		$user_id 	= JFactory::getUser()->id;
		$db 		= $this->app->database;

		// remove from params any non zf related value
		$allowed = array('zoofilter', 'elements', 'Itemid', 'app_id','columns', 'controller', 'elayout', 'items_per_page', 'layout', 'module_id', 'option', 'ordering_layout', 'page_layout', 'page_title', 'redirect_if_one', 'search_limit', 'show_ordering', 'show_permalink', 'show_title', 'task', 'type');
		foreach ($params as $key => $param) {
			if(!in_array($key, $allowed)) unset($params[$key]);
		}

		// encode
		$params = json_encode($params);

		// Use joomla query builder
		$query = $db->getQuery(true);

		// set hash
		$uuid = md5($params);

		// seek for saved search
		$query->select('search_id')->from('#__zoo_zoofilter_searches')->where('search_uuid LIKE '.$db->Quote($uuid));
		$db->setQuery($query);
		
		$this->search_id = $db->loadResult();
		
		// generate one if first time searching with this params
		if(!$this->search_id)
		{
			$query = "INSERT INTO #__zoo_zoofilter_searches (search_uuid, search_params, user_id, datetime) ";
			$query .= "VALUES (".$db->quote($uuid).", ".$db->quote($params).", ".$user_id.", NOW())";
			$db->query($query);
			
			$this->search_id = $db->insertid();
		}
		
		return $this->search_id;
	}
	
	/*
		Function: addDefaultParams
	*/
	protected function addDefaultParams()
	{
		// init vars
		$category_id 		= JRequest::getVar('category_id', 0);
		$params	          	= $category_id ? $this->app->table->category->get($category_id)->getParams('site') : $this->application->getParams('frontpage');
		$items_per_page   	= $params->get('config.items_per_page', 15);
		
		// Ordering Layout
		$ordering_layout = $this->plugin_params->get('ordering_layout', 'ordering');
		
		// Render Layout
		$layout = JRequest::getVar('result_layout', 'default');
	}
	
	protected function addDefaultParam($name, $value)
	{
		if(!JRequest::getVar($name, null))
		{
			JRequest::setVar($name, $value);
		}
	}
	
	/*
		Function: dosearch
	*/
	public function dosearch()
	{
		// init vars
		$search_id 			= JRequest::getInt('search_id', null);
		$search_params 		= $this->app->zf->getSearchParams($search_id);

		// get App
		$this->application = $this->app->table->application->get($search_params->get('app_id', 1));

		// get Type
		$type = $this->application->getType($search_params->get('type', ''));

		// save params
		$this->search_params = $search_params;
			
		// Request Variables
		$page = JRequest::getInt( 'page', 1 );
		
		// Get site params for the current application
		$params = $this->application->getParams('site');
		
		// Search Configuration
		$elayout = JFile::stripExt($search_params->get('elayout'));

		// set renderer
		$search_render = $this->app->renderer->create('item')->addPath(array($this->app->path->path('modules:mod_zoofilter')));
		$search_config = $search_render->getConfig('item')->get($this->application->getGroup().'.'.$type->id.'.'.$elayout);
		$this->search_config = @$search_config['elements'];
		
		if(!$this->search_config)
		{
			$this->search_config = array();
		}
		
		// as logic is new feature in zoofilter 2.5, we make sure it's allways set
		foreach ($this->search_config as $key => $row) 
		{
			if (!array_key_exists('logic', $row)) 
			{
				$this->search_config[$key]['logic'] = "AND";
			}
		}
		
		// The data passed by the search form
		$elements = $search_params->get('elements', array());
		
		// Apply filters
		$this->applyFilters( $elements );		
		
		$this->search_id = $search_id;
		
		$session_key = 'ZOOFILTER_SEARCH_FORM_' . $search_params->get('module_id');
		$this->app->system->application->setUserState($session_key, serialize($elements));
		
		// Display	
		$this->display();
	}
		
	public function display($cachable = false, $urlparams = false)
	{	
		$search_params 		= $this->search_params;
		$items 				= $this->items;
		
		// Get site params for the current application
		$params = $this->application->getParams( 'site' );
	
		if (count($items) == 1 && $search_params->get('redirect_if_one')) {
			
			$item = array_pop($items);
			$link = JRoute::_('index.php?option=com_zoo&task=item&item_id='.$item->id, false);
			JFactory::getApplication()->redirect($link);
		}
		
		// Pepare the view
		$view = new AppView( array(
			'name' => 'category'
		));
		
		$layout = strlen($search_params->get('page_layout')) ? $search_params->get('page_layout') : 'search';
		
		// JSON support
		if (JRequest::getVar('format', '') == 'json')
		{
			$layout = 'json';
		}
		
		$item_layout = $search_params->find('zoofilter.item_layout', $search_params->get('layout'));

		$view->addTemplatePath( $this->app->path->path('zoofilter:layouts') );
		$view->addTemplatePath( $this->application->getTemplate( )->getPath( ) ); // override by App
		$view->setLayout( $layout );

		// Add the necessary variables for the view
		$view->app = $this->app;
		$view->items = $items;
		$view->application = $this->application;
		$view->item_layout = $item_layout;
		
		$item_ids = array();
		foreach ($items as $item) {
			$item_ids[] = $item->id;
		}

		// get item pagination
		$items_per_page = $search_params->get('items_per_page');
		$page = JRequest::getVar( 'page', 1 );
		$view->pagination = $this->app->pagination->create( $this->itemsTotal, $page, $items_per_page, 'page', 'app' );
		$view->pagination->setShowAll( $items_per_page == 0 );
		$uri = JURI::getInstance();
		$uri->setVar('page', null); 
		$view->total = $this->itemsTotal;
		
		$view->pagination_link = $uri->toString();
		
		// set template and params
		$view->assign('template', $this->application->getTemplate());
		$view->params = $params;
		$view->assign('search_params', $search_params);
		
		// set renderer
		$uri = JURI::getInstance();
		$permalink = $uri->toString(array('scheme', 'host', 'port')) . JRoute::_('index.php?option=com_zoo&controller=zoofilter&task=dosearch&app_id='.$this->application->id.'&search_id='.$this->search_id);
		
		$view->show_permalink = $search_params->get('show_permalink');
		$view->permalink = $permalink;
		$view->app_id = $this->application->id;
		$view->search_id = $this->search_id;
		$view->show_title = $search_params->get('show_title');
		$view->show_ordering = $search_params->get('show_ordering');
		$view->columns = $search_params->get('columns');
		$view->page_title = $search_params->get('page_title');
		$view->renderer = $this->app->renderer->create( 'item' );
		$view->renderer->addPath( array($this->app->path->path('component.site:'), $this->application->getTemplate()->getPath(), $this->app->path->path('zoofilter:')) );
		
		// Add ordering
		$this->app->path->register($this->app->path->path('zoofilter:ordering/renderer'), 'renderer');
		$order_renderer = $this->app->renderer->create('ordering')->addPath(array( $this->app->path->path('zoofilter:ordering')) );
		$elements_layout = $search_params->get('ordering_layout');
		$type = $this->application->getType($search_params->get('type'));
		
		$order_elements = $order_renderer->render('item.'.$elements_layout, compact('type') );
		$view->assign('order_elements', $order_elements);
		
		// display view				
		$view->display();
	}
	
	/**
	 * Get element param
	 */
	protected function getParamFrom($param, $element, $default='')
	{
		// Search for the right element config
		foreach($this->search_config as $oc) if (@$oc['element'] == $element) {
			$params = $this->app->data->create($oc);
			return $params->find($param);
		}
		return '';
	}

	/**
	 * Apply the filters
	 */
	protected function applyFilters( $elements )
	{
		// init vars
		$search_params 		= $this->search_params;
		$app_id 			= $search_params->get('app_id');
		$type_id 			= $search_params->get('type');
		$type 				= $this->app->table->application->get($app_id)->getType($type_id);
		
		// init model
		$model = $this->app->zlmodel->getNew('item');
		$model	->setState('select', 'DISTINCT a.*')
				->application(array('value' => $app_id))
				->type(array('value'  => $type_id))
				->state(true)
				->searchable(true);

		/* === Core: Name element === */
		if( strlen( trim( @$elements['_itemname'] ) ) )
		{
			$name = array(
				'value' => trim( @$elements['_itemname'] ),
				'type' => $this->getParamFrom('layout._search_type', '_itemname'),
				'logic' => $this->getParamFrom('search._logic', '_itemname')
			);
			
			$model->name($name);
		}
		unset($elements['_itemname']);


		/* === Core: Categories === */
		
		// retrieve category params
		$cat_search_config = array(); $i = 0;
		foreach ($this->search_config as $oc) 
		{
			if ( @$oc['element'] == '_itemcategory' ) 
			{
				$cat_search_config["_itemcategory-$i"] = $oc;
				$i++;
			}
		}
		
		// create the Category object
		$cat_elements = array(); $i = 0;
		foreach ($elements as $key => $value) 
		{
			if ( strpos($key, "_itemcategory") !== false ) 
			{
				$el_key = "_itemcategory-$i";
				$cat_elements[$el_key]['values'] = $value;
				$cat_elements[$el_key]['params'] = @$cat_search_config[$el_key];
				unset($elements[$key]);
				$i++;
			}
		}

		if (!empty($cat_elements))
		{
			$cats_filter = array();
			foreach($cat_elements as $element)
			{
				$cat_filter = array();
				$params = $this->app->data->create($element['params']);

				$values = $element['values'];
				$cat_filter['logic'] = $params->find('search._logic', 'AND');
				$cat_filter['mode'] = $params->find('layout._mode', 'AND');
				$cat_filter['value'] = array();
				
				foreach ($values as $id) 
				{
					// Skip id if empty
					if (empty( $id )) continue;

					$id = explode(',', $id);
					$cat_filter['value'][] = array_pop($id);
				}
				
				$model->categories($cat_filter);		
			}	
		}


		/* === Core: Tags === */

		// retrieve tags params
		$tag_search_config = array(); $i = 0;
		foreach ($this->search_config as $oc) 
		{
			if ( @$oc['element'] == '_itemtag' ) 
			{
				$tag_search_config["_itemtag-$i"] = $oc;
				$i++;
			}
		}

		// create the Category object
		$tag_elements = array(); $i = 0;
		foreach ($elements as $key => $value) 
		{
			if ( strpos($key, "_itemtag") !== false ) 
			{
				$el_key = "_itemtag-$i";
				$tag_elements[$el_key]['values'] = $value;
				$tag_elements[$el_key]['params'] = @$tag_search_config[$el_key];
				unset($elements[$key]);
				$i++;
			}
		}

		if (!empty($tag_elements))
		{
			foreach($tag_elements as $element)
			{
				$tag_filter = array();
				$params = $this->app->data->create($element['params']);

				$values = $element['values'];
				$tag_filter['logic'] = $params->find('search._logic', 'AND');
				$tag_filter['mode'] = $params->find('layout._mode', 'AND');
				$tag_filter['value'] = array();
				
				foreach ($values as $id) 
				{
					// Skip id if empty
					if (empty( $id )) continue;

					$id = explode(',', $id);
					$tag_filter['value'][] = array_pop($id);
				}
				
				$model->tags($tag_filter);		
			}	
		}


		/* === Parse the other search values === */
		$filters = array();
		foreach ($elements as $identifier => $value)
		{
			// skip unused elements
			if (is_array($value)) {
				$empty = true;
				foreach ($value as $v) if (!empty($v)) {
					$empty = false;
				}
				
				if($empty) continue;	
			} else {
				if(empty($value)) continue;
			}

			// get element object			
			$el_class = $type->getElement($identifier);

			// if element not valid, skip
			if (!$el_class) continue;
			
			// Search for the right element config
			$search_type = $this->getParamFrom('layout._search_type', $identifier);
			$logic = $this->getParamFrom('search._logic', $identifier);
			$mode = $this->getParamFrom('layout._mode', $identifier);
			$convert = $this->getParamFrom('layout._convert', $identifier);
			
			// get Element type
			$el_type = $el_class->config->type;
			$is_date = in_array($el_type, array('date', 'datepro'));
			
			// Options elements should always be searched exacly, not partial, and we must decode them
			$is_select = ( $el_class instanceof ElementOption ) ? true : false;
			
			// is a multiple choice?
			if (is_array( $value ) && count( $value ))
			{
				// more than one selected?
				if( count($value) > 1 )
				{
					// Search for 'value\nvalue\nvalue' pattern
					$selections = array();
					foreach ($value as $key => $option)
					{
						// Was something selected?
						if (isset($option)) {
							$selections[$key] = $option;
						}
					}

					$from = array_key_exists('from', $selections) ? $selections['from'] : null;
					$to = array_key_exists('to', $selections) ? $selections['to'] : null;

					// set a range type if empty
					if (!$search_type && isset($from) && isset($to)) $search_type = 'range';
					
					$filter = array(
						'id'	=> $identifier,
						'logic' => $logic,
						'value' => $selections,
						'from'	=> $from,
						'to'	=> $to,
						'mode' => $mode,
						'type' => $search_type,
						'is_date' => $is_date,
						'is_select' => $is_select,
						'convert' => $convert
					);

					$model->element($filter);
				}
				else // only one selection
				{
					$is_select ? $value = urldecode(array_shift($value)) : $value = array_shift( $value );
					$is_select ? $search_type = 'partial' : $search_type;
					$filter = array(
						'id'	=> $identifier,
						'logic' => $logic,
						'value' => array($value),
						'mode' => $mode,
						'type' => $search_type,
						'is_date' => $is_date,
						'is_select' => $is_select,
						'convert' => $convert
					);

					$model->element($filter);
				}
			}
			else // is a single choice, multiselection is not allowed
			{
				if( strlen($value) )
				{					
					// Decode value
					if ($is_select) $value = urldecode($value);
					
					$filter = array(
						'id'	=> $identifier,
						'logic' => $logic,
						'value' => $value,
						'type' => $search_type,
						'is_date' => $is_date,
						'is_select' => $is_select,
						'convert' => $convert
					);

					$model->element($filter);
				}
			}
		}

		$items_per_page = $search_params->get('items_per_page');
		$page = JRequest::getVar( 'page', 1 );
		
		$this->setOrder($model);

		if(!$items_per_page == 0)
		{
			$model->setState('limitstart', ($page - 1) * $items_per_page, true );
			$model->setState('limit', $items_per_page, true);
		}

		$this->items = $model->getList();
		$this->itemsTotal = $model->getResult();

		// Debug
		if (JDEBUG && JRequest::getVar('format', '') != 'json')
		{
			// pretty print of sql
			$find = Array("FROM", "WHERE", "AND", "ORDER BY", "LIMIT", "OR");
			$replace = Array("<br />FROM", "<br />WHERE", "<br />AND", "<br />ORDER BY", "<br />LIMIT", "<br />OR");
			$in = $model->getQuery();
			echo '<b>Query</b>';
			echo str_replace($find, $replace, $in);
			
			$in = $model->getResultQuery();
			echo '<br /><b>Result Query</b>';
			echo str_replace($find, $replace, $in);
		}
	}
	
	protected function setOrder(&$model)
	{
		$search_params = $this->search_params;
		
		$order = JRequest::getVar('order', $search_params->get('order'));
		$direction = JRequest::getVar('direction', $search_params->get('direction'));
		$ordertype = JRequest::getVar('ordertype', $search_params->get('ordertype'));

		// default ordering from app config
		if(!$order)
		{
			$order = array_values((array)$this->application->getParams()->get('global.config.item_order', array('_itemname')));
		}
		else // order from result form
		{
			$order = array(
				0 => $order, // main order
				1 => $direction == 'desc' ? '_reversed' : '', // direction
				2 => $ordertype ? '_alphanumeric' : '' // ordertype
			);
		}

		$model->setState('order_by', $order);
	}
	
	

	/***********************************************
	********** AJAX CATEGORY SEACH *****************
	*************************************************/
	/*
		Function: getCats
			Get the categories

	   Parameters:
            	root - root that will be used, subcategories are returned
            	allTheRest - if true all subcategories with their subcategories will be returned as formated tree
            		         otherwise only immediately subcategories are returned;
            		         used when max depth is set
            	app_id - application id

		Returns: JSON
	*/
	function getCats()
	{		
		$root 					= $this->app->request->getInt('root', 0);
		$allTheRest 			= $this->app->request->getInt('all', 0);
		$application 			= $this->app->request->getInt('app_id', 0);
		$hide_empty 			= $this->app->request->get('hide_empty', 'int', 0);
		$show_number_items		= $this->app->request->get('show_number_items', 0);
		$el_type				= $this->app->request->get('el_type', '');
		$lay_name				= $this->app->request->get('lay_name', '');

		$search_id = JRequest::getInt('search_id', null);
		$search_params = $this->app->zf->getSearchParams($search_id);

		// if no instance, get app from session
		$application = ($application != 0) ? $this->app->table->application->get($application) : $this->app->getApplication();

		if (is_object($application))
		{
			if ($allTheRest) {
				$maxLevel = 9999;
			} else {
				$maxLevel = 0;	
			} 

			// get categories
			$list = $this->app->zfhtml->_('zoo.categoryList', $application, $root, $maxLevel, $hide_empty, '', '', $el_type);

			// create options
			$categories = array();
			foreach ($list as $category) {
	
				$total_items = $name = '';
				if ($show_number_items)
				{
					// set query
					$model = $this->app->zlmodel->getNew('item');
					$model	->setState('select', 'DISTINCT a.*')
							->application(array('value' => $application->id))
							->type(array('value'  => $el_type))
							->categories(array('value' => array($category->id)))
							->state(true)
							->searchable(true);

					// retrieve items
					$total_items = count($model->getList());

					// set name and total items
					$pattern = array('/\[name\]/', '/\[total_items\]/');
					$replace = array($category->name, $total_items);
					$tree = str_replace($category->name, '', $category->treename);
					$name = $lay_name;
					$name = $tree.preg_replace($pattern, $replace, empty($name) ? '[name] ([total_items])' : $name);
				}
				else
				{
					// set name
					$name = $category->treename;
				}

				// using alias as index to preserve the order. Fixed issue #9
				$categories[$category->alias] = array('id' => $category->id, 'name' => $name);
			}

			// send json content
			$json = json_encode($categories);

			if($this->plugin_params->get('json_content_type', false))
				$this->app->zlfw->outputJSON($json);
			else
				echo $json;
		}
	}
}

/*
	Class: ZoofilterControllerException
*/
class ZoofilterControllerException extends AppException {}