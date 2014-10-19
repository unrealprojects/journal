<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class ZooCatLayout{
	
	static function render($items, $parameter){
		$stringTag = '';
		if(!empty($items)){
			if(empty($parameter->col)) {
				$parameter->col = 1;
			}
			$stringTag .= '<table><tr>';
			foreach($items as $i => $item){
				$stringTag .= '<td valign="top">';
				$args = array();
				$args[] = 'joomlazoo:'. $item->id;
				$args[] = 'layout:'. $parameter->layout;
				if(!empty($parameter->lang)) $args[] = 'lang:'. $parameter->lang;
				$stringTag .= '{'.implode('|',$args).'}';
				$stringTag .= '</td>';
				if(($i + 1) % $parameter->col == 0) {
					$stringTag .= '</tr><tr>';
				}
			}
			$tmp =($i + 1) % $parameter->col;
			if($tmp > 0 && $tmp < $parameter->col) {
					
			}
			$stringTag .= '</tr></table>';
		}
		
		return $stringTag;
	}
	
}