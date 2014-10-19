<?php
/**
* @package		ZL Framework
* @author    	JOOlanders, SL http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders, SL
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
		
		"renderer_layout":{
			"type":"layout",
			"label":"MOD_ZOOITEMPRO_FIELD_RENDERER_LAYOUT_LABEL",
			"help":"MOD_ZOOITEMPRO_FIELD_RENDERER_LAYOUT_DESC",
			"specific": {
				"path":"plugins:system\/widgetkit_zoo\/widgets\/{_widget}\/renderer\/item",
				"regex":' . json_encode('^([^_][_A-Za-z0-9]*)\.php$') . '
			}
		},
		"style":{
			"type":"layout",
			"label":"Style",
			"default":"default",
			"specific": {
				"path":"media:widgetkit\/widgets\/{_widget}\/styles",
				"mode":"folders"
			},
			"childs":{
				"loadfields": {

					"subfield": {
						"type":"subfield",
						"path":"zlfield:json\/widgetkit\/settings.json.php"
					}

				}
			},
			"control": "settings"
		}

	}}';