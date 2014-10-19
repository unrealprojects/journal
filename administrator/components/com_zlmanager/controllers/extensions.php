<?php
/**
 * @package ZLManager
 * @copyright Copyright (c)2011 JOOlanders SL
 * @license GNU General Public License version 2, or later
 */

defined('_JEXEC') or die();

class ZLManagerControllerExtensions extends FOFController
{
	public function downloadAndInstall()
	{
		require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/download.php';
		
		$url = JRequest::getVar('url', '');
		$title = JRequest::getVar('title', '');
		if(strlen($url))
		{
			$url = 'https://www.zoolanders.com' . $url;
			$file = JPATH_SITE . '/tmp/zl_ext.zip';
			
			require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/cparams.php';
			$username = ZLManagerHelperCparams::getParam('username', '');
			$password = ZLManagerHelperCparams::getParam('password', '');
			
			$url .= '&username='.$username.'&password='.$password;
			
			// override url params to get download trough zooextension plugin
			$url .= '&task=download&controller=zooextensions';

			$success = ZLManagerDownloadHelper::download($url, $file);
			
			if($success && filesize($file) > 0)
			{
				jimport( 'joomla.installer.installer' );
			
				$lang = JFactory::getLanguage();
				$lang->load(strtolower('com_installer'), JPATH_ADMINISTRATOR, null, false, false) || $lang->load(strtolower('com_installer'), JPATH_ADMINISTRATOR, $lang->getDefault(), false, false);
			
				jimport( 'joomla.installer.helper' );
				jimport( 'joomla.filesystem.archive' );
				
				$answer = $this->doInstall( $file );
			} else {
				$answer = array('success' => false, 'errors' => array('Could not download the file'));
			}
		} else {
			$answer = array('success' => false, 'errors' => array('File url not specified'));
		}

		require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/extensions.php';
		$exts = ZLManagerExtensionsHelper::getExtensionsAndVersions();

		$versions = $exts['versions'];
		$answer['version'] = @$versions[$title];

		echo json_encode($answer);
		die();
	}
	
	protected function doInstall( $file )
	{
		// Unpack the package
		$dir = JPATH_SITE . '/tmp/' . uniqid('zlmanager_');
		JArchive::extract($file, $dir);

		// Get an installer instance
		$installer = JInstaller::getInstance();
		
		// get manufest
		$xmls = JFolder::files($dir, '.xml$', 1, true);
		
		$success = false;
		$errors = array();
		if(count($xmls))
		{
			// It's an app maybe?
			$app_xml = $dir  . '/application.xml';
			if(JFile::exists($app_xml))
			{
				// Get group for folder name
				$xml = simplexml_load_file($app_xml);
				if(!$xml || $xml->getName() != 'application'){
					$success = false;
				} else {
					$group = (string) $xml->group;
					$dest = JPATH_SITE .  '/media/zoo/applications/' . $group . '/';
					$dir = rtrim($dir, "\\/") . '/';
					
					// If this is an update - do not overwrite config/positions/metadata
					if (JFolder::exists($dest)) {
						
						// Get the ZOO App instance
						$zoo = App::getInstance('zoo');
						
						$files = $zoo->zoo->app->filesystem->readDirectoryFiles($dir.'types/', '', '/\.config$/', false);
						foreach ($files as $file) {
							if (JFile::exists($dest.'types/'.$file)) {
								JFile::delete($dir.'types/'.$file);
							}
						}

						$files = $zoo->zoo->app->filesystem->readDirectoryFiles($dir, '', '/(positions\.(config|xml)|metadata\.xml)$/', true);
						foreach ($files as $file) {
							if (JFile::exists($dest.$file)) {
								JFile::delete($dir.$file);
							}
						}
					}
					
					JFolder::copy($dir, $dest, '', true );	
					$success = true;
				}
			} 
			else 
			{
				// Install the package
				if ( !$installer->install( $dir ) ) {
					$errors = JFactory::getApplication()->getMessageQueue();
					$success = false;
				} else {
					$success = true;
				}
			} 
		} else {
			// No xml -> try any other archive file
			$zips = JFolder::files($dir, '.zip', 1, true);
			if(count($zips))
			{
				foreach($zips as $zip)
				{
					$install = $this->doInstall($zip);
					$success = $install['success'];

					// if some install fail, abort and report
					if (!$success) {
						$errors = JFactory::getApplication()->getMessageQueue();
						break;
					}
				}
			}
		}
		
		JInstallerHelper::cleanupInstall( $file, $dir );

		return array('success' => $success, 'errors' => $errors);
	}

	protected function onBeforeBrowse()
	{
		$result = parent::onBeforeBrowse();
		
		if($result)
		{
			require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/extensions.php';
			
			$exts = ZLManagerExtensionsHelper::getExtensionsAndVersions();

			$view = $this->getThisView();
			$view->assign('jextensions', $exts['extensions']);
			$view->assign('versions', $exts['versions']);
		}
		
		return $result;
	}
}