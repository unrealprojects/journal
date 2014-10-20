<?php
/**
 * @version		2.6.x
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die;

?>

<!-- K2 user profile form -->
<form action="<?php echo JURI::root(true); ?>/index.php" enctype="multipart/form-data" method="post" name="userform" autocomplete="off" class="form-validate">
	<div id="k2Container" class="k2AccountPage Grid Merge">
            <header style="margin-bottom:20px;"><h1>Редактирование профиля</h1></header>
			<div class="Control-Group">
				<label class="Node-XS-3">
					Логин
				</label>
					<span><b><?php echo $this->user->get('username'); ?></b></span>
			</div>

			<div class="Control-Group">
			        <label class="Node-XS-3" id="namemsg" for="name">Имя</label>
					<input type="text" class="Node-XS-9"  name="<?php echo $this->nameFieldName; ?>" id="name" size="40" value="<?php echo $this->escape($this->user->get( 'name' )); ?>" class="inputbox required" maxlength="50" />
			</div>

			<div class="Control-Group">
					<label class="Node-XS-3"  id="emailmsg" for="email">Email</label>
					<input type="text" class="Node-XS-9"  id="email" name="<?php echo $this->emailFieldName; ?>" size="40" value="<?php echo $this->escape($this->user->get( 'email' )); ?>" class="inputbox required validate-email" maxlength="100" />
			</div>

			<?php if(version_compare(JVERSION, '2.5', 'ge')): ?>
			<div class="Control-Group">
				<label class="Node-XS-3" id="email2msg" for="email2">Повторите Email</label>
				<input type="text" class="Node-XS-9"  id="email2" name="jform[email2]" size="40" value="<?php echo $this->escape($this->user->get( 'email' )); ?>" class="inputbox required validate-email" maxlength="100" />
			</div>

			<?php endif; ?>
			<div class="Control-Group">
				<label class="Node-XS-3"  id="pwmsg" for="password">Пароль</label>
				<input class="inputbox validate-password Node-XS-9" type="password" id="password" name="<?php echo $this->passwordFieldName; ?>" size="40" value="" />
			</div>

			<div class="Control-Group">
					<label class="Node-XS-3"  id="pw2msg" for="password2">Повторите пароль</label>
					<input class="inputbox validate-passverify Node-XS-9" type="password" id="password2" name="<?php echo $this->passwordVerifyFieldName; ?>" size="40" value="" />
			</div>

			<div class="Control-Group">
					<label class="Node-XS-3"  id="gendermsg" for="gender">Пол</label>
					<div class="Node-XS-2"><?php echo $this->lists['gender']; ?></div>
			</div>

			<div class="Control-Group">
					<label class="Node-XS-3"  id="urlmsg" for="url">Ссылка</label>
					<input type="text" class="Node-XS-9"  size="50" value="<?php echo $this->K2User->url; ?>" name="url" id="url"/>
			</div>

			<?php if(count(array_filter($this->K2Plugins))): ?>

			<?php foreach($this->K2Plugins as $K2Plugin): ?>
			<?php if(!is_null($K2Plugin)): ?>
			<div class="Control-Group">
					<?php echo $K2Plugin->fields; ?>
			</div>
			<?php endif; ?>
			<?php endforeach; ?>
			<?php endif; ?>
			<?php if(isset($this->params) && version_compare(JVERSION, '1.6', 'lt')): ?>
			<div class="Control-Group">
				<label class="Node-XS-3"  class="k2ProfileHeading">
					<?php echo JText::_('K2_ADMINISTRATIVE_DETAILS'); ?>
				</label>
			</div>
			<div class="Control-Group">
				<?php echo $this->params->render('params'); ?>
			</div>

			<?php endif; ?>

		<div class="k2AccountPageUpdate">
			<button class="button validate" type="submit" onclick="submitbutton( this.form );return false;">
				<?php echo JText::_('K2_SAVE'); ?>
			</button>
		</div>
	</div>
	<input type="hidden" name="<?php echo $this->usernameFieldName; ?>" value="<?php echo $this->user->get('username'); ?>" />
	<input type="hidden" name="<?php echo $this->idFieldName; ?>" value="<?php echo $this->user->get('id'); ?>" />
	<input type="hidden" name="gid" value="<?php echo $this->user->get('gid'); ?>" />
	<input type="hidden" name="option" value="<?php echo $this->optionValue; ?>" />
	<input type="hidden" name="task" value="<?php echo $this->taskValue; ?>" />
	<input type="hidden" name="K2UserForm" value="1" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
