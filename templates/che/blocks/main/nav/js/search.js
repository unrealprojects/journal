$(document).ready(function(){
    $("#mod-search-searchword").hide();

    $(".search>form").hover(

        function(){
            $("#mod-search-searchword").show();
        },

        function(){
            $("#mod-search-searchword").hide();
        }
    );

});
