<div class="page">

    <?php  if ($this->countModules('journal_header')) : ?>
        <jdoc:include type="modules" name="journal_header" />
    <?php endif; ?>



    <div class="Grid Split">
        <?php  if ($this->countModules('tags') || $this->countModules('popular') || $this->countModules('adv')) : ?>

            <div class="Before-Component  Node-XXS-4">

                <?php  if( $this->countModules('tags') ) : ?>
                    <div class="Tags">
                        <h3>Рубрики журнала</h3>
                        <jdoc:include type="modules" name="tags" />
                    </div>
                <?php endif;?>

                <?php  if( $this->countModules('popular') ) : ?>
                    <div class="Top-Five">
                        <div class="Dropdown Expanded">
                            <div class="Dropdown-Title">Топ 5 за неделю<span class="Dropdown-Toggle"></span></div>
                            <ul class="Dropdown-Content" style="display: block;">
                                <li class="Icon"><a href="#">За все время</a></li>
                                <li class="Icon"><a href="#">За месяц</a></li>
                                <li class="Icon"><a href="#">За неделю</a></li>
                            </ul>
                        </div>
                        <div class="Popular">
                            <jdoc:include type="modules" name="popular" />
                        </div>
                    </div>
                <?php endif;?>

                <?php  if( $this->countModules('adv') ) : ?>
                    <div class="Adv">
                        <jdoc:include type="modules" name="adv" />
                    </div>
                <?php endif; ?>

            </div>
        <?php  endif; ?>




            <div class="Component Node-XXS-8">
                <jdoc:include type="message" />
                <jdoc:include type="component" />
            </div>



        <?php  if ( $this->countModules('popular_right') || $this->countModules('adv_right')) : ?>

            <div class="Before-Component  Node-XXS-3">

                <?php  if( $this->countModules('popular_right') ) : ?>
                    <div class="Top-Five">
                        <div class="Dropdown Expanded">
                            <div class="Dropdown-Title">Топ 5 за неделю<span class="Dropdown-Toggle"></span></div>
                            <ul class="Dropdown-Content" style="display: block;">
                                <li class="Icon"><a href="#">За все время</a></li>
                                <li class="Icon"><a href="#">За месяц</a></li>
                                <li class="Icon"><a href="#">За неделю</a></li>
                            </ul>
                        </div>
                        <div class="Popular">
                            <jdoc:include type="modules" name="popular_right" />
                        </div>
                    </div>
                <?php endif;?>

                <?php  if( $this->countModules('adv_right') ) : ?>
                    <div class="Adv">
                        <jdoc:include type="modules" name="adv_right" />
                    </div>
                <?php endif; ?>

            </div>
        <?php  endif; ?>

</div>



<div class="Projects">
    <h3 class="Projects-Header">Наши проекты</h3>
    <jdoc:include type="modules" name="projects"/>
</div>
