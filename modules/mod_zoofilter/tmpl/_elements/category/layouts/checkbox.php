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
	$type			= $element->getType()->id;
	$maxLevel 		= $params->find('specific._max_level', null);
	$show_num_items = $params->find('layout._show_number_items', false);

	// check max level
	$maxLevel = ( isset($maxLevel) && ($maxLevel!='') ) ? $maxLevel : 9999 ;

	// render as checkbox but only if multiple is selected
	// TODO: make javascript select all

	// get categories
	$categories = $app->zfhtml->_('zoo.categoryList', $application, $root_cat, $maxLevel, $hide_empty, '', '', $show_num_items);

	$i     = 0;
	$html  = array();
	$value = $value ? $value : array(); // if this is first render, nothing to select
	foreach ($categories as $category)
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

		// set input id
		$id = 'element-'.$element->identifier.$instance.'-'.$i;

		// set check value
		$checked = in_array($category->id, $value) ? ' checked="checked"' : null;

		// set input
		$input = '<input id="'.$id.'" type="checkbox" name="elements['.$element->identifier.$instance.'][]" value="'.$category->id.'"'.$checked.$attributes.' />';

		// set label
		$label = '<label class="layout" for="'.$id.'">'.$name.'</label>';
		
		// add value to array
		$html[]  = '<div>'.$input.$label.'</div>';

		$i++;
	}
	
	echo implode("\n", $html);

?>