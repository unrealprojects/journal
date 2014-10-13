<?php
/**
 * @package ZLManager
 * @copyright Copyright (c)2011 JOOlanders SL
 * @license GNU General Public License version 2, or later
 */

// Protect from unauthorized access
defined('_JEXEC') or die('Restricted Access');

// Get and execute the controller (FOF!)
require_once JPATH_COMPONENT_ADMINISTRATOR.'/fof/include.php';

// Dispatch
FOFDispatcher::getAnInstance('com_zlmanager')->dispatch();