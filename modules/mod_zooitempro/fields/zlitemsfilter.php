<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// load config
require_once(JPATH_ADMINISTRATOR . '/components/com_zoo/config.php');

	return 
	'{"fields": {

		"items": {
			"type":"subfield",
			"path":"zlfield:json/itemfilter.json.php",
			"arguments":{
				"params":{
					"apps":{
						"label":"PLG_ZLFRAMEWORK_APPS",
						"help":"PLG_ZLFRAMEWORK_APP_APPS_DESC",
						"multi":"true"
					},
					"types":{
						"label":"PLG_ZLFRAMEWORK_TYPES",
						"help":"PLG_ZLFRAMEWORK_APP_TYPES_DESC",
						"multi":"true"
					},
					"categories":{
						"label":"PLG_ZLFRAMEWORK_CATEGORIES",
						"help":"PLG_ZLFRAMEWORK_APP_CATS_DESC",
						"multi":"true"
					},
					"tags":{
						"label":"PLG_ZLFRAMEWORK_TAGS",
						"help":"PLG_ZLFRAMEWORK_APP_TAGS_DESC",
						"multi":"true"
					},
					"itemfilter":{
						"enabled":"true"
					},
					"itemorder":{
						"enabled":"true"
					}
				}
			},
			"adjust_ctrl":{ './* adjust the ctrl on the fly to keep compatibility as before the filter was not under layout control */'
				"pattern":'.json_encode('/\[layout\]/').',
				"replacement":"[items]"
			}
		}

	}}';