(function($) {
    // Back-to-Top button
    $(document).ready(function() {
        $('.panel').matchHeight();

        $('#back-to-top a').click(function(){
            $('html, body').animate( { scrollTop: 0 } );
            return false;
        });
    });
}(jQuery));