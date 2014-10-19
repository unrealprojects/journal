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
	$attributes 	= '';
	$hide_empty     = $params->find('specific._hide_empty', 0);
	$application	= $element->getType()->getApplication();
	$maxLevel	    = $params->find('specific._max_level_number', 0);
	$show_num_items = $params->find('layout._show_number_items', false);

	// check max level
	$maxLevel = !$params->find('specific._max_level') || empty($maxLevel) ? 9999 : $maxLevel;

	// set required
	$attributes .= $params->get('required') ? ' required' : '';

	// get categories
	$categories = $app->zfhtml->_('zoo.categoryList', $application, $root_cat, $maxLevel, $hide_empty, '', '', $show_num_items);

	// convert categories to options
	foreach ($categories as &$category)
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

		// save category
		$category = $app->html->_('select.option', $category->id, $name);
	}

	$result = $app->zfhtml->_('zoo.radiolist', $categories, 'elements['.$element->identifier.$instance.'][]', $attributes, 'value', 'text', $value ? $value[0] : '');

	// render with custom separator - TODO
	echo $app->zlfw->applySeparators('tag=[<span>%s</span>]', $result);
?>