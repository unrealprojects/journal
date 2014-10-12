<div class="page">

    <div class="content Grid Split">

        <?php // if ($this->countModules('tags') || $this->countModules('popular_left')) : ?>
            <div class="Before-Component  Node-XXS-3">
                <div class="Tags">
                    <h3>Рубрики журнала</h3>
                    <jdoc:include type="modules" name="tags" />
                </div>

                <div class="Top-Five">
                    <div class="header">
                    <h3>Топ 5 за неделю</h3>
                        <div class="Dropdown Expanded">
                            <div class="Dropdown-Title">upf<span class="Dropdown-Toggle fa fa-angle-down"></span></div>
                            <ul class="Dropdown-Content" style="display: block;">
                                <li class="Icon"><a href="#">За неделю</a></li>
                                <li class="Icon"><a href="#">За все время</a></li>
                                <li class="Icon"><a href="#">За неделю</a></li>
                            </ul>
                        </div>
                    </div>
                    <jdoc:include type="modules" name="popular"/>
                </div>

            </div>
        <?php // endif; ?>



        <jdoc:include type="modules" name="popular_right" />
            <div class="Component Node-XXS-9">
                <jdoc:include type="component" />
            </div>



        <?php if($this->countModules('after_component')) : ?>
            <div class="Before-Component Node-XSS-3">
                <jdoc:include type="modules" name="after_component" />
            </div>
        <?php endif; ?>

</div>



<div class="Projects">
    <h3 class="Projects-Header">Наши проекты</h3>
    <jdoc:include type="modules" name="projects"/>
</div>
