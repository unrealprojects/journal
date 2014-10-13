<?php
/**
* @package		ZOOfilter
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

	// set attributes
	$default = $params->find('layout._default', array());
	$attribs = $params->find('search._required', 0) ? ' required' : '';

	// get default values
	$value = $value ? $value : array('from' => $default);

	// get the options
	$options = array();
	foreach ($stars as $star) {
		$options[] = $app->html->_('select.option', $star, $star);
	}

	// render the hidden FROM value, necesary if the radio is unchecked
	echo '<input type="hidden" name="elements['.$element->identifier.'][from]" value="" />';

	// render the radio, will override the previous hidden input if checked
	$result = $app->zfhtml->_('zoo.radiolist', $options, 'elements['.$element->identifier.'][from]', $attribs, 'value', 'text', $value ? @$value['from'] : '');

	// render with custom separator - TODO
	echo $app->zlfw->applySeparators('tag=[<span>%s</span>]', $result);

	// render the hidden TO value
	echo '<input type="hidden" name="elements['.$element->identifier.'][to]" value="'.count($stars).'" />';
?>