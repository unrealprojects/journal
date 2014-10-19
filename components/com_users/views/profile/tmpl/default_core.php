<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

?>

<fieldset id="users-profile-core">
	<h1>
		<?php echo JText::_('COM_USERS_PROFILE_CORE_LEGEND'); ?>
	</h1>
	<div class="Grid Merge">
		<div class='Node-XS-3'>
			<?php echo JText::_('COM_USERS_PROFILE_NAME_LABEL'); ?>
		</div>
		<div class='Node-XS-9'>
			<?php echo $this->data->name; ?>
		</div>
		<div class='Node-XS-3'>
			<?php echo JText::_('COM_USERS_PROFILE_USERNAME_LABEL'); ?>
		</div>
		<div class='Node-XS-9'>
			<?php echo htmlspecialchars($this->data->username); ?>
		</div>
		<div class='Node-XS-3'>
			<?php echo JText::_('COM_USERS_PROFILE_REGISTERED_DATE_LABEL'); ?>
		</div>
		<div class='Node-XS-9'>
			<?php echo JHtml::_('date', $this->data->registerDate); ?>
		</div>
		<div class='Node-XS-3'>
			<?php echo JText::_('COM_USERS_PROFILE_LAST_VISITED_DATE_LABEL'); ?>
		</div>

		<?php if ($this->data->lastvisitDate != '0000-00-00 00:00:00'){?>
			<div class='Node-XS-9'>
				<?php echo JHtml::_('date', $this->data->lastvisitDate); ?>
			</div>
		<?php }
		else
		{?>
			<div class='Node-XS-9'>
				<?php echo JText::_('COM_USERS_PROFILE_NEVER_VISITED'); ?>
			</div>
		<?php } ?>

	</div>
</fieldset>
