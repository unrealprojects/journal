<?php
/**
* @package		ZOOtrack
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

class CategoryTrackTable extends AppTable {

	public function __construct($app) {
		parent::__construct($app, '#__zoo_zl_zootrack_categorytrack', 'id');

		$this->app->loader->register('CategoryTrack', 'classes:categorytrack.php');
		$this->class = 'CategoryTrack';
	}

	/*
		Function: getLastViewed
			Get last viewed Categories

		Parameters:
			$user_id - User id
			$item_id - Item id

		Returns:
			ItemTracks objec lits
	*/
	public function getLastViewed($user_id = null, $item_id = null)
	{
		// use provided or get current one
		$user_id = $user_id ? $user_id : $this->app->user->get()->id;

		// make the query
		$db = $this->app->database;
		$query = $db->getQuery(true);
		$query->select('*')->from('#__zoo_zl_zootrack_categorytrack')->where('user_id = ' . (int)$user_id);

		// filter by category id
		if ($item_id) {
			$query->where('category_id = ' . (int)$item_id);
		}

		// if guest, use session id
		if (!$user_id) {
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

class CategoryTrackTableException extends AppTableException {}