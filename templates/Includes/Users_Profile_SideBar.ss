<aside class="users-sidebar col-xs-12 col-sm-4 unit-25 unit size1of4">
    <nav class="nav secondary">
        <ul c;ass="nav nav-pills nav-stacked">
            <% loop $AccountMenu %>
                <li>
                    <a href="$Link" class="$LinkingMode">
                        <span class="text">$Title</span>
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </nav>
</aside>
