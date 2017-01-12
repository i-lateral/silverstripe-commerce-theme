<div class="container">
    <div class="row">
        <div class="catalogue-content-container typography col-xs-12">
            <% if Level(2) %><p>$Breadcrumbs</p><% end_if %>

            <h1>$Title</h1>

            <div class="catalogue-list">
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
                <div class="row line catalogue-list">
                    <% loop $PaginatedAllProducts(8) %>
                        <div class="col-sm-3 catalogue-list-child">
                            <% include ProductSummary %>
                        </div>

                        <% if $MultipleOf(4) %></div><div class="row catalogue-list"><% end_if %>
                    <% end_loop %>
                </div>

                <% with $PaginatedAllProducts(8) %>
                    <div class="text-center">
                        <% if $MoreThanOnePage %>
                            <ul class="pagination line">
                                <% if $NotFirstPage %>
                                    <li class="prev unit">
                                        <a class="prev" href="$PrevLink">Prev</a>
                                    </li>
                                <% end_if %>

                                <% loop $Pages %>
                                    <% if $CurrentBool %>
                                        <li class="unit active"><span>$PageNum</span></li>
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
                    </div>
                <% end_with %>

            <% end_if %>
        </div>
    </div>
</div>