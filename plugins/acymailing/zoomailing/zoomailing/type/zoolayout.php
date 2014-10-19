<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class ZooLayout{

	var $onclick = '';

	function ZooLayout(){
		$zoo = App::getInstance('zoo');
		$this->values = array();
		$renderer = $zoo->renderer->create('item');
		$renderer->addPath(dirname(__FILE__). '/../');
		$layouts = $renderer->getLayouts('item');
		foreach ($layouts as $layout) {
			$this->values[] = JHTML::_('select.option', $layout, $layout);
		}
	}
	
	function display($map, $value = null){
		return JHTML::_('select.genericlist', $this->values, $map , 'size="1" onclick="'.$this->onclick.'"', 'value', 'text', $value);
	}
}