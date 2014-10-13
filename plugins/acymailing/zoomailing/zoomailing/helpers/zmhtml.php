<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

/*
   Class: HTMLHelper
   	  A class that contains zoo html functions
*/
class ZMHTMLHelper extends AppHelper {

	public function _($type) {

		// get arguments
		$args = func_get_args();

		// Check to see if we need to load a helper file
		$parts = explode('.', $type);

		if (count($parts) >= 2) {
			$func = array_pop($parts);
			$file = array_pop($parts);

			if (in_array($file, array('zm', 'control')) && method_exists($this, $func)) {
				array_shift($args);
				return call_user_func_array(array($this, $func), $args);
			}
		}

		return call_user_func_array(array('JHTML', '_'), $args);

	}
	
	/*
		Function: applicationList
			Returns application select list html string.
	*/
	public function applicationList($filter_app) {
		$db = JFactory::getDBO();
		
		$query = 'SELECT za.*
		FROM #__zoo_application AS za
		ORDER BY za.name';
		$db->setQuery($query);
		$apps = $db->loadObjectList();
		$list = array();
		foreach($apps as $app) {
			$list[] = JHTML::_('select.option', $app->id, $app->name);
		}
		
		return JHTML::_('select.genericlist', $list, 'filter_app', 'class="inputbox" size="1" onchange="document.adminForm.filter_reset.value = 1; document.adminForm.submit();"', 'value', 'text', $filter_app);
	}
	
	/*
		Function: typeList
			Returns type select list html string.
	*/
	public function typeList($filter_app, $filter_type = null) {
		$db = JFactory::getDBO();
		
		$list = array();
		$application = $this->app->table->application->get($filter_app);
		foreach($application->getTypes() as $type) {
			$list[] = JHTML::_('select.option', $type->id, JText::_($type->name));
		}
		
		return JHTML::_('select.genericlist', $list, 'filter_type[]', 'class="inputbox" size="10" multiple', 'value', 'text', $filter_type);			
	}
	
	/*
		Function: categoryList
			Returns category select list html string.
	*/
	public function categoryList($filter_app, $filter_cat = null) {

		$options[] = $this->app->html->_('select.option', '', '-' . JText::_('PLG_ZOOMAILING_SELECT_CATEGORY') . '-');
		$filter_app = $this->app->table->application->get($filter_app);

		return $this->app->html->_('zoo.categorylist', $filter_app, $options, 'filter_cat[]', 'class="inputbox" size="10" multiple', 'value', 'text', $filter_cat);
	}

	/*
		Function: tagList
			Returns tag select list html string.
	*/
	public function tagList($filter_app, $filter_tag = null) {
		$db = JFactory::getDBO();

		$tags = $this->app->table->tag->getAll($filter_app);

		$list = array();
		foreach($tags as $item) {
			$list[] = JHTML::_('select.option', $item->name, $item->name);
		}
		
		return JHTML::_('select.genericlist', $list, 'filter_tag[]', 'class="inputbox" size="10" multiple', 'value', 'text', $filter_tag);
	}
}