<?php
/**
* @package		ZOOtrack
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

class ZLModelItemTrack extends ZLModelItem
{
	/*
		Function: _buildQueryJoins
			Builds JOINS clauses for the query
	*/
	protected function _buildQueryJoins(&$query)
	{
		parent::_buildQueryJoins($query);

		// join track item table
		$query->join('LEFT', "#__zoo_zl_zootrack_itemtrack AS track ON a.id = track.item_id");
	}

	/**
	 * Apply general item filters
	 */
	protected function basicFilters(&$query)
	{
		parent::basicFilters($query);

		// get user id
		$user = $this->app->user->get();

		// filter by user
		$query->where('track.user_id = ' . $user->id);

		// if guest, use session id
		if ($user->guest) {
			$session_id = $this->app->session->getId();
			$query->where('session_id = ' . $this->_db->Quote($session_id));
		}
	}

	/**
	 * _getItemOrder - Returns ORDER query from an array of item order options
	 *
	 * @param array $order Array of order params
	 */
	protected function _getItemOrder($order)
	{
		$result = array(null, null);

		// if by track date return immediately
		if (in_array('_viewdate', $order)) {
			$result[1] = 'track.date';

			// set order
			if (in_array('_reversed', $order)) {
				$result[1] .=  ' DESC';
			}

		} else {
			// get normal order
			$result = parent::_getItemOrder($order);
		}

		// return
		return $result;
	}
}