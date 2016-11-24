<footer role="contentinfo" class="footer">
    <div class="container">
        <div class="row">
        	<nav class="col-sm-3">
                <h3>More info</h3>
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
                <h3>Contact us</h3>
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
                <h3>My account</h3>
                <nav class="nav secondary">
                    <ul class="nav nav-pills nav-stacked">
                        <% loop $AccountMenu %>
                            <li>
                                <a href="$Link" class="$LinkingMode">
                                    <span class="text">$Title</span>
                                </a>
                            </li>
                        <% end_loop %>
                    </ul>
                </nav>
        	</div>
        </div>
    </div>
    <hr />
    <div class="container text-center">
        <p>This site uses cookies, by continuing to use the site you are agreeing to our use of cookies. | &copy; Copyright {$SiteConfig.Copyright('2016')} {$SiteConfig.Title}. All rights reserved.</p>
        <!--<p>Site built and maintained by <a href="http://www.ilateral.co.uk" target="_blank">ilateral</a>.</p>-->
        <p><img class="img-responsive payment-providers" src="{$ThemeDir}/images/card-logos-new-small.png" alt="payment providers"></p>
    </div>
</footer>
