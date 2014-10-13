<?php
/**
* @package		ZOOcart Installer
* @author    	JOOlanders, SL http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders, SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class pkg_zoofilterInstallerScript {

	protected $_error;

	public function install($parent) {}

	public function uninstall($parent) {}

	public function update($parent) {}

	public function preflight($type, $parent)
	{
		// check dependencies if not uninstalling
		if($type != 'uninstall' && !$this->checkRequirements($parent)){
			Jerror::raiseWarning(null, $this->_error);
			return false;
		}
	}

	public function postflight($type, $parent, $results)
	{
		$extensions = array();
		foreach($results as $result) {
			$extensions[] = (object) array('name' => $result['name'], 'status' => $result['result'], 'message' => $result['result'] ? ($type == 'update' ? 'Updated' : 'Installed').' successfully' : 'NOT Installed');
		}

		// display extension installation results
		self::displayResults($extensions, 'Extensions', 'Extension');
	}

	/**
	 * check general requirements
	 * @version 1.1
	 *
	 * @return  boolean  True on success
	 */
	protected function checkRequirements($parent)
	{
		// init vars
		$dependencies = $parent->get( "manifest" )->dependencies->attributes();
		
		// check Joomla
		if ($min_v = (string)$dependencies->joomla) 
		{
			// if up to date
			$joomla_release = new JVersion();
			$joomla_release = $joomla_release->getShortVersion();
			if( version_compare( (string)$joomla_release, $min_v, '<' ) ) {
				$this->_error = "Joomla! v{$min_v} or higher required, please update it and retry the installation.";
				return false;
			}
		}

		// check ZOO
		if ($min_v = (string)$dependencies->zoo) 
		{
			// if installed and enabled
			if (!JFile::exists(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php')
				|| !JComponentHelper::getComponent('com_zoo', true)->enabled) {
				$this->_error = "ZOOlanders Extensions relies on <a href=\"http://www.yootheme.com/zoo\" target=\"_blank\">ZOO</a>, be sure is installed and enabled before retrying the installation.";
				return false;
			}

			// if up to date
			$zoo_manifest = simplexml_load_file(JPATH_ADMINISTRATOR.'/components/com_zoo/zoo.xml');

			if( version_compare((string)$zoo_manifest->version, $min_v, '<') ) {
				$this->_error = "ZOO v{$min_v} or higher required, please update it and retry the installation.";
				return false;
			}
		}

		// check ZL
		if ($min_v = (string)$dependencies->zl) 
		{
			// if installed and enabled
			if (!JFile::exists(JPATH_ADMINISTRATOR.'/components/com_zoolanders/zoolanders.php')
				|| !JComponentHelper::getComponent('com_zoolanders', true)->enabled) {
				$this->_error = "ZOOlanders Extensions relies on ZOOlanders Component, be sure is installed and enabled before retrying the installation.";
				return false;
			}

			// if up to date
			$zl_manifest = simplexml_load_file(JPATH_ADMINISTRATOR.'/components/com_zoolanders/zoolanders.xml');

			if( version_compare((string)$zl_manifest->version, $min_v, '<') ) {
				$this->_error = "ZOOlanders v{$min_v} or higher required, please update it and retry the installation.";
				return false;
			}
		}

		// check ZLFW
		if ($min_v = (string)$dependencies->zlfw) 
		{
			// if installed and enabled
			if (!JPluginHelper::getPlugin('system', 'zlframework')) {
				$this->_error = "ZOOlanders Extensions relies on <a href=\"https://www.zoolanders.com/extensions/zl-framework\" target=\"_blank\">ZL Framework</a>, be sure is installed and enabled before retrying the installation.";
				return false;
			}

			// if up to date
			$zlfw_manifest = simplexml_load_file(JPATH_ROOT.'/plugins/system/zlframework/zlframework.xml');

			if( version_compare((string)$zlfw_manifest->version, $min_v, '<') ) {
				$this->_error = "<a href=\"https://www.zoolanders.com/extensions/zl-framework\" target=\"_blank\">ZL Framework</a> v{$min_v} or higher required, please update it and retry the installation.";
				return false;
			}

			// check ZLFW dependencies
			$status = $this->checkZLFWdependencies();
			if (!$status['state']){
				$extensions = array();
				foreach ($status['extensions'] as $ext)
				{
					$dep_req = $ext['dependency']; // required
					$dep_inst = $ext['installed']; // installed

					$extensions[] = isset($dep_req->url) ? "<a href=\"{$dep_req->url}\" target=\"_blank\">{$dep_inst->name}</a>" : (string)$dep_inst->name;
				}

				$this->_error = 'The installation was aborted because there are outdated ZL Extensions. Please, update or disable the following Extension/s before retrying the installation: '.implode(', ', $extensions);
				return false;
			}
		}

		return true;
	}

	/*
		Function: checkZLFWdependencies
			Check for ZL outdated extensions

		Returns:
			array - The check status
	*/
	public function checkZLFWdependencies()
	{
		// init vars
		$status = array('state' => true, 'extensions' => array());
		$dep_file = JPATH_ROOT.'/plugins/system/zlframework/zlframework/dependencies.config';

		// get the content from file
		if (JFile::exists($dep_file) && $groups = json_decode(JFile::read($dep_file)))
		{
			// iterate over the groups
			foreach ($groups as $group => $dependencies) foreach ($dependencies as $name => $dependency)
			{
				if ($group == 'plugins') {
					// get plugin
					$folder = isset($dependency->folder) ? $dependency->folder : 'system';
					$plugin = JPluginHelper::getPlugin($folder, strtolower($name));

					// if plugin disable, skip it
					if (empty($plugin)) continue;
				}
				
				$version  = $dependency->version;
				$manifest = JPATH_ROOT.'/'.$dependency->manifest;
				if ($version && is_file($manifest) && is_readable($manifest) && $xml = simplexml_load_file($manifest)) {
						
					// check if the extension is outdated
					if (version_compare($version, (string) $xml->version, 'g')) {
						$status['state'] = false;
						$status['extensions'][] = array('dependency' => $dependency, 'installed' => $xml);
					}
					
				}
			}
		}
		
		return $status;
	}

	protected function displayResults($result, $name, $type) {

?>

		<h3><?php echo JText::_($name); ?></h3>
		<table class="adminlist table table-bordered table-striped" width="100%">
			<thead>
				<tr>
					<th class="title"><?php echo JText::_($type); ?></th>
					<th width="60%"><?php echo JText::_('Status'); ?></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
			</tfoot>
			<tbody>
				<?php
					foreach ($result as $i => $ext) : ?>
					<tr class="row<?php echo $i++ % 2; ?>">
						<td class="key"><?php echo $ext->name; ?></td>
						<td>
							<?php $style = $ext->status ? 'font-weight: bold; color: green;' : 'font-weight: bold; color: red;'; ?>
							<span style="<?php echo $style; ?>"><?php echo JText::_($ext->message); ?></span>
						</td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>

<?php

	}

}