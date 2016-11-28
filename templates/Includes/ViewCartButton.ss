<a id="cart-button" href="$Link" data-toggle="dropdown" data-target="#" role="button" aria-haspopup="true" aria-expanded="false">
    <%t Checkout.ViewCart "View Cart" %> - {$TotalCost.Nice}
    <span class="caret"></span>
</a>
<div id="cart-summary" class="cart-summary dropdown-menu" aria-labelledby="cart-button">
    <% if $Items.Exists %>
        <div>
            <% loop $Items %>
                <div class="row">
                    <div class="col-xs-3">$Image.CroppedImage(45,45)</div>
                    <div class="col-xs-9">
                        <h3 class="h4">$Title</h3>
                        <p>$Quantity x $Price.Nice</p>
                    </div>
                </div>
            <% end_loop %>
            <p class="lead text-center">
                Total: &nbsp;
                <strong>{$TotalCost.Nice}</strong>
            </p>
        </div>
    <% else %>
        <p>
            <strong>
                <%t Checkout.CartIsEmpty 'Your cart is currently empty' %>
            </strong>
        </p>
    <% end_if %>
    <p class="cart-btn"><a class="btn btn-primary btn-block" href="$Link">
        <%t Checkout.ViewCart "View Cart" %>
    </a></p>	
</div>