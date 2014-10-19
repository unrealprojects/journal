<?php
defined('_JEXEC') or die();

class ZLManagerExtensionsHelper
{

	public static function getExtensionsAndVersions() {
			
		require_once(dirname(__FILE__) . '/../models/jextensions.php');
		require_once(dirname(__FILE__) . '/../models/elements.php');
		require_once(dirname(__FILE__) . '/../models/apps.php');
		
		$jmodel = FOFModel::getTmpInstance('JExtensions', 'ZLManagerModel', array('input' => array()));
		$emodel = FOFModel::getTmpInstance('Elements', 'ZLManagerModel', array('input' => array()));
		$amodel = FOFModel::getTmpInstance('Apps', 'ZLManagerModel', array('input' => array()));
		$extensions = FOFModel::getTmpInstance('Extensions', 'ZLManagerModel', array('input' => array()))->getItemList();
		
		$exts = array();
		foreach($extensions as &$e)
		{
			// QUick naming fix
			if(trim($e->title) == 'ZL Extensions Manager'){
				$e->title = 'ZLManager';
			}

			$exts[] = trim($e->title);
		}
		
		// Filter extensions
		$jmodel->setState('extensions', $exts);
		$jextensions = $jmodel->getItemList();
		

		// Get Elements
		$elements = $emodel->getItemList();
		
		// Get Apps
		$apps = $amodel->getItemList();
		
		// Extensions
		$jexts = array();
		$jextsv = array();
		foreach($jextensions as $je)
		{
			$jexts[] = $je->name;
			$jextsv[$je->name] = $je->version;
		}
		

		// Elements
		$el = array();
		$elv = array();
		if( $elements && count($elements))
		{
			foreach($elements as $e)
			{
				$el[] = $e->getMetaData('name');
				$elv[$e->getMetaData('name')] = $e->getMetaData('version');
			}
		}

		// Apps
		$applications = array();
		$applicationsv = array();
		if( $apps && count($apps))
		{
			foreach($apps as $a)
			{
				$applications[] = $a->getMetaData('name');
				$applicationsv[$a->getMetaData('name')] = $a->getMetaData('version');
			}
		}

		$jexts = array_merge($jexts, $el, $applications);
		$jextv = array_merge($jextsv, $elv, $applicationsv);
		
		return array('extensions' => $jexts, 'versions' => $jextv);
	}
}