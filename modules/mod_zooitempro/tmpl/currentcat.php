<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// set current cat
if ($zoo->zlfw->enviroment->is('site.com_zoo.category')) {
	$items_params = $params->get('items');
	$items_params['_chosencats'] = isset($items_params['_chosencats']) ? $items_params['_chosencats'] : array();
	$items_params['_chosencats'][] = $zoo->zlfw->enviroment->params->get('category_id');
	$params->set('items', $items_params);
}

// get items
$items = mod_zooitemproHelper::getItems($params);

// set renderer
$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), $zoo->path->path('modules:mod_zooitempro')));

// get the renderer layout
$renderer_layout = basename($params->find('layout.renderer_layout', 'default'), '.php');

?>

<?php if (!empty($items)) : ?>

<ul class="zoo-itempro-currentcat zoo-default">
	<?php $i = 0; foreach ($items as $id => $item) : ?>
	<li><?php echo $renderer->render('item.'.$renderer_layout, compact('item', 'params')); ?></li>
	<?php $i++; endforeach; ?>
</ul>

<?php endif; ?>