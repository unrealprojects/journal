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

<!-- K2 user register form -->
<?php if(isset($this->message)) $this->display('message'); ?>

<form action="<?php echo JURI::root(true); ?>/index.php" enctype="multipart/form-data" method="post" id="josForm" name="josForm" class="form-validate">
	<?php if($this->params->def('show_page_title',1)): ?>
	<?php endif; ?>
	<div id="k2Container" class="k2AccountPage">
		<div class="admintable">
			<div class="Control-Group">
				<div class="k2ProfileHeading">Регистрация</div>
			</div>
			<div class="Control-Group">
				<label class="Node-XS-3" id="namemsg" for="name"><?php echo JText::_('K2_NAME'); ?></label>
				<input type="text" name="<?php echo $this->nameFieldName; ?>" id="name" size="40" value="<?php echo $this->escape($this->user->get( 'name' )); ?>" class="inputbox required Node-XS-9" maxlength="50" />
			</div>
			<div class="Control-Group">
				<label class="Node-XS-3" id="usernamemsg" for="username"><?php echo JText::_('K2_USER_NAME'); ?></label>
				<input type="text" id="username" name="<?php echo $this->usernameFieldName; ?>" size="40" value="<?php echo $this->escape($this->user->get( 'username' )); ?>" class="inputbox required validate-username Node-XS-9" maxlength="25" />
			</div>
			<div class="Control-Group">
				<label class="Node-XS-3" id="emailmsg" for="email"><?php echo JText::_('K2_EMAIL'); ?></label>
				<input type="text" id="email" name="<?php echo $this->emailFieldName; ?>" size="40" value="<?php echo $this->escape($this->user->get( 'email' )); ?>" class="inputbox required validate-email Node-XS-9" maxlength="100" />
			</div>

			<?php if(version_compare(JVERSION, '1.6', 'ge')): ?>
			<div class="Control-Group">
				<label class="Node-XS-3" id="email2msg" for="email2"><?php echo JText::_('K2_CONFIRM_EMAIL'); ?></label>
				<input type="text" id="email2" name="jform[email2]" size="40" value="" class="inputbox required validate-email Node-XS-9" maxlength="100" />
			</div>
			<?php endif; ?>
			<div class="Control-Group">
					<label class="Node-XS-3" id="pwmsg" for="password"><?php echo JText::_('K2_PASSWORD'); ?></label>
					<input class="inputbox required validate-password Node-XS-9" type="password" id="password" name="<?php echo $this->passwordFieldName; ?>" size="40" value="" />
			</div>
			<div class="Control-Group">
				<label class="Node-XS-3" id="pw2msg" for="password2"><?php echo JText::_('K2_VERIFY_PASSWORD'); ?></label>
				<input class="inputbox required validate-passverify Node-XS-9" type="password" id="password2" name="<?php echo $this->passwordVerifyFieldName; ?>" size="40" value="" />
			</div>
			<div class="Control-Group">

			<?php if(count(array_filter($this->K2Plugins))): ?>
			<!-- K2 Plugin attached fields -->
			<?php foreach ($this->K2Plugins as $K2Plugin): ?>
			<?php if(!is_null($K2Plugin)): ?>

			<?php endif; ?>
			<?php endforeach; ?>
			<?php endif; ?>
			
			<!-- Joomla! 1.6+ JForm implementation -->
			<?php if(isset($this->form)): ?>
			<?php foreach ($this->form->getFieldsets() as $fieldset): // Iterate through the form fieldsets and display each one.?>
				<?php if($fieldset->name != 'default'): ?>
				<?php $fields = $this->form->getFieldset($fieldset->name);?>
				<?php if (count($fields)):?>
					<?php if (isset($fieldset->label)):// If the fieldset has a label set, display it as the legend.?>
					<div class="Control-Group">
						<div class="k2ProfileHeading">
							<?php echo JText::_($fieldset->label);?>
						</div>
					</div>
					<?php endif;?>
					<?php foreach($fields as $field):// Iterate through the fields in the set and display them.?>
						<?php if ($field->hidden):// If the field is hidden, just display the input.?>
							<div class="Control-Group"><td colspan="2"><?php echo $field->input;?></td></div>
						<?php else:?>
							<div class="Control-Group">
									<?php echo $field->label; ?>
									<?php if (!$field->required && $field->type != 'Spacer'): ?>
										<span class="optional"><?php echo JText::_('COM_USERS_OPTIONAL');?></span>
									<?php endif; ?>
								<?php echo $field->input;?>
							</div>
						<?php endif;?>
					<?php endforeach;?>
				<?php endif;?>
				<?php endif; ?>
			<?php endforeach;?>
			<?php endif; ?>
			
		</div>
		
		<?php if($this->K2Params->get('recaptchaOnRegistration') && $this->K2Params->get('recaptcha_public_key')): ?>
		<label class="Node-XS-3" class="formRecaptcha"><?php echo JText::_('K2_ENTER_THE_TWO_WORDS_YOU_SEE_BELOW'); ?></label>
		<div id="recaptcha"></div>
		<?php endif; ?>

		<div class="k2AccountPageUpdate">
			<button class="button validate" type="submit">
				<?php echo JText::_('K2_REGISTER'); ?>
			</button>
		</div>
	</div>
	<input type="hidden" name="option" value="<?php echo $this->optionValue; ?>" />
	<input type="hidden" name="task" value="<?php echo $this->taskValue; ?>" />
	<input type="hidden" name="id" value="0" />
	<input type="hidden" name="gid" value="0" />
	<input type="hidden" name="K2UserForm" value="1" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
