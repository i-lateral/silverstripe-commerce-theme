<div class="container main">
    <div class="content" role="main">
        $CarouselSlides

        <h1 class="text-center">$Title</h1>

        $Content
        $Form
        $PageComments

        <% if $FeaturedProducts.exists %>
            <h2 class="text-center">Featured Products</h2>

            <div class="related-products row">
                <% loop $FeaturedProducts.sort('Sort','ASC') %>
                    <div class="col-sm-3 catalogue-list-child">
                        <% include ProductSummary %>
                    </div>
                <% end_loop%>

                <% if $MultipleOf(4) && not $Last %>
                    </div><div class="related-products row">
                <% end_if %>
            </div>
        <% end_if %>

    </div>
</div>