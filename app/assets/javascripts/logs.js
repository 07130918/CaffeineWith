$(document).on('turbolinks:load', function() {
    $('.button').click(function() {
        $('.wrapper').fadeOut()
        $('.select').fadeIn()
    });
    
});