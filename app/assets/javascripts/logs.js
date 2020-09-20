$(document).on('turbolinks:load', function() {
    $('.button').click(function() {
        $('.wrapper').fadeOut()
        $('.select').fadeIn()
    });
    
    $("openSidebarMenusidebarMenu").click(function(){
        $(this).removeClass("header");
    });
    // $(".openSidebarMenu").click(function(){
        // $('#sidebarMenu').css('transform', 'translateX(0)');
        // });

});