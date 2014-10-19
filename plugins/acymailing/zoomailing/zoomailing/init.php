<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// init vars
$zoo = App::getInstance('zoo');

// register helpers
if ( $path = $zoo->path->path( 'zoomailing:helpers/' ) ) {
	$zoo->path->register($path, 'helpers');
	$zoo->loader->register('ZMHTMLHelper', 'helpers:zmhtml.php');
	$zoo->loader->register('ZmHelper', 'helpers:zmhelper.php');

	// set renderer
	$zoo->path->register($zoo->path->path('zoomailing:helpers/renderer'), 'renderer');
}

// register classes
$zoo->loader->register('JSite', 'root:includes/application.php');
$zoo->loader->register('ZooLayout', 'zoomailing:type/zoolayout.php');
$zoo->loader->register('ZooFilterType', 'zoomailing:type/zoofilter.php');
$zoo->loader->register('ZooOrderType', 'zoomailing:type/zooorder.php');
$zoo->loader->register('ZooCatLayout', 'zoomailing:template/zoocatlayout.php');

// register events
$zoo->loader->register('plgAcymailingZoomailing', 'root:plugins/acymailing/zoomailing/zoomailing.php');
$zoo->event->dispatcher->connect('layout:init', array('plgAcymailingZoomailing', 'initTypeLayouts'));