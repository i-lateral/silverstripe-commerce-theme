<div class="catalogue-content-container container catalogue-product typography">
    $SessionMessage

    <p>$Breadcrumbs</p>

    <h1>$Title</h1>

    <div class="units-row row line">
        <div class="unit-50 unit size1of2 col-xs-12 col-sm-6 catalogue-product-images">
            <div id="catalogue-product-image">
                <a href="#" data-toggle="modal" data-target="#CarouselModal">
                    <img class="img-responsive" src="$ProductImage.PaddedImage(600,600).URL" alt="$ProductImage.Title">
                </a>
            </div>

            <div class="units-row-end">
                <% if $Images.exists %>
                    <div class="thumbs">
                        <% loop $SortedImages %>
                            <div class="thumb">
                                <a href="{$Top.Link('iid')}/$ID#catalogue-product-image">
                                    <img class="img-responsive" src="$PaddedImage(75,75).URL" alt="$PaddedImage(75,75).Title">
                                </a>
                            </div>
                        <% end_loop %>
                    </div>
                    <div class="modal fade" id="CarouselModal" tabindex="-1" role="dialog">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                </div>
                                <div class="modal-body">
                                    <div id="carousel-product-images" class="carousel slide">
                                        <!-- Indicators -->
                                        <ol class="carousel-indicators">
                                            <% loop $SortedImages %>
                                                <li data-target="#carousel-product-images" data-slide-to="$Pos(0)"<% if $ID == $Up.ProductImage.ID %> class="active"<% end_if %>></li>
                                            <% end_loop %>
                                        </ol>

                                        <!-- Wrapper for slides -->
                                        <div class="carousel-inner" role="listbox">
                                            <% loop $SortedImages %>
                                                <div class="item<% if $ID == $Up.ProductImage.ID %> active<% end_if %>">
                                                    <img src="$SetRatioSize(900,900).URL" alt="$Title">
                                                    <div class="carousel-caption">
                                                        $Title
                                                    </div>
                                                </div>
                                            <% end_loop %>
                                        </div>

                                        <!-- Controls -->
                                        <a class="left carousel-control" href="#carousel-product-images" role="button" data-slide="prev">
                                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control" href="#carousel-product-images" role="button" data-slide="next">
                                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->
                <% end_if %>
            </div>
        </div>
        <div class="unit-50 unit size1of2 col-xs-12 col-sm-6 catalogue-product-summary">
            <p class="h3">
                <span class="price label big label-green label-success">
                    <span class="title"><%t Catalogue.Price "Price" %>:</span>
                    <span class="value">
                        <% if $IncludesTax %>
                            {$PriceAndTax.nice}
                        <% else %>
                            {$Price.nice}
                        <% end_if %>
                    </span>
                </span>
                <small class="tax"> 
                    <% if TaxString %>
                        <span class="tax"> 
                            &nbsp;{$TaxString}
                        </span>
                    <% end_if %>
                </small>
            </p>

            <div class="content">
                $Content
            </div>
            
            <div class="form">
                $Form
            </div>
        </div>
    </div>

    <%-- Related Products: Only loaded when added through the CMS --%>
    <% if $SortedRelatedProducts.exists %>
        <hr/>

        <h2><%t Catalogue.RelatedProducts "Related Products" %></h2>

        <div class="units-row row catalogue-related-products line">
            <% loop $SortedRelatedProducts %>
                <% include ProductSummary %>

                <% if $MultipleOf(5) && not $Last %>
                    </div><div class="units-row row catalogue-related-products line">
                <% end_if %>
            <% end_loop %>
        </div>
    <% end_if %>
</div>

<% include SideBar %>
