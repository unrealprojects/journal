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
					"text":"PLG_ZLFRAMEWORK_DEFAULT_LAYOUT",
					"big":1
				},
	
				"_search_type":{
					"type": "select",
					"label": "PLG_ZOOFILTER_SEARCH_TYPE",
					"help": "PLG_ZOOFILTER_SEARCH_TYPE_DESC",
					"specific": {
						"options": {
							"DEPRICATED use Exact Phrase instead":"partial",
							"PLG_ZLFRAMEWORK_IFT_EXACT_MATCH":"exact",
							"PLG_ZLFRAMEWORK_IFT_EXACT_PHRASE":"exact_phrase",
							"PLG_ZLFRAMEWORK_IFT_ALL_WORDS":"all_words",
							"PLG_ZLFRAMEWORK_IFT_ANY_WORD":"any_word",
							"&gt;":"from",
							"&lt;":"to",
							"&gt;=":"fromequal",
							"&lt;=":"toequal"
						}
					},
					"default": "exact",
					"dependents":"_convert !> partial OR exact_phrase OR all_words OR any_word"
				},

				"_convert":{
					"type": "select",
					"label": "PLG_ZOOFILTER_CONVERT",
					"help": "PLG_ZOOFILTER_CONVERT_DESC",
					"specific": {
						"options": {
							"PLG_ZOOFILTER_DECIMAL" : "DECIMAL",
							"PLG_ZOOFILTER_INTEGRER" : "SIGNED",
							"PLG_ZOOFILTER_DATE"	  : "DATE",
							"PLG_ZOOFILTER_DATE_TIME": "DATETIME"
						}
					}
				},
				
				"_placeholder":{
					"type": "text",
					"label": "PLG_ZOOFILTER_PLACEHOLDER",
					"help": "PLG_ZOOFILTER_PLACEHOLDER_DESC"
				}

			}
		}
				
	}}';