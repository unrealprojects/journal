<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// get ZOOtrack selected layout
$zt_layout = $params->find('layout._zootrack_layout', 'current.php');

// set renderer
$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), $zoo->path->path('modules:mod_zooitempro')));
$renderer_layout = basename($params->find('layout.renderer_layout', 'default'), '.php');

// render layout
if ($layout = $zoo->path->path('modules:mod_zooitempro/tmpl/zootrack/layouts/'.$zt_layout)) {
	echo $zoo->zlfw->renderLayout($layout, compact('params', 'renderer', 'renderer_layout', 'zoo'));
}