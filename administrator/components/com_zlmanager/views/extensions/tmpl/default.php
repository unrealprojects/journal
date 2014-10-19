<?php

// Protect from unauthorized access
defined('_JEXEC') or die();

// version
JLoader::import('joomla.version');
$version = new JVersion();

if (!$version->isCompatible('3.0')) {
	FOFTemplateUtils::addJS('media://zoo/libraries/jquery/jquery.js');
	// workaround for jQuery 1.9 transition
	FOFTemplateUtils::addJS('media://com_zlmanager/js/jquery.migrate.min.js');
} else {
	JHTML::_('jquery.framework');
}

FOFTemplateUtils::addCSS('media://com_zlmanager/css/backend.css');
FOFTemplateUtils::addJS('media://com_zlmanager/js/bootstrap.modal.min.js');
FOFTemplateUtils::addJS('media://com_zlmanager/js/download.js');

JHTML::_('behavior.tooltip');

?>

<div class="btn-group">
  	<a class="btn" href="#" id="hide_not_installed"><?php echo JText::_('COM_ZLMANAGER_HIDENOTINSTALLED');?></a>
	<a class="btn" href="#" id="hide_uptodate"><?php echo JText::_('COM_ZLMANAGER_HIDEUPTODATE');?></a>
	<a class="btn" href="#" id="show_update"><?php echo JText::_('COM_ZLMANAGER_SHOWTOUPDATE');?></a>
	<a class="btn" href="#" id="show_all"><?php echo JText::_('COM_ZLMANAGER_SHOWALL');?></a>
</div>


<form action="index.php" method="post" name="adminForm" id="adminForm">
<input type="hidden" name="option" value="com_zlmanager" />
<input type="hidden" name="view" value="extensions" />
<input type="hidden" id="task" name="task" value="browse" />
<input type="hidden" name="hidemainmenu" id="hidemainmenu" value="0" />
<input type="hidden" name="boxchecked" id="boxchecked" value="0" />
<input type="hidden" name="filter_order" id="filter_order" value="<?php echo $this->lists->order ?>" />
<input type="hidden" name="filter_order_Dir" id="filter_order_Dir" value="<?php echo $this->lists->order_Dir ?>" />
<input type="hidden" name="<?php echo JSession::getFormToken();?>" value="1" />

