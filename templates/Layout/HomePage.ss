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
                <% loop $FeaturedProducts.sort('FeatureSort','ASC') %>
                    <% include ProductSummary %>
                <% end_loop%>
            </div>
        <% end_if %>
    </div>
</div>