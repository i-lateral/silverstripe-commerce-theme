<div class="unit-25 unit size1of4 col-sm-3 catalogue-list-child">
    <div class="panel panel-default">
        <div class="panel-body">
            <p><a href="$Link"><img class="img-responsive" src="$SortedImages.First.CroppedImage(400,400).URL" alt="$Title"></a></p>
            <h3><a href="$Link">$Title</a></h3>
            <p>$Content.Summary(30,0)</p>
            <p class="h3">
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
    </div>
</div>