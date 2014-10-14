<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
* extending
* @package   	com_zoo
* @author    	YOOtheme http://www.yootheme.com
* @copyright 	Copyright (C) YOOtheme GmbH
* @license   	http://www.gnu.org/licenses/gpl.html GNU/GPL
*/

/**
 * Class for rendering items using their positions
 * 
 * @package Component.Classes.Renderers
 */
class ZmitemRenderer extends PositionRenderer {

	/**
	 * The item to render
	 * 
	 * @var Item The item to render
	 * @since 2.0
	 */
	protected $_item;

	/* user */
	protected $_user;

	/**
	 * Render the item using the give layout
	 * 
	 * @param string $layout The layout to use for rendering the items
	 * @param array $args The list of variables to pass on to the layout
	 * 
	 * @return string The html code rendered
	 * 
	 * @since 2.0
	 */
	public function render($layout, $args = array()) {

		// set item
		$this->_item = isset($args['item']) ? $args['item'] : null;

		// set user
		$this->_user = isset($args['user_id']) && !empty($args['user_id']) ? $this->app->user->get($args['user_id']) : new JUser();

		// trigger beforedisplay event
		if ($this->_item) {
			$this->app->event->dispatcher->notify($this->app->event->create($this->_item, 'item:beforedisplay'));
		}

		// render layout
		$result = parent::render($layout, $args);

		// trigger afterdisplay event
		if ($this->_item) {
			$this->app->event->dispatcher->notify($this->app->event->create($this->_item, 'item:afterdisplay', array('html' => &$result)));
		}

		return $result;
	}

	/**
	 * Check if a position generates some output
	 * 
	 * @param string $position The name of the position to check
	 * 
	 * @return boolean If the position generates some kind of output
	 * 
	 * @since 2.0
	 */
	public function checkPosition($position)
	{
		foreach ($this->_getConfigPosition($position) as $data) {
            if ($element = $this->_item->getElement($data['element'])) {
                if ($element->canAccess($this->_user) && $element->hasValue($this->app->data->create($data))) {
                    return true;
                }
            }
        }

		return false;
	}

	/**
	 * Render the output of the position
	 * 
	 * @param string $position The name of the position to render
	 * @param array $args The list of arguments to pass on to the layout
	 * 
	 * @return string The html code generated
	 * 
	 * @since 2.0
	 */
	public function renderPosition($position, $args = array())
	{
		// init vars
		$elements = array();
		$output   = array();

		// get style
		$style = isset($args['style']) ? $args['style'] : 'default';

		// store layout
		$layout = $this->_layout;

		// render elements
		foreach ($this->_getConfigPosition($position) as $data) {
            if ($element = $this->_item->getElement($data['element'])) {

				if (!$element->canAccess($this->_user)) {
					continue;
				}

                // set params
                $params = array_merge($data, $args);

                // check value
                if ($element->hasValue($this->app->data->create($params))) {

					// trigger elements beforedisplay event
					$render = true;
					$this->app->event->dispatcher->notify($this->app->event->create($this->_item, 'element:beforedisplay', array('render' => &$render, 'element' => $element, 'params' => $params, 'user' => $this->_user)));

					if ($render) {
						$elements[] = compact('element', 'params');
					}
                }
            }
        }

        foreach ($elements as $i => $data) {
            $params  = array_merge(array('first' => ($i == 0), 'last' => ($i == count($elements)-1)), $data['params']);

			$output[$i] = parent::render("element.$style", array('element' => $data['element'], 'params' => $params));

			// trigger elements afterdisplay event
			$this->app->event->dispatcher->notify($this->app->event->create($this->_item, 'element:afterdisplay', array('html' => &$output[$i], 'element' => $data['element'], 'params' => $params)));
        }

		// restore layout
		$this->_layout = $layout;

		return implode("\n", $output);
	}

	/**
	 * Get the configuration for the given position
	 * 
	 * @param string $position The name of the position
	 * 
	 * @return JSONData The config for this position
	 * 
	 * @since 2.0
	 */
    protected function _getConfigPosition($position) {
		$config	= $this->getConfig('item')->get($this->_item->getApplication()->getGroup().'.'.$this->_item->getType()->id.'.'.$this->_layout);

        return $config && isset($config[$position]) ? $config[$position] : array();
    }

}