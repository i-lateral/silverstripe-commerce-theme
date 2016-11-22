<footer role="contentinfo" class="footer">
    <div class="container">
        <div class="row">
        	<nav class="col-sm-3">
                <ul class="nav nav-pills nav-stacked">
                    <% loop $CustomMenu('footer-menu') %>
                        <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                    <% end_loop %>
                </ul>
        	</nav>        	
            <div class="col-sm-3">
                $SiteConfig.FooterContent
        	</div>        	
            <div class="col-sm-3">
                <% if $SiteConfig.ContactPage %>
                    <% with $SiteConfig.ContactPage %>
                        <p>
                            <% if $Address %>
                                $Address<br />
                            <% end_if %>
                            <% if $PhoneNumber %>
                                $PhoneNumber<br />
                            <% end_if %>
                            <% if $Email %>
                                <a href="mailto:{$Email}">$Email</a>
                            <% end_if %>
                        </p>
                    <% end_with %>
                <% end_if %>
                $SocialNav.Rendered
        	</div>        	
            <div class="col-sm-3">
        		<p>This site uses cookies, by continuing to use the site you are agreeing to our use of cookies. | &copy; Copyright {$SiteConfig.Copyright('2016')} {$SiteConfig.Title}. All rights reserved.</p>
                <img class="img-responsive payment-providers" src="{$ThemeDir}/images/card-logos-new-small.png" alt="payment providers">
            </div>
        </div>
    </div>
</footer>
