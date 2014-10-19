<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

class plgAcymailingZoomailingInstallerScript
{
	protected $_error;
	protected $_src;
	protected $_target;
	protected $_ext = 'zoomailing';
	protected $_ext_name = 'ZOOmailing';
	protected $_lng_prefix = 'PLG_ZOOMAILING_SYS';

	/**
	 * Called before any type of action
	 *
	 * @param   string  $type  Which action is happening (install|uninstall|discover_install)
	 * @param   object  $parent  The object responsible for running this script
	 *
	 * @return  boolean  True on success
	 */
	public function preflight($type, $parent)
	{
		// init vars
		$db = JFactory::getDBO();
		$type = strtolower($type);
		$this->_src = $parent->getParent()->getPath('source'); // tmp folder
		$this->_target = JPATH_ROOT.'/plugins/system/zoomailing'; // install folder

		// load ZLFW sys language file
		JFactory::getLanguage()->load('plg_system_zlframework.sys', JPATH_ADMINISTRATOR, 'en-GB', true);

		// check dependencies if not uninstalling
		if($type != 'uninstall' && !$this->checkRequirements($parent)){
			Jerror::raiseWarning(null, $this->_error);
			return false;
		}

		/* 
		 * when updating we don't wont to override renderer/item folder,
		 * so let's delete the temp folder before install only if it already exists
		 */
		if($type == 'update'){
			JFolder::exists($this->_target.'/zoomailing/renderer/item') && 
			JFolder::delete($this->_src.'/zoomailing/renderer/item');
		}
	}

	/**
	 * Called on installation
	 *
	 * @param   object  $parent  The object responsible for running this script
	 *
	 * @return  boolean  True on success
	 */
	function install($parent)
	{
		// init vars
		$db = JFactory::getDBO();

		// enable plugin
		$db->setQuery("UPDATE `#__extensions` SET `enabled` = 1 WHERE `type` = 'plugin' AND `element` = '{$this->_ext}' AND `folder` = 'acymailing'");
		$db->query();
	}

	/**
	 * Called on uninstallation
	 *
	 * @param   object  $parent  The object responsible for running this script
	 *
	 * @return  boolean  True on success
	 */
	function uninstall($parent)
	{
		// init vars
		$db = JFactory::getDBO();

		// show uninstall message
		echo JText::_($this->langString('_UNINSTALL'));
	}

	/**
	 * Called after install
	 *
	 * @param   string  $type  Which action is happening (install|uninstall|discover_install)
	 * @param   object  $parent  The object responsible for running this script
	 *
	 * @return  boolean  True on success
	 */
	public function postflight($type, $parent)
	{
		// init vars
		$db = JFactory::getDBO();
		$type = strtolower($type);
		$release = $parent->get( "manifest" )->version;

		if($type == 'install'){
			echo JText::sprintf('PLG_ZLFRAMEWORK_SYS_INSTALL', $this->_ext_name, $release);
		}

		if($type == 'update'){
			echo JText::sprintf('PLG_ZLFRAMEWORK_SYS_UPDATE', $this->_ext_name, $release);
		}

		// make sure the old system plugin is disabled
		$db->setQuery("UPDATE `#__extensions` SET `enabled` = 0 WHERE `type` = 'plugin' AND `element` = 'zoomailing_system' AND `folder` = 'system'");
		$db->query();
	}

	/**
	 * creates the lang string
	 * @version 1.0
	 *
	 * @return  string
	 */
	protected function langString($string)
	{
		return $this->_lng_prefix.$string;
	}

	/**
	 * check extensions requirements
	 *
	 * @return  boolean  True on success
	 */
	protected function checkRequirements($parent)
	{
		$joomla_release = new JVersion();
		$joomla_release = $joomla_release->getShortVersion();

		// get Acymailing apropiate XML file
		$acyXML = version_compare((string)$joomla_release, '3.0', '<') ? 'acymailing.xml' : 'acymailing_j3.xml';

		// check for AcyMailing
		$acy_manifest = simplexml_load_file(JPATH_ADMINISTRATOR."/components/com_acymailing/{$acyXML}");
		$min_release = '3.9';

		if( version_compare((string)$acy_manifest->version, (string)$min_release, '<') ) {
			Jerror::raiseWarning(null, "Cannot install ZOOmailing without AcyMailing version $min_release or superior");
			return false;
		}

		/*
		 * make sure ZLFW is up to date
		 */
		if($min_zlfw_release = $parent->get( "manifest" )->attributes()->zlfw)
		{
			$zlfw_manifest = simplexml_load_file(JPATH_ROOT.'/plugins/system/zlframework/zlframework.xml');

			if( version_compare((string)$zlfw_manifest->version, (string)$min_zlfw_release, '<') ) {
				$this->_error = "<a href=\"https://www.zoolanders.com/extensions/zl-framework\" target=\"_blank\">ZL Framework</a> v{$min_zlfw_release} or higher required, please update it and retry the installation.";
				return false;
			}
		}


		return true;
	}
}