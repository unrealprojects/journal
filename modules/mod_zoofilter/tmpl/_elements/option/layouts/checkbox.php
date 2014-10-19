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
	$attribs		= '';

	// set required
	$attribs .= $params->find('search._required', 0) ? ' required' : '';

	$i = 0;
	$result = array();

	$value = $value ? $value : array(); // if this is first render, nothing to select
	foreach ($element_options as $opt) {
		$name = 'element-'.$element->identifier;
		$search_value = urlencode($opt['name']); // name is used, as stored in the zoo search table

		// set check value
		$checked = in_array($search_value, $value) ? ' checked="checked"' : null;

		$result[] = 
		'<span class="checkbox-row">'
			.'<input id="'.$name.$i.'" type="checkbox" name="elements['.$element->identifier.'][]" value="'.$search_value.'"'.$checked.$attribs.' />'
			.'<label for="'.$name.$i++.'">'.($params->find('layout._trans_values') ? JText::_($opt['name']) : $opt['name']).'</label>'
		.'</span>';
	}

	echo implode("\n", $result);	
?>