<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

/*
	Class: ZL Helper
		The general ZOOlander helper Class for zoo
*/
class ZmHelper extends AppHelper {
	
	/*
		Function: firstApplication
			Returns the first ZOO application
	*/
	public function firstApplication() {
		$db = JFactory::getDBO();
		
		$query = 'SELECT za.id
		FROM #__zoo_application AS za
		ORDER BY za.name';
		$db->setQuery($query);
		$output = $db->loadResult();
		return $output;
	}
	
	/////////////////////////     filter function     /////////////////////////
	public function _removePictures($text){
		$return = preg_replace('#< *img[^>]*>#Ui','',$text);
		$return = preg_replace('#< *div[^>]*class="jce_caption"[^>]*>[^<]*(< *div[^>]*>[^<]*<\/div>)*[^<]*<\/div>#Ui','',$return);
		return $return;
	}

	public function _removeJS($text){
		$text = preg_replace("#(onmouseout|onmouseover|onclick|onfocus|onload|onblur) *= *\"(?:(?!\").)*\"#iU",'',$text);
		$text =  preg_replace("#< *script(?:(?!< */ *script *>).)*< */ *script *>#isU",'',$text);
		return $text;
	}

	public function _removeComment($text) {
		$array_of_id = array('comment');
		$name = implode('|', $array_of_id);
		$regex = '#<(\w+)\s[^>]*(id)\s*=\s*[\'"](' . $name .
	            ')[\'"][^>]*>.*</\\1>#is'; 
		return(preg_replace($regex, '', $text));
	}
	/////////////////////////     filter function end     /////////////////////////
	
	/*
		ReplaceVars
	*/
	public function _replaceVars(&$email, $params) {
		$match = '#{zl-siteurl}#Ui';
		$variables = array('subject','body','altbody');
		$found = false;
		foreach($variables as $var){
			if(empty($email->$var)) continue;
			$found = preg_match_all($match,$email->$var,$results[$var]) || $found;
			if(empty($results[$var][0])) unset($results[$var]);
		}
		if(!$found) return;
		$this->mailerHelper = acymailing_get('helper.mailer');
		$htmlreplace = array();
		$textreplace = array();
		$subjectreplace = array();
		foreach($results as $var => $allresults) {
			foreach($allresults[0] as $i => $oneTag) {
				if(isset($htmlreplace[$oneTag])) continue;
				$siteurl = JURI::root();
				$htmlreplace[$oneTag] = $siteurl;
				$textreplace[$oneTag] = $siteurl;
				$subjectreplace[$oneTag] = strip_tags($siteurl);
			}
		}
		$email->body = str_replace(array_keys($htmlreplace),$htmlreplace,$email->body);
		$email->altbody = str_replace(array_keys($textreplace),$textreplace,$email->altbody);
		$email->subject = str_replace(array_keys($subjectreplace),$subjectreplace,$email->subject);
	}

	
	/*
		ReplaceItems
	*/
	public function _replaceItems(&$email, &$user, $params) {
		$match = '#{joomlazoo:(.*)}#Ui';
		$variables = array('subject','body','altbody');
		$found = false;
		foreach($variables as $var){
			if(empty($email->$var)) continue;
			$found = preg_match_all($match,$email->$var,$results[$var]) || $found;
			if(empty($results[$var][0])) unset($results[$var]);
		}
		if(!$found) return;
		$this->mailerHelper = acymailing_get('helper.mailer');
		$htmlreplace = array();
		$textreplace = array();
		$subjectreplace = array();
		foreach($results as $var => $allresults) {
			foreach($allresults[0] as $i => $oneTag) {
				if(isset($htmlreplace[$oneTag])) continue;
				$item = $this->_replaceItem($allresults, $i, $user, $params);
				$htmlreplace[$oneTag] = $item->html;
				$textreplace[$oneTag] = $item->text;
				$subjectreplace[$oneTag] = strip_tags($item->html);
			}
		}
		$email->body = str_replace(array_keys($htmlreplace),$htmlreplace,$email->body);
		$email->altbody = str_replace(array_keys($textreplace),$textreplace,$email->altbody);
		$email->subject = str_replace(array_keys($subjectreplace),$subjectreplace,$email->subject);
	}

