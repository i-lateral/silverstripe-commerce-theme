<div class="container main">
    <div class="row">
        <% if $Menu(2) %>
            <aside class="col-lg-4 col-lg-push-8" role="complementary">
                <% include SideBar %>
            </aside>
        <% end_if %>
        <div class="<% if $Menu(2) %>col-lg-8 col-lg-pull-4<% else %>col-xs-12<% end_if %> content" role="main">
        	<h1>$Title</h1>
        	$Content
            $Form
        	$PageComments
        </div>
    </div>
</div>