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
var MasonryObj;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1 Vertical Grid
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    upf.Start.VerticalGrid = function(){
        // Default Variables
        var Blocks = $('.items .Grid');
        var Selectors = '.teaser-item';
        if($('.items .Grid').length){
            MasonryObj = new Masonry('.items .Grid',{
                itemSelector: Selectors
            });
        }
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









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
                $(NavMenu).animate({'margin-left':PullWidth});
                $SiteContent.animate({'margin-left':PullWidth});
                $Menu.animate({'left':'-'+PushWidth,'opacity':0});
            }

            $(window).resize(function(){
                // Hide menu
                if($(window).width()<=1180 && upf.Menu.Expanded==true){
                    $(NavMenu).animate({'margin-left':PullWidth});
                    $SiteContent.animate({'margin-left':PullWidth});
                    $Menu.animate({'left':'-'+PushWidth,'opacity':0});
                    upf.Menu.Expanded=false;
                }else if($(window).width()>1180 && upf.Menu.Expanded==false){
                    $(NavMenu).animate({'margin-left':PushWidth});
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
    console.log(SiteSection);

    // Set data-page="home"
        if( location.pathname       == '/' ||
            SiteSection       == 'archive' ||
            SiteSection         ==      'authors'  ||
            SiteSection         ==      'journals'){
            $Body.attr('data-page','home');
        }

        if((SiteSection         ==      'authors'  && SiteSectionType == 'item') ||
           (SiteSection         ==      'journals'&& SiteSectionType == 'item')){
            $('#yoo-zoo').addClass('Item-Extended');
            $('.Component').addClass('Node-XS-12').removeClass('Node-XXS-8');
        }

    // Set data-page="list"
        else if(SiteSection         ==      'news'  ||
                SiteSection         ==      'articles' ||
                SiteSection         ==      'libs'  ||

                SiteSection         ==      'video'  ||
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

    if(location.pathname.split('/')[2] !==undefined && location.pathname.split('/')[2].length>2){
        $('.Dropdown-Title').text('Интересные');
    }

    // Links in Categories
    $('.After-Component .zoo-list a').each(function($ItemKey,Item){
        if(SiteSection){
            $(Item).attr('href','/'+SiteSection+$(Item).attr('href'))
        }
    })

    // For Unique Elements
    if(location.pathname        ==      '/archive'){
        $('#yoo-zoo .heading h1.title').html('Архив Новостей');
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



            if($(Item).text().toString() == 'Новости'.toString())
            {
                $(Item).addClass('Color-Purple');
            }
            else if($(Item).text().toString() == 'Библиотека'.toString())
            {
                $(Item).addClass('Color-Green');
            }
            else if($(Item).text().toString() == 'Препараты'.toString())
            {
                $(Item).addClass('Color-Blue');
            }
            else if($(Item).text().toString() == 'Мероприятия'.toString())
            {
                $(Item).addClass('Color-Red');
            }
            else if($(Item).text().toString() == 'Статьи'.toString())
            {
                $(Item).addClass('Color-Yellow');
            }else{
               // console.log($(Item).text().trim());
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
    var Page = Chanks[Chanks.length-1];

    $(window).scroll(function(){
        var ScrollBottom = $(document).height()-$(window).scrollTop()-$(window).height();


        //
        if(ScrollBottom < 200 && !Ajax){

            Ajax   = true;


                if(isInt(Page)){
                    if(Chanks[Chanks.length-1]){
                         Page = Chanks[Chanks.length-1].toInt() + 1;
                         delete Chanks[Chanks.length-1];
                        Chanks[Chanks.length-1] = Page;
                    }else if(Page){
                        Chanks[Chanks.length-1] = Page;
                        Page++;
                    }else{
                        Chanks[Chanks.length] = Page;
                        Page = 2;
                    }
                }else{
                    Page = 2;
                    Chanks[Chanks.length] = Page;
                }


                var link = Chanks.join('/') + '?tmpl=component'
                console.log(link);


                $.ajax({
                    url: link,
                    beforeSend:function(){
                        $('.Component').append('<div class="Icon-Loading"></div>');
                    },
                    success:function(Data)
                    {
                        $('.Icon-Loading').remove();
                        if($(Data).find('.teaser-item').length>1){
                            $('.items .Grid').append($(Data).find('.teaser-item'));

                            MasonryObj.appended( $(Data).find('.teaser-item'));
                            MasonryObj.reloadItems();
                            MasonryObj.layout();
                            Ajax   = false;
                        }
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
}


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

    upf.Start.CategoryLinks();
    upf.Start.CategoryLabels();

    $('.Feed-Subscription').upf_window($('.Subscription').html());
    $('.Content-Wrapper  .Subscription').remove();

    upf.Start.VerticalGrid();



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
});


upf.Page.Headers();
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




})(jQuery);
