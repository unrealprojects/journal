<?php
/**
* @package		ZOOitem Pro
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// init vars
$item = $zoo->system->session->get('com_zoo.zootrack.items.current', false);

?>

<?php if (!empty($item)) : ?>

<div class="zoo-itempro-zootrack-current zoo-default">
	<?php $item = $zoo->table->item->get($item); ?>
	<?php echo $renderer->render('item.'.$renderer_layout, compact('item', 'params')); ?>
</div>

<?php endif; ?>