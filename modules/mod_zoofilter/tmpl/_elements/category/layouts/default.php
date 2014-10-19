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
	$hide_empty     = $params->find('specific._hide_empty', 0);
	$application	= $element->getType()->getApplication();
	$type			= $element->getType()->id;
	$prefix 		= $params->find('layout._list_prefix', '-&nbsp;');
	$spacer 		= $params->find('layout._list_spacer', '.&nbsp;&nbsp;&nbsp;');
	$maxLevel 		= $params->find('specific._max_level', null);
	$show_num_items = $params->find('layout._show_number_items', false);

	// check max level
	$maxLevel = ( isset($maxLevel) && ($maxLevel!='') ) ? $maxLevel : 9999 ;

	// set attribute
	$attribs  = $multiselect ? ' multiple="multiple" size="'.$params->find('layout._fieldsize', 5).'"' : '';
	$attribs .= $params->find('search._required', 0) ? ' required' : '';

	// get categories
	$categories = $app->zfhtml->_('zoo.categoryList', $application, $root_cat, $maxLevel, $hide_empty, $prefix, $spacer, $show_num_items);

	// convert categories to options
	foreach ($categories as $key => $category)
	{
		$name = '';
		if ($show_num_items)
		{
			// get total items
			$total_items = $category->totalItemCount();

			// set name and total items
			$pattern = array('/\[name\]/', '/\[total_items\]/');
			$replace = array($category->name, $total_items);
			$tree = str_replace($category->name, '', $category->treename);
			$name = $params->find('layout._name');
			$name = $tree.preg_replace($pattern, $replace, empty($name) ? '[name] ([total_items])' : $name);
		}
		else
		{
			// set name
			$name = $category->treename;
		}

		// save option
		$categories[$key] = $app->html->_('select.option', $category->id, $name);
	}

	// set Choose option
	if (!$multiselect)
	{
		// set Choose text
		$txtChoose = $params->find('layout._choosetext');
		$txtChoose = $txtChoose == 'Choose' || $txtChoose == '' ? JText::_('PLG_ZOOFILTER_CHOOSE') : JText::_($txtChoose);

		// add the option to the cats
		array_unshift($categories, $app->html->_('select.option', '', JText::_($txtChoose)));
	}

	echo $app->html->_('zoo.genericlist', $categories, 'elements['.$element->identifier.$instance.'][]', $attribs, 'value', 'text', $value, false, false );
?>