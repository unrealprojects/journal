<!DOCTYPE html>
<html>

<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="/templates/che/style.css">
    <meta name="google-translate-customization" content="ccff3993fba71849-78996be6e1aca67a-g90d82ac7a3fbd458-8"/>
</head>

<body>
    <aside class="Page-Sidebar">
        <nav class="Site-Navigation">
            <jdoc:include type="modules" name="left_nav"/>
        </nav>
        <button class="Feed-Subscription">Подписка на сайт</button>
    </aside>

<div class="Content-Wrapper">
    <?php
        $parent_dir = JPATH_BASE . "/templates/che/blocks";
        include $parent_dir . '/main/main.php';
    ?>
    <footer role="contentinfo">
        <nav class="Site-Navigation Secondary">
            <jdoc:include type="modules" name="bot_nav"/>
            <div class="Metrics">
                <img src="templates/che/images/metrics.png" alt=""/>
            </div>
        </nav>
        <article class="Copyright">
            Редакция журнала «Качественная клиническая практика» не несёт ответственность за содержание и достоверность рекламных материалов. Перепечатка опубликованных
            материалов разрешается только по письменному разрешению ООО «Издательство ОКИ» и согласованием с Редакцией журнала. Мнение Редакции может не всегда совпадать
            с мнением авторов. При копировании на сайт статей из журнала "Качественная клиническая практика" активная ссылка на: http://www.clinvest.ru/ обязательна! Публикации
            на clinvest.ru не должны использоваться для самостоятельной диагностики и лечения, не должны рассматриваться в качестве рекомендаций пациентам и не могут служить
            заменой консультации врача.
        </article>
    </footer>

    <div class="Subscription">
        <jdoc:include type="modules" name="subscription">
    </div>
</div>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="/templates/che/blocks/main/header/js/translate.js"></script>
    <script src="/templates/che/lib/js/masonry.pkgd.js"></script>
    <script src="/templates/che/lib/js/animation.js"></script>
    <script>
        (function($){
            $(document).ready(function(){
                // Default Variables
                var Blocks = $('.items');
                var Selectors = '.teaser-item';

                $(Blocks).masonry({
                     itemSelector: Selectors
                });

            });
        })(jQuery);

    </script>
</body>

</html>



<!--
            %d %b %Y
-->
