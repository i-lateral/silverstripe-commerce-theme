<div class="container main">
    <div class="content" role="main">
        <h1>$Title</h1>
        $CarouselSlides
        $Content
        $Form
        $PageComments
        <% if $FeaturedProducts.exists %>
            <h2>FeaturedProducts</h2>
            <div class="related-products row">
                <% loop $FeaturedProducts.sort('FeatureSort','ASC') %>
                    <% include ProductSummary %>
                <% end_loop%>
            </div>
        <% end_if %>
    </div>
</div>