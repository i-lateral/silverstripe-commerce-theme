<div class="unit-25 unit size1of4 col-sm-3 catalogue-list-child">
    <div class="panel panel-default">
        <div class="panel-body">
            <p class="product-image"><a href="$Link"><img class="img-responsive" src="$SortedImages.First.CroppedImage(400,400).URL" alt="$Title"></a></p>
            <h3 class="product-title"><a href="$Link">$Title</a></h3>
            <p class="product-summary">$Content.Summary(30,0)</p>
            <p class="h3 product-price text-center">
                <span class="price label label-green label-success big">                            
                    <% if $IncludesTax %>
                        {$PriceAndTax.nice}
                    <% else %>
                        {$Price.nice}
                    <% end_if %>
                </span>
                
                <% if TaxString %>
                    <small class="tax"> 
                        &nbsp;{$TaxString}
                    </small>
                <% end_if %>
            </p>
        </div>
        <a class="btn btn-primary btn-block" href="$Link">View</a>
    </div>
</div>