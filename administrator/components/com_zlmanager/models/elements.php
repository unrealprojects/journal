<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerModelElements extends FOFModel
{
	protected $_json = null;

	public function &getItemList($overrideLimits = false, $group = '')
	{
		if (empty($this->list))
		{
			// Find ZL Elements plugin (if installed)
			$plugin = JPluginHelper::getPlugin('system', 'zoo_zlelements');
			if($plugin)
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
				
				foreach($apps as $app)
				{
					$el = $zoo->element->getAll($app);
					foreach($el as $e)
					{
						if(!in_array($e, $elements))
						{
							$elements[] = $e;
						}
					}
				}
				
				$this->list = $elements;
			}
		}

		return $this->list;
		
	}

	public function getTotal()
	{
		return count($this->_json);
	}

}
