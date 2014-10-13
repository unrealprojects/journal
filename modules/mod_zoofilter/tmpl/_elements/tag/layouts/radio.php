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
	foreach ($tags as $tag) {
		$options[] = $app->html->_('select.option', $tag->name, $tag->name);
	}

	// render the radio, will override the previous hidden input if checked
	$result = $app->zfhtml->_('zoo.radiolist', $options, 'elements['.$element->identifier.$instance.'][]', $attribs, 'value', 'text', $value ? @$value['0'] : '');

	// render with custom separator - TODO
	echo $app->zlfw->applySeparators('tag=[<span>%s</span>]', $result);
?>