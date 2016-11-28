(function($) {
    // Back-to-Top button
    $(document).ready(function() {
        $('.panel .product-image').matchHeight();
        $('.panel .product-title').matchHeight();
        $('.panel .product-summary').matchHeight();
        $('.panel').matchHeight();

        $('#back-to-top a').click(function(){
            $('html, body').animate( { scrollTop: 0 } );
            return false;
        });

        var offset = $('#CatNav').offset();

        $('#CatNav').affix({
        offset: {
            top: offset.top - 25,
            bottom: function () {
                return (this.bottom = $('.footer').outerHeight(true))
            }
        }
        })
    });
}(jQuery));