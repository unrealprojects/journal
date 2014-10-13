<?php
// Protect from unauthorized access
defined('_JEXEC') or die();

class ZLManagerDispatcher extends FOFDispatcher
{
	public function __construct($config = array()) 
	{
		$this->defaultView = 'extensions';
			
		parent::__construct($config);
	}
}