<?php
/**
* @package		ZOOfilter
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<?php if ($this->checkPosition('elements')) : ?>
<div class="pos-elements">
	<?php echo $this->renderPosition('elements', array('style' => 'block')); ?>
</div>
<?php endif; ?>