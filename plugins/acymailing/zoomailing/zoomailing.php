<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// load config
require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

class plgAcymailingZoomailing extends JPlugin
{
	/*
		Function: initTypeLayouts
			Callback function for the zoo layouts

		Returns:
			void
	*/
	static function initTypeLayouts($event)
	{
		$zoo = App::getInstance( 'zoo' );

		$extensions = (array) $event->getReturnValue();

		// add new ones
		$extensions[] = array('name' => 'ZOOmailing', 'path' => $zoo->path->path('zoomailing:'), 'type' => 'plugin');
		
		$event->setReturnValue($extensions);
	}

	/**
	 * Constructor class
	 *
	 * @param object $subject
	 * @param array $config
	 * @return plgZoomailing
	 */
	function plgAcymailingZoomailing(&$subject, $config) {
		parent::__construct($subject, $config);
		if(!isset($this->params)){
			$plugin = JPluginHelper::getPlugin('acymailing', 'zoomailing');
			$this->params = new JParameter($plugin->params);
		}
		$this->app = App::getInstance('zoo');
		$this->path = 'zoomailing/';

		// load default and current language
		$this->app->system->language->load('plg_acymailing_zoomailing', JPATH_ADMINISTRATOR, 'en-GB', true);
		$this->app->system->language->load('plg_acymailing_zoomailing', JPATH_ADMINISTRATOR, null, true);
	}

	function acymailing_getPluginType() {
		$onePlugin = new stdClass();
		$onePlugin->name = JText::_('ZOO');
		$onePlugin->function = 'acymailingzoomailing_show';
		$onePlugin->help = 'plugin-zoomailing';
		return $onePlugin;
	}

