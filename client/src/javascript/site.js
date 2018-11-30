/* Global Site Scripts */

jQuery(document).ready(function($) {

    $('#mobiletoggler').on('click', function() {
       $(this).toggleClass('is-active');
       $('#navbarNav').toggleClass('visible');
    });

    $('main').css('padding-top', $('header').height());

});
