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
	$multiselect    = $params->find('layout._multiple', 0);

	// set attribute
	$attribs  = $multiselect ? ' multiple="multiple" size="'.$params->find('layout._fieldsize', 5).'"' : '';
	$attribs .= $params->find('search._required', 0) ? ' required' : '';

	// convert tags to options
	foreach ($tags as $key => $tag) {
		$tags[$key] = $app->html->_('select.option', $tag->name, $tag->name);
	}

	// set Choose option
	if (!$multiselect)
	{
		// set Choose text
		$txtChoose = $params->find('layout._choosetext');
		$txtChoose = $txtChoose == 'Choose' || $txtChoose == '' ? JText::_('PLG_ZOOFILTER_CHOOSE') : JText::_($txtChoose);

		// add the option to the cats
		array_unshift($tags, $app->html->_('select.option', '', JText::_($txtChoose)));
	}

	echo $app->html->_('zoo.genericlist', $tags, 'elements['.$element->identifier.$instance.'][]', $attribs, 'value', 'text', $value, false, false );
?>