<table class="adminlist table table-striped">
	<thead>
		<tr>
			<th width="16"></th>
			<th width="30">
				<?php echo JText::_('COM_ZLMANAGER_ICON'); ?>
			</th>
			<th>
				<?php echo JHTML::_('grid.sort', 'COM_ZLMANAGER_NAME', 'title', $this->lists->order_Dir, $this->lists->order) ?>
			</th>
			<th>
				<?php echo JHTML::_('grid.sort', 'COM_ZLMANAGER_VERSION', 'version', $this->lists->order_Dir, $this->lists->order) ?>
			</th>
			<th>
				<?php echo JText::_('COM_ZLMANAGER_REMOTEVERSION'); ?>
			</th>
			<th>
				<?php echo JText::_('COM_ZLMANAGER_URL'); ?>
			</th>
		</tr>
	</thead>
	<tbody>
		<?php if(count($this->items)): ?>
		<?php $m = 1; $i = -1; ?>
		<?php foreach($this->items as $extension): ?>
		<?php
			$m = 1 - $m;
			
			// Common variables
			$url = (array)$extension->url;
			$url = trim( array_shift($url)); 
			$state = 'getit';
			$title = $extension->title;
			
			$extension->link = trim($extension->link);
			
			// Quick fix for Texts
			if(trim($title) == 'Texts')
			{
				$title = 'Text Pro';
			}

			// Quick fix for ZLManager
			if(trim($title) == 'ZL Extensions Manager')
			{
				$title = 'ZLManager';
			}
			
			if(strlen(trim($url)))
			{
				if(in_array(trim($title), $this->jextensions))
				{
					if($this->versions[trim($title)] != trim($extension->version))
					{
						$state = 'update';
					}
					else
					{
						$state = 'uptodate';
					}	
				}
				else
				{
					$state = 'install';
				}
			}  
		?>
		<tr class="row<?php echo $m?> <?php echo $state; ?>" data-title="<?php echo trim($title); ?>">
			<td align="center">
				<?php echo JHTML::_('grid.id', $i, $i); ?>
			</td>
			<td align="left">
				<a href="https://www.zoolanders.com<?php echo $extension->link; ?>" target="_blank">
					<img src="https://www.zoolanders.com<?php echo $this->escape(trim($extension->image)); ?>" width="30" height="30" />
				</a>
			</td>
			<td align="left">
				<a href="https://www.zoolanders.com<?php echo $extension->link; ?>" target="_blank">
					<?php echo $this->escape($extension->title); ?>
				</a>
			</td>
			<td style="text-align: center;" class="current-version">
				<?php 
				if(in_array(trim($title), $this->jextensions))
				{
					echo $this->versions[trim($title)];
				} else {
				?>
				---	
				<?php
				}
				?>
			</td>
			<td style="text-align: center;" class="latest-version">
				<?php 
					echo $this->escape($extension->version);
				?>
			</td>
			<td class="actions">
				<div class="install <?php echo ($state == 'install') ? 'active' : 'hidden'; ?>">
					<?php $label = JText::_('COM_ZLMANAGER_INSTALL') . ' ' . $extension->version; ?>
					<button class="zl-download btn" data-url="<?php echo $url; ?>"><?php echo $label; ?></button><br />
				</div>
				<div class="uptodate <?php echo ($state == 'uptodate') ? 'active' : 'hidden'; ?>">
					<button class="btn btn-success disabled"><?php echo JText::_('COM_ZLMANAGER_UPTODATE'); ?></button>
					<?php $label = JText::_('COM_ZLMANAGER_REINSTALL') . ' ' . $extension->version; ?>
					<button class="zl-download btn" data-url="<?php echo $url; ?>"><?php echo $label; ?></button><br />
				</div>
				<div class="update <?php echo ($state == 'update') ? 'active' : 'hidden'; ?>">
					<?php $label = JText::_('COM_ZLMANAGER_UPDATE') . ' ' . $extension->version; ?>
					<button class="zl-download btn btn-warning" data-url="<?php echo $url; ?>"><?php echo $label; ?></button><br />
				</div>
				<div class="getit <?php echo ($state == 'getit') ? 'active' : 'hidden'; ?>">
					<?php
						$label = JText::_('COM_ZLMANAGER_GETIT');
						$link = 'https://www.zoolanders.com/' . $extension->link; 
					?>
					<a target="_blank" class="btn btn-primary" href="<?php echo $link; ?>"><?php echo $label; ?></a>
				</div>
				<div class="working hidden">
					<button class="btn btn-info" disabled="disabled">Working...</button>
				</dib>
			</td>
		</tr>
		<?php endforeach;?>
		<?php else: ?>
		<tr>
			<td colspan="20">
				<?php echo JText::_('COM_ZLMANAGER_NORECORDS') ?>
			</td>
		</tr>
		<?php endif; ?>
	</tbody>
</table>
</form>

<div class="modal hide fade" id="modal">
  <div class="modal-body">
  	<h3>Error!</h3>
  	<ul  id="modal-body">

  	</ul>
  	<button class="btn" data-dismiss="modal">Close</button>
  </div>
</div>

<script type="text/javascript">
	jQuery(document).ready(function($){
		$("#adminForm tr").Download({
			button: '.zl-download',
			current: '.current-version',
			latest: '.latest-version'
		});
		$('#hide_not_installed').click(function(){
			$('tr.install').toggle();
		});
		$('#hide_uptodate').click(function(e){
			$('tr.uptodate').toggle();
		});
		$('#show_update').click(function(e){
			$('tr.uptodate').toggle();
			$('tr.install').toggle();
			$('tr.getit').toggle();
		});
		$('#show_all').click(function(e){
			$('#adminForm tr').show();
		});
	});
</script>
