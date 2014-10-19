<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerModelJExtensions extends FOFModel
{
	public function &getItemList($overrideLimits = false, $group = '')
	{
		if (empty($this->list))
		{
			$db = $this->getDbo();
			
			$query = FOFQueryAbstract::getNew()
			->select('*')
			->from( '#__extensions' );
			
			// Where
			if($this->getState('extensions'))
			{
				$extensions = (array)$this->getState('extensions');
				foreach($extensions as &$extension)
				{
					$extension = $db->Quote($extension);
				}
				$query->where('name IN ('. implode(',', $extensions).')');
			}
			$this->list = $this->_getList($query);
			
			foreach($this->list as &$item)
			{
				if (strlen($item->manifest_cache)) {
					$data = json_decode($item->manifest_cache);
					if ($data) {
						foreach($data as $key => $value) {
							if ($key == 'type') {
								// ignore the type field
								continue;
							}
							$item->$key = $value;
						}
					}
				}
			}
		}

		return $this->list;
		
	}
}
