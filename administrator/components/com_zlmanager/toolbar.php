<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerToolbar extends FOFToolbar
{
	public function onExtensionsBrowse()
	{
		JToolBarHelper::title(JText::_('ZLMANAGER'),'zlmanager');
		JToolBarHelper::preferences('com_zlmanager', '265', '400');
	}

}
