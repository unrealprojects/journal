////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Initialization
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

window.upf = {};
window.upf.Menu = {};
window.upf.Menu.Expanded = true;
window.upf.Page = {};

(function($){
    $(document).ready(function(){

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
                PushWidth = '300px';


            // Toggle Menu's body
            $(document).on('click',NavMenu,function(){
                if($Menu.css('left')!=PullWidth){
                    // Click to Show menu
                    $SiteContent.animate({'margin-left':PushWidth});
                    $Menu.animate({'left':PullWidth,'opacity':1});
                }else{
                    // Click to Hide menu
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
// Execute
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


upf.Menu.ToggleMenu();
upf.Page.Headers();


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////










    });
})(jQuery);
