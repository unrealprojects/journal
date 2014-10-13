<?php
/**
* @package		ZOOlanders
* @author    	JOOlanders, SL http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders, SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// retrieve credentials avoiding cache
$table = $this->app->table->get('extensions', '#__');
$table->key = 'extension_id';

$component = $table->get(JComponentHelper::getComponent('com_zoolanders')->id);
$data = $this->app->parameter->create($component->params);

$user = $data->find('zoolanders.username', '');
$pass = $data->find('zoolanders.password', false);
$pass = $pass ? $this->app->zlfw->crypt($pass, 'decrypt') : '';

?>

<form class="uk-form" action="<?php echo $this->component->link(array('controller' => $this->controller, 'task' => 'saveOptions')); ?>" method="post">

	<!-- fields -->
	<div class="uk-form-icon">
		<i class="uk-icon-user"></i>
		<input type="text" name="username" value="<?php echo $user; ?>" placeholder="<?php echo JText::_('PLG_ZLFRAMEWORK_USERNAME'); ?>" />
	</div>

	<div class="uk-form-icon">
		<i class="uk-icon-lock"></i>
		<input type="password" name="password" value="<?php echo $pass; ?>" placeholder="<?php echo JText::_('PLG_ZLFRAMEWORK_PASSWORD'); ?>" />
	</div>
	
	<!-- submit -->
	<button type="submit" class="uk-button uk-button-small uk-text-right">
		<i class="uk-icon-edit"></i> <?php echo JText::_('PLG_ZLFRAMEWORK_SAVE'); ?>
	</button>
</form>