<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class ZooFilterType{
	var $onclick = 'updateTag();';

	function ZooFilterType() {
		$this->values = array();
		$this->values[] = JHTML::_('select.option', "",JText::_('PLG_ZLFRAMEWORK_NONE'));
		$this->values[] = JHTML::_('select.option', "|filter:created",JText::_('PLG_ZOOMAILING_NEWLY'));
		$this->values[] = JHTML::_('select.option', "|filter:modify",JText::_('PLG_ZOOMAILING_NEWLY_OR_MODIFIED'));
	}
	
	function display($map, $value) {
		return JHTML::_('select.genericlist', $this->values, $map , 'size="1" onclick="'.$this->onclick.'"', 'value', 'text', (string)$value);
	}
}