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

		"_zootrack_info":{
			"type": "info",
			"specific":{
				"text": "MOD_ZOOITEMPRO_ZOOTRACK_NOT_PRESENT"
			},
			"renderif":{
				"plg_zootrack":"0"
			}
		},

		"wrapper":{
			"type":"wrapper",
			"renderif":{
				"plg_zootrack":"1"
			},
			"fields": {

				"_zootrack_layout":{
					"type":"layout",
					"label":"ZOOtrack Layout",
					"specific": {
						"path":"modules:mod_zooitempro\/tmpl\/zootrack\/layouts",
						"regex":' . json_encode('^([^_][_A-Za-z0-9]*)\.php$') . '
					},
					"default":"current.php",
					"childs":{
						"loadfields": {

							"subfield": {
								"type":"subfield",
								"path":"modules:mod_zooitempro\/tmpl\/zootrack\/layouts\/{value}\/params.php"
							}

						}
					}
				}

			}
		}

	}}';