<?php
/**
* @package		ZOOtrack
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

class ItemTrackTable extends AppTable {

	public function __construct($app) {
		parent::__construct($app, '#__zoo_zl_zootrack_itemtrack', 'id');

		$this->app->loader->register('ItemTrack', 'classes:itemtrack.php');
		$this->class = 'ItemTrack';
	}

	/*
		Function: getLastViewed
			Get last viewed Items

		Parameters:
			$user_id - User id
			$item_id - Item id

		Returns:
			ItemTracks objec lits
	*/
	public function getLastViewed($user_id = null, $item_id = null)
	{
		// use provided or get current one
		$user = $this->app->user->get($user_id);

		// make the query
		$db = $this->app->database;
		$query = $db->getQuery(true);
		$query->select('*')->from('#__zoo_zl_zootrack_itemtrack')->where('user_id = ' . (int)$user->id);

		// filter by item id
		if ($item_id) {
			$query->where('item_id = ' . (int)$item_id);
		}

		// if guest, use session id
		if ($user->guest) {
			$session_id = $this->app->session->getId();
			$query->where('session_id = ' . $db->Quote($session_id));
		}

		// perform query
		$db->setQuery($query);

		if ($item_id) 
			return $db->loadObject();
		else
			return $db->loadObjectList();
	}
}

class ItemTrackTableException extends AppTableException {}