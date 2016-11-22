<ul class="nav nav-pills">
    <% loop $CustomMenu('main-menu') %>
        <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
    <% end_loop %>
    <li><% with $ShoppingCart %><% include ViewCartButton %><% end_with %></li>
</ul>