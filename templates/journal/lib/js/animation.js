////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Initialization
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

window.upf = {};
window.upf.Start ={};

window.upf.Menu = {};
window.upf.Menu.Expanded = true;

window.upf.Actions={};
window.upf.Actions.Login = {};
window.upf.Actions.Login.Expanded = false;

window.upf.Page = {};
(function($){


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1 Vertical Grid
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    upf.Start.VerticalGrid = function(){
        // Default Variables
        var Blocks = $('.items');
        var Selectors = '.teaser-item';

        Masonry = $(Blocks).masonry({
            itemSelector: Selectors
        });
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


    // Set data-page="home"
        if(location.pathname        == '/' ||
            location.pathname       == '/archive' ||
            location.pathname         ==      '/journals'){
            $Body.attr('data-page','home');
        }

    // Set data-page="list"
        else if(location.pathname         ==      '/news'  ||
                location.pathname         ==      '/articles' ||
                location.pathname         ==      '/libs'  ||
                location.pathname         ==      '/authors'  ||
                location.pathname         ==      '/video'  ||
                location.pathname         ==      '/events'  ||
                location.pathname         ==      '/medication'  ||
                location.pathname         ==      '/terminology' ||
                location.pathname         ==      '/partners')
        {
            $Body.attr('data-page',page_list);
        }


    // Set data-page="static"
        else if(location.pathname    ==      '/redkollegia'

            )
        {
            $Body.attr('data-page',page_static);
        }

    // Set data-page="static"
        else{
            $Body.attr('data-page',page_default);
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
        // Default Variables
        var Elements = $('.pos-title');

        $(Elements).each(function(){
            if(!$(this).find('img').length){
                $(this).addClass('Block-No-Image');
            }
            $(this).find('article:last-of-type').addClass('Item-Category');
        });
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Execute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

$(document).ready(function(){
    upf.Menu.ToggleMenu();
    upf.Menu.ScrollMenu();
    upf.Actions.Login();
    upf.Start.VerticalGrid();
    upf.Start.CategoryLinks();

    $('.Feed-Subscription').upf_window($('.Subscription').html());
    $('.Content-Wrapper  .Subscription').remove();
});


upf.Page.Headers();
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




})(jQuery);
