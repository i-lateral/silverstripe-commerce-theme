<div class="container">
    <div class="row">
        <% include SideBar %>

        <div class="catalogue-content-container typography <% if $Menu(2) %>unit size3of4 unit-75 col-md-9 <% end_if %> col-xs-12">
            <% if Level(2) %><p>$Breadcrumbs</p><% end_if %>

            <h1>$Title</h1>

            <div class="units-row catalogue-list">
                <% if $EnabledChildren.exists %>
                    <p>
                        <strong><%t Catalogue.FilterBy "Filter by" %>:</strong>
                        <% loop $EnabledChildren %>
                            <span class="link"><a href="$Link">$Title</a></span>
                            <% if not $Last %>|<% end_if %>
                        <% end_loop %>
                    </p>
                <% end_if %>
            </div>

            <% if $PaginatedAllProducts(8).exists %>
                <div class="units-row row line catalogue-list">
                    <% loop $PaginatedAllProducts(8) %>
                        <div class="unit-25 unit size1of4 col-sm-3 catalogue-list-child">
                            <p><a href="$Link"><img class="img-responsive" src="$SortedImages.First.CroppedImage(400,400).URL" alt="$Title"></a></p>
                            <h2><a href="$Link">$Title</a></h2>
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

                        <% if $MultipleOf(4) %></div><div class="units-row line catalogue-list"><% end_if %>
                    <% end_loop %>
                </div>

                <% with $PaginatedAllProducts(8) %>
                    <% if $MoreThanOnePage %>
                        <ul class="pagination line">
                            <% if $NotFirstPage %>
                                <li class="prev unit">
                                    <a class="prev" href="$PrevLink">Prev</a>
                                </li>
                            <% end_if %>

                            <% loop $Pages %>
                                <% if $CurrentBool %>
                                    <li class="unit"><span>$PageNum</span></li>
                                <% else %>
                                    <% if $Link %>
                                        <li class="unit"><a href="$Link">$PageNum</a></li>
                                    <% else %>
                                        <li class="unit">...</li>
                                    <% end_if %>
                                <% end_if %>
                            <% end_loop %>

                            <% if $NotLastPage %>
                                <li class="unit next">
                                    <a class="next" href="$NextLink">Next</a>
                                </li>
                            <% end_if %>
                        </ul>
                    <% end_if %>
                <% end_with %>

            <% end_if %>
        </div>
    </div>
</div>