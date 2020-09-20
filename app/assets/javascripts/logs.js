$(document).on('turbolinks:load', function() {
    $('.button').click(function() {
        $('.wrapper').fadeOut()
        $('.select').fadeIn()
    });
    
    $('input[name="check"]').change(function(){
        $("#sidebarMenu").css("transform","translateX(0)");
    });
    // $(".openSidebarMenu").click(function(){
        // $('#sidebarMenu').css('transform', 'translateX(0)');
        // });

});