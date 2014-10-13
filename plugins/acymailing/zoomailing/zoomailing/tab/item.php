<?php
/**
* @package		ZOOmailing
* @author    	ZOOlanders http://www.zoolanders.com
* @copyright 	Copyright (C) JOOlanders SL
* @license   	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/
?>

<script language="javascript" type="text/javascript">
<!--
	var selectedItems = new Array();
	function applyZoo(id, rowClass)
	{
		var tmp = selectedItems.indexOf(id);
		if(tmp != -1)
		{
			window.document.getElementById('zoo' + id).className = rowClass;
			delete selectedItems[tmp];
			window.document.getElementById('itemlayout' + id).value = '';
			window.document.getElementById('itemonlinelayout' + id).value = '';
		} else {
			window.document.getElementById('zoo' + id).className = 'selectedrow';
			selectedItems.push(id);
			window.document.getElementById('itemlayout' + id).value = window.document.getElementById('itemlayout').value;
			window.document.getElementById('itemonlinelayout' + id).value = window.document.getElementById('itemonlinelayout').value;
		}
		
		updateTag();
	}
	
	function updateTag () {
		var tag = '';
		var otherinfo = '';
		if (window.document.getElementById('jflang') && window.document.getElementById('jflang').value != '') {
			otherinfo += '|lang:';
			otherinfo += window.document.getElementById('jflang').value;
		}

		for (var i in selectedItems) {
			if(selectedItems[i] && !isNaN(i))
			{
				var otherinfo2 = '';
				otherinfo2 += '|layout:';
				otherinfo2 += window.document.getElementById('itemlayout'+ selectedItems[i]).value;
				otherinfo2 += '|onlinelayout:';
				otherinfo2 += window.document.getElementById('itemonlinelayout'+ selectedItems[i]).value;
				tag = tag + '{joomlazoo:' + selectedItems[i] + otherinfo + otherinfo2 + '}';
			}
		}
		
		setTag(tag);
	}
//-->
</script>
<table width="100%" class="adminform">
	<tr>
		<td><?php echo JText::_('PLG_ZLFRAMEWORK_TYPE'); ?> :</td>
		<td>
			<input type="hidden" name="filter_type[]" value="-1"/>
			<?php echo $this->app->zmhtml->_('zm.typeList', $pageInfo->filter_app, $pageInfo->filter_type); ?>
		</td>
		<td><?php echo JText::_('PLG_ZLFRAMEWORK_CATEGORY'); ?> :</td>
		<td>
			<input type="hidden" name="filter_cat[]" value="-1"/>
			<?php echo $this->app->zmhtml->_('zm.categoryList', $pageInfo->filter_app, $pageInfo->filter_cat); ?>
		</td>
		<td><?php echo JText::_('Tag'); ?> :</td>
		<td>
			<input type="hidden" name="filter_tag[]" value="-1"/>
			<?php echo $this->app->zmhtml->_('zm.tagList', $pageInfo->filter_app, $pageInfo->filter_tag); ?>
		</td>
	</tr>
	<tr>
		<td><?php echo JText::_( 'JOOMEXT_FILTER' ); ?> :</td>
		<td><input type="text" name="search" id="acymailingsearch" value="<?php echo $pageInfo->search;?>" class="text_area" onchange="document.adminForm.submit();" />
		<button onclick="this.form.submit();"><?php echo JText::_( 'JOOMEXT_GO' ); ?></button>
		<button onclick="document.adminForm.filter_reset.value = 1; document.getElementById('acymailingsearch').value=''; this.form.submit();"><?php echo JText::_( 'JOOMEXT_RESET' ); ?></button>
		</td>
		<td colspan="4"></td>
	</tr>
</table>
<table width="100%" class="adminform">
	<tr>
		<td><?php echo JText::_('PLG_ZOOMAILING_LAYOUT') ?> :</td>
		<td><?php $layout = new ZooLayout(); echo $layout->display('itemlayout'); ?></td>
	</tr>
	<tr>
		<td><?php echo JText::_('PLG_ZOOMAILING_ONLINE_LAYOUT') ?> :</td>
		<td><?php $layout = new ZooLayout(); echo $layout->display('itemonlinelayout'); ?></td>
	</tr>
</table>
<table class="adminlist" cellpadding="1" width="100%">
	<thead>
		<tr>
			<th class="title"><?php echo JHTML::_('grid.sort', JText::_('PLG_ZLFRAMEWORK_NAME'), 'a.name', $pageInfo->filter->order->dir,$pageInfo->filter->order->value ); ?></th>
			<th class="title"><?php echo JHTML::_('grid.sort', JText::_('PLG_ZLFRAMEWORK_AUTHOR'), 'u.name', $pageInfo->filter->order->dir,$pageInfo->filter->order->value ); ?></th>
			<th class="title titleid"><?php echo JHTML::_('grid.sort',   JText::_( 'ID' ), 'a.id', $pageInfo->filter->order->dir, $pageInfo->filter->order->value ); ?></th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="5"><?php echo $pagination->getListFooter(); ?> <?php echo $pagination->getResultsCounter(); ?></td>
		</tr>
	</tfoot>
	<tbody>
	<?php
	$k = 0; 
	for($i = 0, $a = count($rows); $i < $a; $i++){
		$row =& $rows[$i];
		?>
		<tr id="zoo<?php echo $row->id?>" class="<?php echo "row$k"; ?>" onclick="applyZoo(<?php echo $row->id.",'row$k'"?>);" style="cursor: pointer;">
			<td><?php
			$text = '<b>'.JText::_('ALIAS',true).': </b>'.$row->alias;
			echo acymailing_tooltip($text, $row->name, '', $row->name);
			?></td>
			<td><?php
			if(!empty($row->name)){
				$text = '<b>'.JText::_('PLG_ZLFRAMEWORK_NAME',true).' : </b>'.$row->author;
				$text .= '<br/><b>'.JText::_('USERNAME',true).' : </b>'.$row->username;
				$text .= '<br/><b>'.JText::_('ID',true).' : </b>'.$row->created_by;
				echo acymailing_tooltip($text, $row->author, '', $row->author);
			}
			?></td>
			<td align="center">
				<?php echo $row->id; ?>
				<input type="hidden" name="itemlayout<?php echo $row->id; ?>" id="itemlayout<?php echo $row->id; ?>" value=""/>
				<input type="hidden" name="itemonlinelayout<?php echo $row->id; ?>" id="itemonlinelayout<?php echo $row->id; ?>" value=""/>
			</td>
		</tr>
		<?php
		$k = 1-$k;
	}
	?>
	</tbody>
</table>
<input type="hidden" name="boxchecked" value="0" />
<input type="hidden" name="filter_order" value="<?php echo $pageInfo->filter->order->value; ?>" />
<input type="hidden" name="filter_order_Dir" value="<?php echo $pageInfo->filter->order->dir; ?>" />