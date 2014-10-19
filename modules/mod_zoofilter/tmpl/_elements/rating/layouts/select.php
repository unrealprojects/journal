<?php
/**
* @package		ZOOfilter
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

	// init vars
	$default 		= $params->find('layout._default', array());
	$txtChoose 		= $params->find('layout._choosetext', 'Choose');
	$attribs		= '';
	$options 		= array();

	// get default values
	$value = $value ? $value : array('from' => $default);

	// check Choose text
	$txtChoose = $txtChoose == 'Choose' || $txtChoose == '' ? JText::_('PLG_ZOOFILTER_CHOOSE') : JText::_($txtChoose);

	// add the select text option
	$options[] = $app->html->_('select.option', '', $txtChoose);

	// set attributes
	$attribs .= $params->find('search._required', 0) ? ' required' : '';
	
	foreach ($stars as $star) {
		// Value is name, as stored in the zoo search table
		$options[] = $app->html->_('select.option', $star, $star);
	}
		
	echo $app->html->_('select.genericlist', $options, 'elements['.$element->identifier.'][from]', $attribs, 'value', 'text', $value ? $value['from'] : '');

	// render the hidden TO value
	echo '<input type="hidden" name="elements['.$element->identifier.'][to]" value="'.count($stars).'" />';
?>