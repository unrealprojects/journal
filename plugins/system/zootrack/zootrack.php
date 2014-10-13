<?php
/**
* @package		ZOOtrack
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Import library dependencies
jimport('joomla.plugin.plugin');
jimport('joomla.filesystem.file');

class plgSystemZooTrack extends JPlugin {

	public $joomla;
	public $app;
	
	/**
	 * onAfterInitialise handler
	 *
	 * Adds ZOO event listeners
	 *
	 * @access public
	 * @return null
	 */
	function onAfterInitialise()
	{
		// Get Joomla instances
		$this->joomla = JFactory::getApplication();

		// check dependences
		if (!defined('ZLFW_DEPENDENCIES_CHECK_OK')){
			$this->checkDependencies();
			return; // abort
		}

		// Get the ZOO App instance
		$this->app = App::getInstance('zoo');
		
		// register plugin path
		if ( $path = $this->app->path->path( 'root:plugins/system/zootrack' ) ) {
			$this->app->path->register($path, 'zootrack');
		}

		// register classes
		if ( $path = $this->app->path->path( 'zootrack:classes' ) ) {
			$this->app->path->register($path, 'classes');
		}

		// register tables
		if ( $path = $this->app->path->path( 'zootrack:tables' ) ) {
			$this->app->path->register($path, 'tables');
		}

		// register models
		if ( $path = $this->app->path->path( 'zootrack:models' ) ) {
			$this->app->path->register( $path, 'models' );
		}
	}

	/**
	 * onAfterRoute handler
	 *
	 * @access public
	 * @return null
	 */
	function onAfterRoute()
	{
		// abort if we are in Admin
		if ($this->joomla->isAdmin()) return;

		// run item tracking
		$this->trackItem();

		// run category tracking
		$this->trackCategory();
	}

	/**
	 * trackItem
	 */
	public function trackItem()
	{
		// track viewed items
		if ($item_id = $this->getCurrentItem()) {

			// should we track Items views?		
			if ($this->params->get('track_items', 0)) {

				// init vars
				$user_id = $this->app->user->get()->id;
				$session_id = $this->app->session->getId();

				// check if allready viewed
				$item = $this->app->table->itemtrack->getLastViewed(null, $item_id);

				if ($item) {
					
					// if allready viewed, update date
					$item->date = $this->app->date->create()->toSQL();

				} else {

					// else prepare entire object
					$item = $this->app->object->create('ItemTrack');

					$item->item_id = $item_id;
					$item->session_id = $session_id;
					$item->user_id = $user_id;
					$item->date = $this->app->date->create()->toSQL();
				}

				// save
				$this->app->table->itemtrack->save($item);
			}

			// store current item in session
			$this->app->system->session->set('com_zoo.zootrack.items.current', $item_id);

		} else {

			// remove current item from session
			$this->app->system->session->set('com_zoo.zootrack.items.current', null);
		}
	}

	/**
	 * getCurrentItem
	 *
	 * @return item id
	 */
	public function getCurrentItem()
	{
		// only if in zoo item view
		if ($this->app->zlfw->enviroment->is('site.com_zoo.item')) {
			return $this->app->zlfw->enviroment->params->get('item_id');
		}

		return null;
	}

	/**
	 * trackCategory
	 */
	public function trackCategory()
	{
		// track viewed categories
		if ($category_id = $this->getCurrentCategory()) {

			// should we track Categories views?
			if ($this->params->get('track_categories', 0)) {

				// init vars
				$user_id = $this->app->user->get()->id;
				$session_id = $this->app->session->getId();

				// check if allready viewed
				$category = $this->app->table->categorytrack->getLastViewed(null, $category_id);

				if ($category) {
					
					// if allready viewed, update date
					$category->date = $this->app->date->create()->toSQL();

				} else {

					// else prepare entire object
					$category = $this->app->object->create('CategoryTrack');

					$category->category_id = $category_id;
					$category->session_id = $session_id;
					$category->user_id = $user_id;
					$category->date = $this->app->date->create()->toSQL();
				}

				// save
				$this->app->table->categorytrack->save($category);
			}

			// store current category in session
			$this->app->system->session->set('com_zoo.zootrack.categories.current', $category_id);

		} else {

			// remove current category from session
			$this->app->system->session->set('com_zoo.zootrack.categories.current', null);
		}
	}

	/**
	 * getCurrentCategory
	 *
	 * @return category id
	 */
	public function getCurrentCategory()
	{
		// only if in zoo category view
		if ($this->app->zlfw->enviroment->is('site.com_zoo.category')) {
			return $this->app->zlfw->enviroment->params->get('category_id');
		}

		return null;
	}
	
	/*
	 *  checkDependencies
	 */
	public function checkDependencies()
	{
		if($this->joomla->isAdmin())
		{
			// if ZLFW not enabled
			if(!JPluginHelper::isEnabled('system', 'zlframework') || !JComponentHelper::getComponent('com_zoo', true)->enabled) {
				$this->joomla->enqueueMessage(JText::_('PLG_ZOOTRACK_MISSING_DEPENDENCIES'), 'notice');
			} else {
				// load zoo
				require_once(JPATH_ADMINISTRATOR.'/components/com_zoo/config.php');

				// fix plugins ordering
				$zoo = App::getInstance('zoo');
				$zoo->loader->register('ZlfwHelper', 'root:plugins/system/zlframework/zlframework/helpers/zlfwhelper.php');
				$zoo->zlfw->checkPluginOrder('zootrack');
			}
		}
	}
}