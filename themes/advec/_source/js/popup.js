$(document).ready(function() {
    $(".btn__popup--deposito").on( "click", function() {
        $.sweetModal({
            title: 'HTML Content',
            content: 'You can place <b>anything</b> <i>you</i> want in here.'
        });
    });
});