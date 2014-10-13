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

	$app = App::getInstance('zoo');
	
	return 
	'{"fields": {
		"layout_wrapper":{
			"type": "fieldset",
			"fields": {

				"layout_separator":{
					"type":"separator",
					"text":"Range Layout",
					"big":1
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
				},
				
				"_placeholder_from":{
					"type": "text",
					"label": "PLG_ZOOFILTER_PLACEHOLDER_FROM",
					"help": "PLG_ZOOFILTER_PLACEHOLDER_DESC"
				},
				"_placeholder_to":{
					"type": "text",
					"label": "PLG_ZOOFILTER_PLACEHOLDER_TO",
					"help": "PLG_ZOOFILTER_PLACEHOLDER_DESC"
				},
				
				"_label_from":{
					"type": "text",
					"label": "PLG_ZOOFILTER_LABEL_FROM",
					"help": "PLG_ZOOFILTER_LABEL_DESC"
				},
				"_label_to":{
					"type": "text",
					"label": "PLG_ZOOFILTER_LABEL_TO",
					"help": "PLG_ZOOFILTER_LABEL_DESC"
				}

			}
		}	
	}}';