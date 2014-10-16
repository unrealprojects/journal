////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Initialization
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

window.upf = {};
window.upf.Start ={};
window.upf.Tools ={};

window.upf.Menu = {};
window.upf.Menu.Expanded = true;

window.upf.Actions={};
window.upf.Actions.Login = {};
window.upf.Actions.Login.Expanded = false;

window.upf.Page = {};
(function($){

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Array.prototype.clean = function(deleteValue) {
        for (var i = 0; i < this.length; i++) {
            if (this[i] == deleteValue) {
                this.splice(i, 1);
                i--;
            }
        }
        return this;
    };













////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 2.1 Toggle Menu
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        upf.Menu.ToggleMenu = function(){

            // Default Variables
            var $Menu = $('.Page-Sidebar'),
                $SiteContent = $('.Content-Wrapper'),
                NavMenu = '.Sidebar-Toggle',
                PullWidth = '0px',
                PushWidth = '235px';


            // Toggle Menu's body
            $(document).on('click',NavMenu,function(){

                if($Menu.css('left')!=PullWidth){
                    // Click to Show menu
                    $(NavMenu).animate({'margin-left':PushWidth}).toggleClass('Expanded Collapsed');
                    $SiteContent.animate({'margin-left':PushWidth});
                    $Menu.animate({'left':PullWidth,'opacity':1});
                }else{
                    // Click to Hide menu
                    $(NavMenu).animate({'margin-left':PullWidth}).toggleClass('Expanded Collapsed');
                    $SiteContent.animate({'margin-left':PullWidth});
                    $Menu.animate({'left':'-'+PushWidth,'opacity':0});
                }

                $('.items').masonry( 'reload' );
                return false;
            });


            // Hide Menu When Width < 1180px
            if($(window).width()<1180){
                upf.Menu.Expanded = false;
                $(NavMenu).animate({'margin-left':PullWidth}).toggleClass('Expanded Collapsed');
                $SiteContent.animate({'margin-left':PullWidth});
                $Menu.animate({'left':'-'+PushWidth,'opacity':0});
            }

            $(window).resize(function(){
                // Hide menu
                if($(window).width()<=1180 && upf.Menu.Expanded==true){

                    $(NavMenu).animate({'margin-left':PullWidth}).toggleClass('Expanded Collapsed');
                    $SiteContent.animate({'margin-left':PullWidth});
                    $Menu.animate({'left':'-'+PushWidth,'opacity':0});
                    upf.Menu.Expanded=false;

                }else if($(window).width()>1180 && upf.Menu.Expanded==false){

                    $(NavMenu).animate({'margin-left':PushWidth}).toggleClass('Expanded Collapsed');
                    $SiteContent.animate({'margin-left':PushWidth});
                    $Menu.animate({'left':PullWidth,'opacity':1});
                    upf.Menu.Expanded=true;
                }
            });

        }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 2.2 Scroll Top Menu
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Menu.ScrollMenu = function(){

    // Default Variables
    var NavMenu         =   '.Sidebar-Toggle',
        NavHeight       =   5;


    // Start position
    if($(window).scrollTop() > 5){
        $(NavMenu).css({'top': '0px'}   );
    }

    // When Scroll
    $(window).scroll(function(){
        // Hide menu
        if($(window).scrollTop() > 5){
            $(NavMenu).animate({'top': '0px'},50);
        }else{
            $(NavMenu).animate({'top':NavHeight+'px'},100);
        }
    });

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 3 Page Header
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Page.Headers = function(){
    // Default Variables
    var $Body            = $('body'),
        page_default     = 'home',
        page_static      = 'static',
        page_home        = 'home',
        page_list        = 'list';

    var SiteSection = location.pathname.split('/')[1];
    var SiteSectionType = location.pathname.split('/')[2];
    // Set data-page="home"
        if( location.pathname       == '/' ||
            SiteSection       == 'archive' ||
            SiteSection         ==      'authors'  ||
            SiteSection         ==      'journals'){
            $Body.attr('data-page','home');
        }

        if( location.pathname       == '/' ||
            SiteSection       == 'archive'){
            $Body.attr('data-alias','home');

            $('.layout-default .title a').each(function(){
                $(this).attr('href',
                    $(this).attr('href').replace('/archive','')
                );
            });
        }

        if( location.pathname       == '/'){
            $('#yoo-zoo .heading').append('<a class="Rss" href="/feed/rss/journal/home?format=feed"><span class="fa fa-rss"></span></a>');
        }

        if(SiteSection         ==      'authors'  ||
           SiteSection         ==      'video'    ||
           SiteSection         ==      'journals' ||
           SiteSection         ==      'component'){
            $('#yoo-zoo').addClass('Item-Extended');
            $('.Component').addClass('Node-XS-12').removeClass('Node-XXS-8');
            $('.Before-Component').remove();
            $('.After-Component').remove();
        }

        if(SiteSection         ==      'authors'){
            $('.Component').addClass('Node-XS-12').removeClass('Node-XXS-8');
            $('.element-relateditems .pos-subtitle a').each(function(){
                $(this).attr('href',
                    '/articles'+$(this).attr('href')
                );
            });
        }

    if(SiteSection         ==      'journals'){
        $('.element-relateditems .pos-subtitle a').each(function(){
            $(this).attr('href',
                '/articles'+$(this).attr('href')
            );
        });
    }

    // Set data-page="list"
        else if(SiteSection         ==      'news'  ||
                SiteSection         ==      'articles' ||
                SiteSection         ==      'libs'  ||


                SiteSection         ==      'events'  ||
                SiteSection         ==      'medication'  ||
                SiteSection         ==      'terminology' ||
                SiteSection         ==      'partners')
        {
            $Body.attr('data-page',page_list);
        }


    // Set data-page="static"
        else if(SiteSection    ==      'redkollegiya' ||
                SiteSection    ==      'contacts' ||
                SiteSection    ==      'links' ||
                SiteSection    ==      'sponsors' ||
                SiteSection    ==      'about' ||
                SiteSection    ==      'subscribe'

            )
        {
            $Body.attr('data-page',page_static);
            $('.Component').removeClass('Node-XXS-8');
            $('.Component').addClass('Node-XXS-12');
        }

    // Set data-page="list"
        else{
            $Body.attr('data-page',page_default);
        }

    if( SiteSection       ==      'video'){
        $Body.attr('data-alias','video');
    }

    if(location.pathname.split('/')[2] !==undefined && location.pathname.split('/')[2].length>2){
        $('.Top-Five-Header h3').text('Интересные');
    }

    // For Unique Elements
    if(location.pathname        ==      '/archive'){
        $('#yoo-zoo .heading h1.title').html('Архив Новостей');
    }

    if(SiteSection         ==      'item'){
     $Body.attr('data-alias','item');

        $('.Tags').remove();

        $('.Component').after($('.Before-Component').detach().toggleClass('Row-Close Row-Open'));
        $('.Component').toggleClass('Row-Close Row-Open');
            if($('.pos-content iframe').length>0){
                $('.pos-title').remove();
            }
        $('.Before-Component').show();
    }

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 4 LogIn
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Actions.Login = function(){

    // Default Variables
    var ButtonLogIn='.Authorization #SingIn',
        FormLogIn='#login-form',
        CloseArea='main';

    $(ButtonLogIn).click(function(){
        $(FormLogIn).fadeToggle(300,'easeInQuint');
        return false;
    });

    $(CloseArea).click(function(){
        $(FormLogIn).fadeOut(100,'easeInQuint');
    });

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 5 Change Images
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Start.CategoryLinks = function(){
    // Hide Images

    $('.zoo-itempro-default .media img').each(function(ItemKey,Item){
        if(ItemKey != 0){
            $(Item).remove();
        }else{
            $(Item).show();
        }
    });

    // Default Variables
    var Elements = $('.pos-title, .zoo-itempro-default .media');

    $(Elements).each(function(){
        if(!$(this).find('img').length){
            $(this).find('img').remove();
            $(this).addClass('Block-No-Image');
        }
        $(this).find('article:last-of-type').addClass('Item-Category');
    });

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 5.1 Change Category Label Color
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    upf.Start.CategoryLabels = function(){
        $('article.item a').each(function(ItemKey,Item){
            var SiteSection = location.pathname.split('/')[1];
            var SiteSectionType = location.pathname.split('/')[2];


            var Edit_Icons = true;

            if((SiteSection         ==      'news'  ||
                    SiteSection         ==      'articles' ||
                    SiteSection         ==      'libs'  ||
                    SiteSection         ==      'events'  ||
                    SiteSection         ==      'video'  ||
                    SiteSection         ==      'medication'  ||
                    SiteSection         ==      'terminology' ||
                    SiteSection         ==      'partners') && SiteSectionType != 'tag')
            {
                Edit_Icons = false;
            }

            if($(Item).text().toString() == 'Новости'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Purple');
                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/news' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/news' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );

            }

            else if( $(Item).text().toString() == 'Библиотека'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Green');

                // Change Link
                    $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                          '/libs' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                    );

                    $(Item).parents('.layout-default').find('.title a').attr('href',
                        '/libs' + $(Item).parents('.layout-default').find('.title a').attr('href')
                    );
            }

            else if($(Item).text().toString() == 'Препараты'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Blue');

                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/medication' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/medication' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );

            }

            else if($(Item).text().toString() == 'Мероприятия'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/events' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/events' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );
            }

            else if($(Item).text().toString() == 'Статьи'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Yellow');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/articles' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/articles' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );
            }

            else if($(Item).text().toString() == 'Видео'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/video' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/video' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );
            }


            else if($(Item).text().toString() == 'Партнеры'.toString() && Edit_Icons )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/partners' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

                $(Item).parents('.layout-default').find('.title a').attr('href',
                    '/partners' + $(Item).parents('.layout-default').find('.title a').attr('href')
                );
            }
        });

    }



    upf.Start.CategoryLabelsAjax = function(){
        $('article.item a').each(function(ItemKey,Item){


            if($(Item).text().toString() == 'Новости'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Purple');
                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/news' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }

            else if( $(Item).text().toString() == 'Библиотека'.toString() && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Green');

                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/libs' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }

            else if($(Item).text().toString() == 'Препараты'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Blue');

                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/medication' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );
            }

            else if($(Item).text().toString() == 'Мероприятия'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/events' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }

            else if($(Item).text().toString() == 'Статьи'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Yellow');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/articles' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }

            else if($(Item).text().toString() == 'Видео'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/video' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }


            else if($(Item).text().toString() == 'Партнеры'.toString()  && $(this).parent().is(':visible') )
            {
                $(Item).addClass('Color-Red');


                // Change Link
                $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href',
                    '/partners' + $(Item).parents('.teaser-item').find('.pos-subtitle a').attr('href')
                );

            }
        });

    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 6 Ajax  Pagination
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Actions.Pagination = function(){
    // Default Variables
    var Elements = $('.pos-title');
    var Ajax = false;
    function isInt(n) {
        return n % 1 === 0;
    }
    var Chanks = location.pathname.split('/');


    var Page = 1;
    if(isInt(Chanks[Chanks.length-1]) && Chanks[Chanks.length-1]>0){
        Page = Chanks[Chanks.length-1];
        console.log(Chanks[Chanks.length-1]);
        delete Chanks[Chanks.length-1];
    }
    Chanks=Chanks.clean("");



    if($('.Component .items').length>0 && $('.Component .items .teaser-item').length>29 ){
        $('.Component').append('<div class="Load-More">Показать еще</div>');
    }



    $('.Load-More').click(function(){
        //
        if(!Ajax){

            Ajax   = true;


            Page++;
            var link = '';
            if(Chanks.length>0){
                link = Chanks.join('/') + '/' + Page +'?tmpl=component';
            }else{
                 link =   Page +'?tmpl=component';
            }




                $.ajax({
                    url: link,
                    beforeSend:function(){
                        $('.Load-More').before('<div class="Icon-Loading"></div>');
                    },
                    success:function(Data)
                    {
                        $('.Icon-Loading').remove();
                        if($(Data).find('.teaser-item').length>1){
                            $('.items .Grid').append($(Data).find('.teaser-item'));

                            // Events
                            upf.Actions.HideImagesInTeaser();
                            upf.Start.CategoryLinks();
                            upf.Start.CategoryLabelsAjax();

                            upf.Actions.BlockClickAble();

                            MasonryObj.appended( $(Data).find('.teaser-item'));
                            MasonryObj.reloadItems();
                            MasonryObj.layout();
                            Ajax   = false;


                        }else{
                            $('.Load-More').remove();
                        }
                    },
                    error:function(){
                        $('.Load-More').remove();
                        $('.Icon-Loading').remove();
                    }
                });

        }
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dropdown
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Tools.Dropdown = function(){
    // Default Variables
    var Dropdown            =   '.Dropdown',
        DropdownContent     =   '.Dropdown-Content',
        DropdownTitle       =   '.Dropdown-Title',
        DropdownToggle      =   '.Dropdown-Toggle',
        Collapsed           =   'Collapsed',
        Expanded            =   'Expanded',
        Duration            =   500;

    // Presets
    $(Dropdown).addClass('Collapsed');
    var Toggle = false;

    // Body
    $(document).on('click',DropdownTitle,function(){
        $(Dropdown+'.'+Expanded).not($(this).parent()).find(DropdownContent).slideUp(Duration);
        $(Dropdown+'.'+Expanded).not($(this).parent()).find(DropdownToggle).animate({transform: 'rotate(0deg)'},Duration);
        $(Dropdown+'.'+Expanded).not($(this).parent()).removeClass(Expanded).addClass(Collapsed);

        $(this).parents(Dropdown).find(DropdownContent).slideToggle(Duration);
        $(this).parents(Dropdown).toggleClass(Collapsed+' '+Expanded);

        // Toggle Button
        if(!Toggle){
            $(this).parents(Dropdown).find(DropdownToggle).animate({transform: 'rotate(-180deg)'},Duration);
            Toggle = true;
        }else{
            $(this).parents(Dropdown).find(DropdownToggle).animate({transform: 'rotate(0deg)'},Duration);
            Toggle = false;
        }

        return false;
    });

    // Focus Out
    $(document).on('click','body',function(){
        $(Dropdown+'.'+Expanded).find(DropdownContent).slideUp(Duration);
        $(Dropdown+'.'+Expanded).find(DropdownToggle).animate({transform: 'rotate(0deg)'},Duration);
        $(Dropdown+'.'+Expanded).removeClass(Expanded).addClass(Collapsed);
    });



    /*** Переключение элементов ***/
    $('.Dropdown-Content .Icon:nth-of-type(1)').click(function(){
        $('.Top-Five-Header h3').text('Топ 5 за все время');
        $('.Popular>ul').hide();
        $('.Popular>ul:nth-of-type(1)').show();
        return false;
    });

    /*** Переключение элементов ***/
    $('.Dropdown-Content .Icon:nth-of-type(2)').click(function(){
        $('.Top-Five-Header h3').text('Топ 5 за месяц');
        $('.Popular>ul').hide();
        $('.Popular>ul:nth-of-type(2)').show();
        return false;
    });

    /*** Переключение элементов ***/
    $('.Dropdown-Content .Icon:nth-of-type(3)').click(function(){
        $('.Top-Five-Header h3').text('Топ 5 за неделю');
        $('.Popular>ul').hide();
        $('.Popular>ul:nth-of-type(3)').show();
        return false;
    });
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Click Able To Block
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
upf.Actions.BlockClickAble = function(){
    var SelectorItem = '.teaser-item,.pos-item,.zoo-itempro-default li',
        SelectorLink = '.pos-subtitle a, .title a';

    $(SelectorItem).click(function(){
       location.href =  $(this).find(SelectorLink).attr('href');
    });

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Hide Images In Teaser
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    upf.Actions.HideImagesInTeaser = function(){
            var SelectorItem = '.teaser-item .pos-meta',
            SelectorLink = '.pos-subtitle a, .title a';

        $('.teaser-item').each(function(){
            if(!$('.pos-meta',this).length){
                $('.pos-title img',this).remove();
            }
        });
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1 Vertical Grid
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    upf.Start.VerticalGrid = function(){
        // Default Variables
        var Selectors = '.teaser-item';

        if($('.items .Grid').length){
            MasonryObj = new Masonry('.items .Grid',{
                itemSelector: Selectors
            });




            function ReloadMasonry(){
                MasonryObj.reloadItems();
                MasonryObj.layout();
            }
            setTimeout(ReloadMasonry,1400)
        }

        // Inner Related
        Selectors = '.pos-item';
        if($('.element-relateditems').length>0){
            MasonryObjRelated = new Masonry('.element-relateditems',{
                itemSelector: Selectors
            });
        }




    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Execute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(document).ready(function(){
    upf.Menu.ToggleMenu();
    upf.Menu.ScrollMenu();
    upf.Tools.Dropdown();
    upf.Actions.Login();
    upf.Actions.Pagination();

    upf.Actions.HideImagesInTeaser();

    upf.Start.CategoryLinks();





    $('.Feed-Subscription').upf_window($('.Subscription').html());
    $('.Content-Wrapper  .Subscription').remove();





    /*** Скролл вверх ***/
    $('#Scroll-Top').click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 400);
        return false;
    });

    $(window).scroll(function(){
        /*** Появление Кнопка Вверх ***/
        if(($(window).scrollTop() > 100) && ($(window).width() > 500)) {
            $('#Scroll-Top').animate({'top':'25px'});
        }
        if($(window).scrollTop() <= 100) {
            $('#Scroll-Top').animate({'top':'-50px'});
        }
    });




    $('.Popular>ul:first-of-type').show();


    upf.Start.CategoryLabels();

    upf.Actions.BlockClickAble();

    upf.Start.VerticalGrid();


});

    upf.Page.Headers();

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


})(jQuery);

