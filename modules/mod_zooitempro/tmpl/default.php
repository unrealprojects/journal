<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// include css
// $zoo->document->addStylesheet('mod_zooitempro:tmpl/default/style.css');

// get items
$items = mod_zooitemproHelper::getItems($params);

// set renderer
$renderer = $zoo->renderer->create('item')->addPath(array($zoo->path->path('component.site:'), $zoo->path->path('modules:mod_zooitempro')));

// get the renderer layout - it's ubication in the params has changed in v3.1, so check both
$renderer_layout = basename($params->find('layout.renderer_layout', $params->get('renderer_layout', 'default')), '.php');

?>

<?php if (!empty($items)) : ?>

<ul class="zoo-itempro-default zoo-default">
	<?php $i = 0; foreach ($items as $item) : ?>
	<li><?php echo $renderer->render('item.'.$renderer_layout, compact('item', 'params')); ?></li>
	<?php $i++; endforeach; ?>
</ul>

<?php else : ?>
    <ul class="zoo-itempro-default zoo-default"><p class="Message-Popular">Нет материалов!</p></ul>
<?php endif; ?>