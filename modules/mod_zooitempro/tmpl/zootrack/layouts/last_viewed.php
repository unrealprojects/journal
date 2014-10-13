<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// set additional order
if ($params->find('layout._orderbyviewed')) {
	$items_params = $params->get('items');
	$items_params['itemorder']['_trackorder'] = '_viewdate';
	$params->set('items', $items_params);
}

// get items, using the item track model instead
$items = mod_zooitemproHelper::getItems($params, 'itemtrack');
?>

<?php if (!empty($items)) : ?>

<ul class="zoo-itempro-last-viewed zoo-default">
	<?php $i = 0; foreach ($items as $id => $item) : ?>
	<li><?php echo $renderer->render('item.'.$renderer_layout, compact('item', 'params')); ?></li>
	<?php $i++; endforeach; ?>
</ul>

<?php endif; ?>