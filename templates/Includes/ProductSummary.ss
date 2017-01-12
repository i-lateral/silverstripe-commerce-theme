<div class="panel panel-default">
    <div class="panel-body">
        <p class="product-image">
            <a href="$Link">
                <img class="img-responsive" src="$SortedImages.First.CroppedImage(400,400).URL" alt="$Title">
            </a>
        </p>

        <p class="h3 product-title text-center"><a href="$Link">$Title</a></p>
        
        <p class="h3 product-price text-center">
            <span class="price big">                            
                <% if $IncludesTax %>
                    {$PriceAndTax.nice}
                <% else %>
                    {$Price.nice}
                <% end_if %>
            </span>                
            <% if TaxString %>
                <br />
                <small class="tax"> 
                    {$TaxString}
                </small>
            <% end_if %>
        </p>
    </div>
    <a class="btn btn-primary btn-block" href="$Link">View</a>
</div>