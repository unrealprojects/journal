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

	$zoo = App::getInstance('zoo');

	// load default and current language, necesary for when ajax loading
	$zoo->system->language->load('mod_zooitempro', JPATH_SITE, 'en-GB', true);
	$zoo->system->language->load('mod_zooitempro', JPATH_SITE, null, true);

	return 
	'{"fields": {

		"_separator":{
			"type":"separator",
			"specific":{
				"title":"Widgetkit"
			},
			"layout":"section"
		},
		"widgetkit":{
			"type":"subfield",
			"path":"modules:mod_zooitempro\/fields\/widgetkit.json.php",
			"arguments":{
				"params":{
					"widgets":{
						"Accordion":"accordion",
						"Slideset":"slideset",
						"Slideshow":"slideshow"
					}
				}
			}
		},
		"_separator1":{
			"type":"separator",
			"specific":{
				"title":"PLG_ZLFRAMEWORK_ITEMS"
			},
			"layout":"section"
		},
		"cache_time": {
			"type":"text",
			"label":"MOD_ZOOITEMPRO_FIELD_CACHE_TIME_LABEL",
			"help":"MOD_ZOOITEMPRO_FIELD_CACHE_TIME_DESC",
			"default":"3600"
		},
		"itemsfilter":{
			"type":"subfield",
			"path":"modules:mod_zooitempro\/fields\/zlitemsfilter.php"
		}

	}}';