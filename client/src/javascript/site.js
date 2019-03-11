/* Global Site Scripts */

jQuery(document).ready(function($) {

    $('#mobiletoggler').on('click', function() {
       $(this).toggleClass('is-active');
       $('#navbarNav').toggleClass('visible');
    });
});

window.onload = function() {
    $('main').css('padding-top', $('header').height());
};
