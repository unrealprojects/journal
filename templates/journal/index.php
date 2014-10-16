<!DOCTYPE html>
<html>

<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="/templates/journal/style.css">
    <link rel="icon" href="/templates/journal/images/favicon.ico"/>
    <meta name="google-translate-customization" content="ccff3993fba71849-78996be6e1aca67a-g90d82ac7a3fbd458-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--[if lt IE 9]>
    <script src="/templates/journal/lib/js/ie8/html5shiv.js" type="text/javascript"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="/templates/journal/lib/js/ie8/respond.js" type="text/javascript"></script>
    <![endif]-->
</head>

<body>
    <div id="Page-Preloader"></div>
    <aside class="Page-Sidebar">
        <nav class="Site-Navigation">
            <jdoc:include type="modules" name="left_nav"/>
        </nav>
        <button class="Feed-Subscription">Подписка на сайт</button>
    </aside>

<div class="Sidebar-Toggle"></div>
<div class="Content-Wrapper">
    <div id="Ahaha-Another-Wrapper-Lol">
        <?php
            $parent_dir = JPATH_BASE . "/templates/journal/blocks";
            include $parent_dir . '/main/main.php';
        ?>
    </div>




    <div class="Subscription">
        <jdoc:include type="modules" name="subscription"/>
    </div>
    <hr id="Footer-Pusher">
</div>
    <footer role="contentinfo">
        <nav class="Site-Navigation Secondary">
            <jdoc:include type="modules" name="bot_nav"/>
            <!--            <div class="Metrics">-->
            <!--                <img src="templates/journal/images/metrics.png" alt=""/>-->
            <!--            </div>-->
        </nav>
        <article class="Copyright">
            Редакция журнала «Качественная клиническая практика» не несёт ответственность за содержание и достоверность рекламных материалов. Перепечатка опубликованных
            материалов разрешается только по письменному разрешению ООО «Издательство ОКИ» и согласованием с Редакцией журнала. Мнение Редакции может не всегда совпадать
            с мнением авторов. При копировании на сайт статей из журнала "Качественная клиническая практика" активная ссылка на: http://www.clinvest.ru/ обязательна! Публикации
            на clinvest.ru не должны использоваться для самостоятельной диагностики и лечения, не должны рассматриваться в качестве рекомендаций пациентам и не могут служить
            заменой консультации врача.
        </article>
    </footer>
    <div class="Scripts">
        <script type="text/javascript">
            function googleTranslateElementInit() {
                new google.translate.TranslateElement({pageLanguage: 'ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
            }
        </script>
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <script src="/templates/journal/blocks/main/header/js/translate.js"></script>
        <script src="/templates/journal/lib/js/masonry.pkgd.js"></script>
        <script src="/templates/journal/lib/js/grid.js"></script>
        <script src="/templates/journal/lib/js/jquery.modbox.js"></script>
        <script src="/templates/journal/lib/js/jquery.transform2d.js"></script>
        <script src="/templates/journal/lib/js/jquery.transform3d.js"></script>
        <script src="/templates/journal/lib/js/animation.js"></script>


    </div>


    <!--[if lt IE 10]>
    <script src="/templates/journal/lib/js/ie8/jquery.placeholder.js" type="text/javascript"></script>
    <![endif]-->

</body>

</html>