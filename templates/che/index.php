<html>

<head>
    <jdoc:include type="head" />
    <link rel="stylesheet" href="/templates/che/style.css">
    <meta name="google-translate-customization" content="ccff3993fba71849-78996be6e1aca67a-g90d82ac7a3fbd458-8"/>
</head>

<body>
    <div class="wrap">
       <?php
            $parent_dir = JPATH_BASE . "/templates/che/blocks";
           include $parent_dir . '/left_colomn/left_colomn.php';
           include $parent_dir . '/main/main.php';
       ?>
    </div>

    <div class="Subscription">
        <jdoc:include type="modules" name="subscription">
    </div>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'ru', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script src="/templates/che/blocks/main/header/js/translate.js"></script>
    <script src="/templates/che/lib/js/masonry.pkgd.js"></script>
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
