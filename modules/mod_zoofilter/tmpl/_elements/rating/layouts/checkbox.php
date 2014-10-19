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
	foreach ($stars as $star) {

		// set check value
		$checked = in_array($star, $value) ? ' checked="checked"' : null;

		$result[] = 
		'<span class="checkbox-row">'
			.'<input id="rating'.$star.'_'.$i.'" type="checkbox" name="elements['.$element->identifier.'][]" value="'.$star.'"'.$checked.$attribs.' />'
			.'<label for="rating'.$star.'_'.$i++.'">'.$star.'</label>'
		.'</span>';
	}

	echo implode("\n", $result);	
?>