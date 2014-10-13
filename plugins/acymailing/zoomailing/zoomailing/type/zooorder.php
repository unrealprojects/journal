<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class ZooOrderType{
	var $onclick = 'updateTag();';

	function ZooOrderType(){
		$this->values = array();
		$this->values[] = JHTML::_('select.option', "|order:default", JText::_('DEFAULT'));
		$this->values[] = JHTML::_('select.option', "|order:access,desc", JText::_('ACCESS'));
		$this->values[] = JHTML::_('select.option', "|order:created,desc", JText::_('CREATED_DATE'));
		$this->values[] = JHTML::_('select.option', "|order:hits,desc", JText::_('HITS'));
		$this->values[] = JHTML::_('select.option', "|order:modified,desc", JText::_('MODIFIED_DATE'));
		$this->values[] = JHTML::_('select.option', "|order:name,asc", JText::_('NAME'));
		$this->values[] = JHTML::_('select.option', "|order:publishdown,desc", JText::_('Publish Down Date'));
		$this->values[] = JHTML::_('select.option', "|order:publishup,desc", JText::_('Publish Up Date'));
	}
	
	function display($map,$value){
		return JHTML::_('select.genericlist', $this->values, $map , 'size="1" onclick="'.$this->onclick.'"', 'value', 'text', (string) $value);
	}
}