	public function _replaceItem(&$results, $i, &$user, $params) { 
		$arguments = explode('|', strip_tags($results[1][$i]));
		$tag = new stdClass();;
		$tag->id =(int) $arguments[0];
		for($i = 1, $a = count($arguments); $i < $a; $i++){
			$args = explode(':', $arguments[$i]);
			if(isset($args[1])){
				$tag->$args[0] = $args[1];
			}else{
				$tag->$args[0] = true;
			}
		}
		
		// set query
		$model = $this->app->zlmodel->getNew('item');
		$model->setState('select', 'DISTINCT a.*');

		// set user
		$model->setState('user', $user->userid);

		$model->id($tag->id);

		// set item state
		$model->state(true);

		// retrieve items
		$items = $model->getList();

		// pretty print of sql
		if (false) {
			$find = Array("FROM", "WHERE", "AND", "ORDER BY", "LIMIT", "OR");
			$replace = Array(" FROM", " WHERE", " AND", " ORDER BY", " LIMIT", " OR");
			$in = $model->getQuery();
			dump(str_replace($find, $replace, $in));
			dump('Total items: ' . count($items));
		}

		$result = new stdClass();
		$result->text = '';
		$result->html = '';
		
		// load zoo site language
		$language = JFactory::getLanguage();
		$language->load( $extension = 'com_zoo', $basePath = JPATH_SITE, $lang = null, $reload = false );
		
		// if item well retrieved
		if (count($items)) {
			$item = $items[$tag->id];

			// set layout
			$layout = 'default';
			if(JFactory::getApplication()->isSite() && $tag->onlinelayout){
				$layout = $tag->onlinelayout;
			} elseif($tag->layout){
				$layout = $tag->layout;
			}

			// the renderer is in the acymailing plugin folder
			$renderer = $this->app->renderer->create('zmitem')->addPath(array($this->app->path->path('component.site:'), $this->app->path->path('zoomailing:')));
			$html = $renderer->render('item.'.$layout, array('item' => $item, 'user_id' => (isset($user->userid) ? $user->userid : 0)));
			
			if($params->get('removecomment', 'yes') == 'yes') {
				$html = $this->app->zm->_removeComment($html);
			}

			if($params->get('removejs', 'yes') == 'yes') {
				$html = $this->app->zm->_removeJS($html);
			}

			if($params->get('removepictures', 'no') == 'yes') {
				$html = $this->app->zm->_removePictures($html);
			}
				
			// workaround for the FrontEnd Item wrong links
			$html = preg_replace('#/administrator#', '', $html);
			
				
			$result->html = $html;
			$result->text = $this->mailerHelper->textVersion($html);
		}

		return $result;
	}
	
	/*
		Replace AutoItems
	*/
	public function _replaceAuto(&$email, &$user, $params) {
		$this->acymailing_generateautonews($email, $params, $user);
		if(!empty($this->tags)){
			$email->body = str_replace(array_keys($this->tags),$this->tags,$email->body);
			if(!empty($email->altbody)) $email->altbody = str_replace(array_keys($this->tags),$this->tags,$email->altbody);
			foreach($this->tags as $tag => $result){
				$email->subject = str_replace($tag,strip_tags(str_replace('</tr><tr>',' | ',$result)),$email->subject);
			}
		}
	}

