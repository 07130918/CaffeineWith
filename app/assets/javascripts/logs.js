$(document).on('turbolinks:load', function() {
    
    $('.button').click(function() {
        $('.wrapper').fadeOut()
        $('.select').fadeIn()
    });
    
    $('input[name="check"]').change(function(){
       
        var menu = $('#openSidebarMenu').prop('checked');
       
        if (menu) {
            $("#sidebarMenu").css("transform","translateX(0)");
        } else {
            $("#sidebarMenu").css("transform","translateX(100%)");
            $("#sidebarMenu").css("transition","transform 250ms ease-in-out");
        }
    });
});
