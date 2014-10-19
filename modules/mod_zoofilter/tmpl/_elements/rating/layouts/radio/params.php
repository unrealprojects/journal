<?php
/**
* @package   com_zoo
* @author    ZOOlanders http://www.zoolanders.com
* @copyright Copyright (C) ZOOlanders.com
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// load config
require_once(JPATH_ADMINISTRATOR . '/components/com_zoo/config.php');

	// get default options values
	$stars = range(1, $element->config->get('stars', 5));
	$options = array(0 => JText::_('PLG_ZLFRAMEWORK_NONE'));
	foreach ($stars as $star){
		$options[$star] = $star;
	}
	
	return 
	'{"fields": {
		"layout_wrapper":{
			"type": "fieldset",
			"fields": {

				"layout_separator":{
					"type":"separator",
					"text":"Radio Layout",
					"big":1
				},

				"_default":{
					"type": "select",
					"label": "Default Selection",
					"specific": {
						"options": '.json_encode($options).'
					}
				},

				"_search_type":{
					"type": "hidden",
					"specific": {
						"value": "rangeequal"
					}
				},
				
				"_convert":{
					"type": "hidden",
					"specific": {
						"value": "DECIMAL"
					}
				}
			}
		}	
	}}';