	public function acymailing_generateautonews(&$email, $params, $user = null)
	{
		$return = new stdClass();
		$return->status = true;
		$return->message = '';
		$time = time();
		$match = '#{autozoo:(.*)}#Ui';
		$variables = array('subject','body','altbody');
		$found = false;
		foreach($variables as $var){
			if(empty($email->$var)) continue;
			$found = preg_match_all($match,$email->$var,$results[$var]) || $found;
			if(empty($results[$var][0])) unset($results[$var]);
		}
		
		// cancel if no tags to process
		if(!$found) return $return;

		// replaced tags var
		$this->tags = array();
		foreach($results as $allresults){
			foreach($allresults[0] as $i => $oneTag)
			{
				// skip if allready replaced tag
				if(isset($this->tags[$oneTag])) continue;

				// set default values for preview
				$email->params['lastgenerateddate'] = isset($email->params['lastgenerateddate']) ? $email->params['lastgenerateddate'] : '';

				// get tag arguments
				$arguments = explode('|', strip_tags($allresults[1][$i]));
				
				// get tag parameters
				$parameter = new stdClass();;
				for($i = 1; $i < count($arguments); $i++){
					$args = explode(':', $arguments[$i]);
					$arg0 = $args[0];
					if(isset($args[1])){
						$parameter->$arg0 = $args[1];
					}else{
						$parameter->$arg0 = true;
					}
				}

				// get categories
				$categories = array();
				foreach(explode('-', $arguments[0]) as $oneCat){
					$sectype = substr($oneCat, 0, 3);
					$num = substr($oneCat, 3);
					if(!empty($num)) $categories[] = (int)$num;
				}

				// cancel if no categories set
				if(!count($categories)){
					$return->status = false;
					$return->message = 'No categories specified';

					return $return;
				}

				// get first category object
				$first_cat = $this->app->table->category->getById($categories[0]);
				$first_cat = array_shift($first_cat);

				// get application
				$application_id = $first_cat->application_id;

				// get order
				if($parameter->order == 'default'){
					$order = $first_cat->getParams('site')->get('config.item_order');
				} else {
					$order = explode(',', $parameter->order);

					// get order dir
					if(strtolower($order[1]) == 'desc'){
						$order[1] = '_reversed';
					} else {
						unset($order[1]);
					}

					switch ($order[0]) {
						case 'access':
							$order[0] = '_itemaccess';
							break;

						case 'created':
							$order[0] = '_itemcreated';
							break;
						
						case 'hits':
							$order[0] = '_itemhits';
							break;

						case 'name':
							$order[0] = '_itemname';
							break;

						case 'publishdown':
							$order[0] = '_itempublish_down';
							break;

						case 'publishup':
							$order[0] = '_itempublish_up';
							break;
					}
				}

				// set query
				$model = $this->app->zlmodel->getNew('item');
				$model->setState('select', 'DISTINCT a.*');

				// set user
				if ($user) $model->setState('user', $user->userid);

				// set apps
				$model->application(array('value'  => $application_id));

				// set categories
				$model->categories(array('value' => $categories));

				// set item state
				$model->state(true);

				// set limit
				if(!empty($parameter->max)){
					$model->setState('limit', $parameter->max, true);
				}
				
				// set filter conditions
				if(!empty($parameter->filter))
				{
					$since = '';
					if(empty($parameter->since) && !empty($email->params['lastgenerateddate'])){
						$since = date('Y-m-d H:i:s', $email->params['lastgenerateddate'] - date('Z'));
					} else if (!empty($parameter->since)){
						$jNow = JFactory::getDate();
						$days_off = $parameter->since * 86400;
						$since = JFactory::getDate($jNow->toUnix() - $days_off)->toSQL();
					}
					
					if(!empty($since)){
						if($parameter->filter == 'modify'){
							$model->modified(array('value' => $since, 'type' => 'from', 'datetime' => true));
						} else {
							$model->created(array('value' => $since, 'type' => 'from', 'datetime' => true));
						}
					}
				}

				// set order
				$model->setState('order_by', $order);

				// retrieve items
				$items = $model->getList();

				// pretty print of sql
				if (false) {
					$find = Array("FROM", "WHERE", "AND", "ORDER BY", "LIMIT", "OR");
					$replace = Array(" FROM", " WHERE", " AND", " ORDER BY", " LIMIT", " OR");
					$in = $model->getQuery();
					dump(str_replace($find, $replace, $in));
					dump('Total items: ' . count($items));
				}

				// cancel if minimum items not reached
				if(!empty($parameter->min) AND count($items) < $parameter->min){
					$return->status = false;
					$return->message = 'Not enough items for the tag '.$oneTag.' : '.count($items).' / '.$parameter->min.' between '.acymailing_getDate($email->params['lastgenerateddate']).' and '.acymailing_getDate($time);
				}

				// process items trough category layout
				$this->tags[$oneTag] = ZooCatLayout::render($items, $parameter);
			}
		}

		return $return;
	}
}