<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerModelApps extends FOFModel
{
	protected $_json = null;

	public function &getItemList($overrideLimits = false, $group = '')
	{
		if (empty($this->list))
		{
			// make sure ZOO exist
			if (!JFile::exists(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php')
					|| !JComponentHelper::getComponent('com_zoo', true)->enabled) {
				return;
			}
			
			// load zoo
			require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');
			
			// check if Zoo > 2.4 is loaded
			if (!class_exists('App')) {
				return;
			}
			
			// Get the ZOO App instance
			$zoo = App::getInstance('zoo');
			
			$elements = array();
			$apps = $zoo->zoo->getApplicationGroups();
			
			$applications = array();
			foreach($apps as $app)
			{
				$author = strtolower($app->getMetaData('author'));
				if($author == 'zoolanders' || $author == 'joolanders'){
					$applications[] = $app;
				}
			}
			$this->list = $applications;
		}

		return $this->list;
		
	}

	public function getTotal()
	{
		return count($this->getItemList());
	}

}
