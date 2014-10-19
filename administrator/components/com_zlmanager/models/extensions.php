<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerModelExtensions extends FOFModel
{
	protected $_json = null;

	public $app = null;

	protected $_cache = null;

	public function __construct($config = array())
	{
		parent::__construct($config);

		// make sure ZOO exist
		jimport('joomla.filesystem.file');
		if (!JFile::exists(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php')
				|| !JComponentHelper::getComponent('com_zoo', true)->enabled) {
			return;
		}
		
		// load zoo
		require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

		$this->app = App::getInstance('zoo');

		// Load from cache
		require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/cparams.php';
		require_once JPATH_ADMINISTRATOR . '/components/com_zlmanager/helpers/download.php';
		$username = ZLManagerHelperCparams::getParam('username', '');
		$password = ZLManagerHelperCparams::getParam('password', '');

		$key = md5($username.':'.$password);

		$cache = $this->getCache($key);

		if (!$cache || !$json = $cache->get('json')) {

			$url = 'https://www.zoolanders.com/index.php?option=com_zoo&controller=zooextensions&task=getList&format=raw&username=' . $username . '&password=' . $password;

			$file = JPATH_SITE . '/tmp/zlmanager.json';
			ZLManagerDownloadHelper::download($url, $file);

			$json = JFile::read($file);

			JFile::delete($file);

			if ($cache) {
				$cache->set('json', $json)->save();
			}
		}

		$this->_json = json_decode($json);

		$this->setState('limit', 50);
	}

	public function & getItemList($overrideLimits = false, $group = '')
	{
		if (empty($this->list))
		{
			if (!$overrideLimits)
			{
				$limitstart = $this->getState('limitstart');
				$limit = $this->getState('limit');
				if ($limit)
				{
					$this->list = array_slice($this->_json, $limitstart, $limit);
				}
				else
				{
					$this->list = array_slice($this->_json, $limitstart);
				}
				
				// order				
				usort($this->list, array($this, '_order'));
				
			}
			else
			{
				$this->list = $this->_json;
			}
		}	

		return $this->list;

	}

	protected function _order($a, $b)
	{
		// Order
		$order = $this->getState('filter_order', null, 'cmd');
		if (!in_array($order, array_keys((array)$a)))
		{
			$order = 'title';
		}
		$dir = $this->getState('filter_order_Dir', 'ASC', 'cmd');
		
	    if (trim($a->$order) == trim($b->$order)) {
	        return 0;
	    }
		
		if(strtolower($dir) == 'asc')
		{
			return (trim($a->$order) < trim($b->$order)) ? -1 : 1;	
		}
		
		return (trim($a->$order) > trim($b->$order)) ? -1 : 1;
	}

	public function getTotal()
	{
		return count($this->_json);
	}

	protected function getCache($key) {
		if (empty($this->_cache)) {
			$this->_cache = $this->app->cache->create($this->app->path->path('cache:') . '/zlmanager_cache_' . $key, true, 3600);
			if (!$this->_cache || !$this->_cache->check()) {
				$this->_cache = null;
			}
		}
		return $this->_cache;
	}

}
