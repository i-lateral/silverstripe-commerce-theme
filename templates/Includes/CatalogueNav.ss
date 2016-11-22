<ul class="nav navbar-nav">
    <% loop $Catalogue.Categories %>
        <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
    <% end_loop %>
</ul>