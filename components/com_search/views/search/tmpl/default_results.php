<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_search
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<dl class="Search-Result">
    <?php foreach($this->results as $result) : ?>
        <article class="Search-Result">
            <div class="Search-Result-Nub=mber"><?php echo $this->pagination->limitstart + $result->count.'. ';?></div>
            <div class="Search-Result-Title">
                <?php if ($result->href) :?>
                    <a href="<?php echo JRoute::_($result->href); ?>"<?php if ($result->browsernav == 1) :?> target="_blank"<?php endif;?>>
                        <?php echo $this->escape($result->title);?>
                    </a>
                <?php else:?>
                    <?php echo $this->escape($result->title);?>
                <?php endif; ?>
            </div>
            <?php if ($result->section) : ?>
                <div class="Search-Result-Category">
			<span class="small<?php echo $this->pageclass_sfx; ?>">
				(<?php echo $this->escape($result->section); ?>)
			</span>
                </div>
            <?php endif; ?>
            <div class="Search-Result-Text">
                <?php echo $result->text; ?>
            </div>
            <?php if ($this->params->get('show_date')) : ?>
                <div class="Search-Result-Created">
                    <?php echo JText::sprintf('JGLOBAL_CREATED_DATE_ON', $result->created); ?>
                </div>
            <?php endif; ?>
        </article>
    <?php endforeach; ?>

</dl>

<div class="pagination">
    <?php echo $this->pagination->getPagesLinks(); ?>
</div>
