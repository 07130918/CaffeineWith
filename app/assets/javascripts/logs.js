$(document).on('turbolinks:load', function() {
    $('.button').click(function() {
        $('.wrapper').hide()
        $('.select').show()
    });
});