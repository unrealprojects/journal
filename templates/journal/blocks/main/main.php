<!-- Site Header -->
<div id="Scroll-Top"></div>
<header class="Site-Header">
        <div class="Site-Logo">
            <h2>
                Фармакогенетика<span>Фармакогеномика</span>
            </h2>
            <a href="/">На главную страницу</a>
        </div>
    <div class="Toolbar">
        <div class="Languages">
            <jdoc:include type="modules" name="languages"/>
        </div>

        <nav class="Authorization">
            <ul>
                <?php if(!$User = JFactory::getUser()->name){ ?>
                    <li><a id="SingIn" href="#">Вход</a></li>
                    <li><a class="Button-Like" href="/component/users/?view=registration">Регистрация</a></li>
                <?php }else{ ?>
                    <li><a href="/component/users/profile?layout=edit" class="SingIn-Info"><?php echo JFactory::getUser()->username; ?></a>
                    <li><jdoc:include type="modules" name="authorization"/></li>
                <?php } ?>
            </ul>
            <?php if(!$User = JFactory::getUser()->name){ ?>
                <jdoc:include type="modules" name="authorization"/>
            <?php } ?>
        </nav>
    </div>
</header>

<!-- Site Navigation: Primary -->
<section class="Site-Navigation Primary Grid Merge">
    <nav class="Node-XS-9">
        <jdoc:include type="modules" name="top_nav"/>
    </nav>

    <div class="Search-Form Node-XS-3">
        <jdoc:include type="modules" name="search"/>
    </div>
</section>
<main>

    <?php
    include $parent_dir.'/main/page/page.php';
    ?>

</main>

