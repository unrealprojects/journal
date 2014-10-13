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
	$attribs = '';

	// set required
	$attribs .= $params->find('search._required', 0) ? ' required' : '';

	$i = 0;
	$result = array();

	$value = $value ? $value : array(); // if this is first render, nothing to select
	foreach ($tags as $tag) {

		// set input id
		$id = 'element-'.$element->identifier.$instance.'-'.$i;

		// set check value
		$checked = in_array($tag->name, $value) ? ' checked="checked"' : null;

		$result[] = 
		'<span class="checkbox-row">'
			.'<input id="'.$id.'" type="checkbox" name="elements['.$element->identifier.$instance.'][]" value="'.$tag->name.'"'.$checked.$attribs.' />'
			.'<label for="'.$id.'">'.$tag->name.'</label>'
		.'</span>';

		$i++;
	}

	echo implode("\n", $result);
?>