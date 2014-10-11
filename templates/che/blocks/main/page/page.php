<div class="page">
    <div class="main_block">
    </div>
    <div class="content">

        <?php if(JUri::base() != JUri::current()){ ?>
            <jdoc:include type="modules" name="before_component" />
        <?php } ?>
        <jdoc:include type="component" />
        <jdoc:include type="modules" name="after_component" />
    </div>
</div>