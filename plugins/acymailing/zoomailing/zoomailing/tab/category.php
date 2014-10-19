<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// get app object
$application = $this->app->table->application->get($pageInfo->filter_app);

$rows = array();

// get all cat and childrens
$rows = $application->getCategoryTree(false, null, true);

// build tree list
$this->app->tree->buildList(0, $application->getCategoryTree(), array(), '-&nbsp;', '.&nbsp;&nbsp;&nbsp;', '&nbsp;&nbsp;');

// remove root cat
unset($rows[0]);

// get acymailing tag type, news or autonews
$type = JRequest::getString('type');

?>
<script language="javascript" type="text/javascript">
<!--
	var selectedCategories = new Array();
	function applyAutoZoo(catid, rowClass)
	{
		var tmp = selectedCategories.indexOf(catid);
		if(tmp != -1)
		{
			window.document.getElementById('zoo_cat' + catid).className = rowClass;
			delete selectedCategories[tmp];
		} else {
			window.document.getElementById('zoo_cat' + catid).className = 'selectedrow';
			selectedCategories.push(catid);
		}
		updateAutoTag();
	}
	
	function updateAutoTag()
	{
		tag = '{autozoo:';
		for(var icat in selectedCategories){
			if(selectedCategories[icat] && !isNaN(icat)) {
				tag += 'cat'+selectedCategories[icat]+'-';
			}
		}
		
		if(document.adminForm.min_item && document.adminForm.min_item.value && document.adminForm.min_item.value!=0) { 
			tag += '|min:'+document.adminForm.min_item.value; 
		}
		if(document.adminForm.max_item.value && document.adminForm.max_item.value != 0) { 
			tag += '|max:'+document.adminForm.max_item.value; 
		}
		if(document.adminForm.columns.value && document.adminForm.columns.value != 0) { 
			tag += '|col:'+document.adminForm.columns.value; 
		}
		if(document.adminForm.since && document.adminForm.since.value && document.adminForm.since.value!=0) { 
			tag += '|since:'+document.adminForm.since.value; 
		}
		if(document.adminForm.categorylayout && document.adminForm.categorylayout.value) { 
			tag += '|layout:';
			tag += document.adminForm.categorylayout.value; 
		}
		if(document.adminForm.zooorder.value) { 
			tag += document.adminForm.zooorder.value; 
		}
		if(document.adminForm.zoofilter && document.adminForm.zoofilter.value) { 
			tag += document.adminForm.zoofilter.value; 
		}
		if(window.document.getElementById('jflangauto')  && window.document.getElementById('jflangauto').value != ''){
			tag += '|lang:';
			tag += window.document.getElementById('jflangauto').value;
		}
		tag += '}';
		setTag(tag);
	}
//-->
</script>
<table width="100%" class="adminform">
	<tr>
		<td><?php 	echo JText::_('PLG_ZOOMAILING_MIN_ITEMS'); ?></td>
		<td><input name="min_item" size="10" value="1" onchange="updateAutoTag();" /></td>		
		<td><?php echo JText::_('PLG_ZOOMAILING_ORDER'); ?></td>
		<td><?php $ordertype = new ZooOrderType(); $ordertype->onclick = "updateAutoTag();"; echo $ordertype->display('zooorder','|order:id'); ?></td>
		<td><?php echo JText::_('PLG_ZOOMAILING_NUM_COLUMNS'); ?></td>
		<td><input name="columns" size="10" value="" onchange="updateAutoTag();" /></td>
	</tr>
	<tr>
		<td><?php echo JText::_('PLG_ZOOMAILING_MAX_ITEMS'); ?></td>
		<td><input name="max_item" size="10" value="" onchange="updateAutoTag();" /></td>
			<td><?php echo JText::_('PLG_ZOOMAILING_FILTER'); ?></td>
			<td><?php $filter = new ZooFilterType(); $filter->onclick = "updateAutoTag();"; echo $filter->display('zoofilter','|filter:created'); ?></td>
		<td><?php echo JText::_('PLG_ZOOMAILING_DAYS_SINCE'); ?></td>
		<td><input name="since" size="10" value="" onchange="updateAutoTag();" /></td>
	</tr>
</table>
<table width="100%" class="adminform">
	<tr>
		<td><?php echo JText::_('PLG_ZOOMAILING_LAYOUT') ?> :</td>
		<td><?php $layout = new ZooLayout(); echo $layout->display('categorylayout'); ?></td>
	</tr>
</table>
<table class="adminlist" cellpadding="1" width="100%">
	<thead>
		<tr>
			<th class="title"><?php echo JText::_('PLG_ZLFRAMEWORK_NAME'); ?></th>
			<th class="title titlenum"><?php echo JText::_('PLG_ZOOMAILING_ITEMS'); ?></th>
			<th class="title titleid"><?php echo JText::_('PLG_ZOOMAILING_ID'); ?></th>
		</tr>
	</thead>
	<tbody>
	<?php $k = 0; foreach ($rows as $row) : ?>
		<tr id="zoo_cat<?php echo $row->id ?>" class="<?php echo "row$k"; ?>" onclick="applyAutoZoo(<?php echo $row->id ?>,'<?php echo "row$k" ?>');" style="cursor: pointer;">
			<td>
				<?php
					$text = '<b>'.JText::_('PLG_ZOOMAILING_ALIAS', true).': </b>'.$row->alias;
					echo acymailing_tooltip($text, $row->treename, '', $row->treename);
				?>
			</td>
			<td><?php echo $row->itemCount(); ?></td>
			<td>
				<?php echo $row->id; ?>
				<input type="hidden" name="categorylayout<?php echo $row->id; ?>" id="categorylayout<?php echo $row->id; ?>" value=""/>
			</td>
		</tr>
	<?php $k = 1 - $k; endforeach; ?>
	</tbody>
</table>