<?php
/**
* @package		ZOOtrack
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

class plgSystemZootrackInstallerScript
{
	protected $_error;
	protected $_ext = 'zootrack';
	protected $_ext_name = 'ZOOtrack';
	protected $_lng_prefix = 'PLG_ZOOTRACK_SYS';

	/* List of obsolete files and folders */
	protected $_obsolete = array(
		'files'	=> array(
		),
		'folders' => array(
		)
	);

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

		// load ZLFW sys language file
		JFactory::getLanguage()->load('plg_system_zlframework.sys', JPATH_ADMINISTRATOR, 'en-GB', true);

		// check dependencies if not uninstalling
		if($type != 'uninstall' && !$this->checkRequirements($parent)){
			Jerror::raiseWarning(null, $this->_error);
			return false;
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
		// inir vars
		$db = JFactory::getDBO();

		// enable plugin
		$db->setQuery(
			"UPDATE `#__extensions` SET `enabled` = 1 WHERE `type` = 'plugin' AND `element` = '{$this->_ext}' AND `folder` = 'system'"
		)->query();
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

		// drop tables
		$db->setQuery('DROP TABLE IF EXISTS `#__zoo_zl_zootrack_itemtrack`')->query();
		$db->setQuery('DROP TABLE IF EXISTS `#__zoo_zl_zootrack_categorytrack`')->query();
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

		// create item table
		$db->setQuery(
			"CREATE TABLE IF NOT EXISTS `#__zoo_zl_zootrack_itemtrack` (
			  `id` int(11) NOT NULL AUTO_INCREMENT,
			  `session_id` varchar(200) NOT NULL,
			  `user_id` int(11) NOT NULL,
			  `item_id` int(11) NOT NULL,
			  `date` datetime NOT NULL,
			  `params` longtext NOT NULL,
			  PRIMARY KEY (`id`),
			  KEY `session_id` (`session_id`,`user_id`,`item_id`)
			) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1"
		)->query();

		// create category table
		$db->setQuery(
			"CREATE TABLE IF NOT EXISTS `#__zoo_zl_zootrack_categorytrack` (
			  `id` int(11) NOT NULL AUTO_INCREMENT,
			  `session_id` varchar(200) NOT NULL,
			  `user_id` int(11) NOT NULL,
			  `category_id` int(11) NOT NULL,
			  `date` datetime NOT NULL,
			  `params` longtext NOT NULL,
			  PRIMARY KEY (`id`),
			  KEY `session_id` (`session_id`,`user_id`,`category_id`)
			) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1"
		)->query();
		
		// remove obsolete
		$this->removeObsolete();
	}

	/**
	 * Removes obsolete files and folders
	 * @version 1.1
	 */
	private function removeObsolete()
	{
		// Remove files
		if(!empty($this->_obsolete['files'])) foreach($this->_obsolete['files'] as $file) {
			$f = JPATH_ROOT.'/'.$file;
			if(!JFile::exists($f)) continue;
			JFile::delete($f);
		}

		// Remove folders
		if(!empty($this->_obsolete['folders'])) foreach($this->_obsolete['folders'] as $folder) {
			$f = JPATH_ROOT.'/'.$folder;
			if(!JFolder::exists($f)) continue;
			JFolder::delete($f);
		}
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
	 * check requirements
	 *
	 * @return  boolean  True on success
	 */
	protected function checkRequirements($parent)
	{
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