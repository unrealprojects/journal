////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Initialization
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

window.upf = {};
window.upf.Actions={};
window.upf.Menu = {};
window.upf.Menu.Expanded = true;

window.upf.Actions.Login = {};
window.upf.Actions.Login.Expanded = false;


window.upf.Page = {};

(function($){
    $(document).ready(function(){


// Thing
//$('.skiptranslate span').remove();

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// End Initialization
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Toggle Menu
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
                    $(NavMenu).animate({'margin-left':PushWidth});
                    $SiteContent.animate({'margin-left':PushWidth});
                    $Menu.animate({'left':PullWidth,'opacity':1});
                }else{
                    // Click to Hide menu
                    $(NavMenu).animate({'margin-left':PullWidth});
                    $SiteContent.animate({'margin-left':PullWidth});
                    $Menu.animate({'left':'-'+PushWidth,'opacity':0});
                }
                return false;
            });


            // Hide Menu When Width < 1180px
            if($(window).width()<1180){
                upf.Menu.Expanded = false;
                $SiteContent.animate({'margin-left':PullWidth});
                $Menu.animate({'left':'-'+PushWidth,'opacity':0});
            }

            $(window).resize(function(){
                // Hide menu
                if($(window).width()<=1180 && upf.Menu.Expanded==true){
                    $SiteContent.animate({'margin-left':PullWidth});
                    $Menu.animate({'left':'-'+PushWidth,'opacity':0});
                    upf.Menu.Expanded=false;
                }else if($(window).width()>1180 && upf.Menu.Expanded==false){
                    $SiteContent.animate({'margin-left':PushWidth});
                    $Menu.animate({'left':PullWidth,'opacity':1});
                    upf.Menu.Expanded=true;
                }
            });

        }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// End Toggle Menu
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Page Header
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

upf.Page.Headers = function(){
    // Default Variables
    var $Body            = $('body'),
        page_default     = 'static',
        page_static      = 'static',
        page_home        = 'home',
        page_list        = 'list';


    // Set data-page="home"
        if(location.pathname == '/' || location.pathname == '/archive'){
            $Body.attr('data_page','home');
        }

    // Set data-page="list"
        else if(location.pathname    ==      '/news'  ||
           location.pathname         ==      '/articles' ||
           location.pathname         ==      '/libs'  ||
           location.pathname         ==      '/events'  ||
           location.pathname         ==      '/medication'  ||
           location.pathname         ==      '/terminology' ||
           location.pathname         ==      '/partners')
        {
            $Body.attr('data_page',page_static);
        }


    // Set data-page="static"
        else if(location.pathname    ==      '/news'  ||
           location.pathname    ==      '/articles' ||
           location.pathname    ==      '/libs'  ||
           location.pathname    ==      '/events'  ||
           location.pathname    ==      '/medication'  ||
           location.pathname    ==      '/terminology' ||
           location.pathname    ==      '/partners'

            )
        {
            $Body.attr('data_page',page_list);
        }

    // Set data-page="static"
        else{
            $Body.attr('data_page',page_default);
        }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// End Page Header
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
















////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// LogIn
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
upf.Actions.Login = function(){

    // Default Variables
    var ButtonLogIn='.Authorization .Button-Like',
        FormLogIn='#login-form',
        CloseArea='main';

    $(ButtonLogIn).click(function(){
        $(FormLogIn).fadeToggle(300,'easeInQuint');
    });

    $(CloseArea).click(function(){
        $(FormLogIn).fadeOut(100,'easeInQuint');
    });

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// End LogIn
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Execute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


upf.Menu.ToggleMenu();
upf.Page.Headers();
upf.Actions.Login();


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////










    });
})(jQuery);