	function acymailingzoomailing_show() {
		$app = JFactory::getApplication();
		$pageInfo = new stdClass();
		$pageInfo->filter = new stdClass();
		$pageInfo->filter->order = new stdClass();
		$pageInfo->limit = new stdClass();
		$pageInfo->elements = new stdClass();
		$paramBase = ACYMAILING_COMPONENT.'.zoomailing';

		$pageInfo->filter->order->value = $app->getUserStateFromRequest($paramBase.".filter_order", 'filter_order',	'a.id','cmd');
		$pageInfo->filter->order->dir	= $app->getUserStateFromRequest($paramBase.".filter_order_Dir", 'filter_order_Dir',	'desc',	'word');
		$pageInfo->search = $app->getUserStateFromRequest($paramBase.".search", 'search', '', 'string');
		$pageInfo->search = JString::strtolower($pageInfo->search);
		$pageInfo->filter_app = $app->getUserStateFromRequest($paramBase.".filter_app", 'filter_app','','int');
		
		if(!$pageInfo->filter_app) {
			$pageInfo->filter_app = $this->app->zm->firstApplication();	
		}
		
		$pageInfo->filter_reset = JRequest::getInt('filter_reset');
		if($pageInfo->filter_reset != 1) {
			$pageInfo->filter_type = $app->getUserStateFromRequest($paramBase.".filter_type", 'filter_type','','array');
			$pageInfo->filter_cat = $app->getUserStateFromRequest($paramBase.".filter_cat", 'filter_cat','','array');
			$pageInfo->filter_tag = $app->getUserStateFromRequest($paramBase.".filter_tag", 'filter_tag','','array');
		} else { 
			$app->setUserState($paramBase.".filter_type", null);
			$app->setUserState($paramBase.".filter_cat", null);
			$app->setUserState($paramBase.".filter_tag", null);
			$pageInfo->filter_type = null;
			$pageInfo->filter_cat = null;
			$pageInfo->filter_tag = null;
		}

		$pageInfo->lang = $app->getUserStateFromRequest($paramBase.".lang", 'lang','','string');

		$pageInfo->limit->value = $app->getUserStateFromRequest($paramBase.'.list_limit', 'limit', $app->getCfg('list_limit'), 'int');
		$pageInfo->limit->start = $app->getUserStateFromRequest($paramBase.'.limitstart', 'limitstart', 0, 'int');
		$db = JFactory::getDBO();

		$filters[] = "a.application_id = ".$pageInfo->filter_app;

		$searchFields = array('a.id', 'a.name', 'a.alias', 'u.name', 'u.username');
		if(!empty($pageInfo->search)){
			$searchVal = '\'%'.$db->getEscaped($pageInfo->search,true).'%\'';
			$filters[] = implode(" LIKE $searchVal OR ",$searchFields)." LIKE $searchVal";
		}
		
		if(!is_array($pageInfo->filter_type)) $pageInfo->filter_type = array();
		if(count($pageInfo->filter_type) > 0) unset($pageInfo->filter_type[0]);
		if(!empty($pageInfo->filter_type)){
			$filters[] = "a.type IN('". implode("','", $pageInfo->filter_type). "')";
		}
		
		if(!is_array($pageInfo->filter_cat)) $pageInfo->filter_cat = array();
		if(count($pageInfo->filter_cat) > 0) unset($pageInfo->filter_cat[0]); 
		if(!empty($pageInfo->filter_cat)){
			$filters[] = "c.category_id IN(". implode(',', $pageInfo->filter_cat). ")";
		}

		if(!is_array($pageInfo->filter_tag)) $pageInfo->filter_tag = array();
		if(count($pageInfo->filter_tag) > 0) unset($pageInfo->filter_tag[0]);  
		if(!empty($pageInfo->filter_tag)){
			$filters[] = "t.name IN('". implode("','", $pageInfo->filter_tag). "')";
		}

		if($this->params->get('displayzoo', 'all') == 'onlypub'){
			$filters[] = "a.state = 1";
		}

		$whereQuery = '';
		if(!empty($filters)){
			$whereQuery = ' WHERE('.implode(') AND(',$filters).')';
		}

		$query = 'SELECT SQL_CALC_FOUND_ROWS a.id, a.name, a.alias, a.created_by, u.name AS author, u.username
		FROM '.acymailing_table('zoo_item',false).' as a';
		$query .=' LEFT JOIN `'.acymailing_table('zoo_category_item',false).'` AS c ON c.item_id = a.id';
		$query .=' LEFT JOIN `'.acymailing_table('zoo_tag',false).'` AS t ON t.item_id = a.id';
		$query .=' LEFT JOIN `#__users` AS u ON u.id = a.created_by';

		if(!empty($whereQuery)) $query.= $whereQuery;
		$query .= ' GROUP BY a.id';
		if(!empty($pageInfo->filter->order->value)){
			$query .= ' ORDER BY '.$pageInfo->filter->order->value.' '.$pageInfo->filter->order->dir;
		}

		$db->setQuery($query,$pageInfo->limit->start,$pageInfo->limit->value);

		$rows = $db->loadObjectList();
		if(!empty($pageInfo->search)){
			$rows = acymailing_search($pageInfo->search,$rows);
		}
		
		$db->setQuery('SELECT FOUND_ROWS()');
		$pageInfo->elements->total = $db->loadResult();
		$pageInfo->elements->page = count($rows);
		jimport('joomla.html.pagination');
		$pagination = new JPagination($pageInfo->elements->total, $pageInfo->limit->start, $pageInfo->limit->value);
	?>
		<table class="adminform" width="100%">
			<tr>
				<td>Application : <?php echo $this->app->zmhtml->_('zm.applicationList', $pageInfo->filter_app); ?> <input type="hidden" name="filter_reset" value="0" /></td>
			</tr>
		</table>
	<?php
		$tabs = acymailing_get('helper.acytabs');
		echo $tabs->startPane('joomlazoo_tab');
		
		echo $tabs->startPanel('Items', 'joomlazoo_zoo');
		include_once $this->path.'tab/item.php';
		echo $tabs->endPanel();
		
		echo $tabs->startPanel('Categories', 'joomlazoo_auto');
		include_once $this->path.'tab/category.php';
		echo $tabs->endPanel();
		echo $tabs->endPane();
	}

	// Replace Tags
	function acymailing_replacetags(&$email, $send) {
		$this->app->zm->_replaceVars($email, $this->params);
	}

	// Replace User Tags
	function acymailing_replaceusertags(&$email, &$user, $send) {
		$this->app->zm->_replaceAuto($email, $user, $this->params);
		$this->app->zm->_replaceItems($email, $user, $this->params);
	}

	// auto-newsletter
	function acymailing_generateautonews(&$email) {
		return $this->app->zm->acymailing_generateautonews($email, $this->params);
	}
	
}