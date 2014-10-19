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
        <script src="/templates/journal/lib/js/ie8/respond.js" type="text/javascript"></script>
    <![endif]-->


    <!-- Yandex.Metrika counter -->
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter26667966 = new Ya.Metrika({id:26667966,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true});
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <noscript><div><img src="//mc.yandex.ru/watch/26667966" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
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
                        <div class="Metrics">
                            <!-- Yandex.Metrika informer -->
                            <a href="https://metrika.yandex.ru/stat/?id=26667966&amp;from=informer"
                               target="_blank" rel="nofollow"><img src="//bs.yandex.ru/informer/26667966/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
                                                                   style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" onclick="try{Ya.Metrika.informer({i:this,id:26667966,lang:'ru'});return false}catch(e){}"/></a>
                            <!-- /Yandex.Metrika informer -->
                        </div>
        </nav>
        <article class="Copyright">
            <jdoc:include type="modules" name="footer"/>
        </article>
    </footer>





        <script type="text/javascript">
            function googleTranslateElementInit() {
                new google.translate.TranslateElement({pageLanguage: 'ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
            }
        </script>
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        <script src="/templates/journal/lib/js/masonry.pkgd.js"></script>
        <script src="/templates/journal/lib/js/grid.js"></script>
        <script src="/templates/journal/lib/js/jquery.modbox.js"></script>
        <script src="/templates/journal/lib/js/jquery.transform2d.js"></script>
        <script src="/templates/journal/lib/js/jquery.transform3d.js"></script>
        <script src="/templates/journal/lib/js/animation.js"></script>




    <!--[if lt IE 10]>
        <script src="/templates/journal/lib/js/ie8/jquery.placeholder.js" type="text/javascript"></script>
    <![endif]-->

</body>

</html>