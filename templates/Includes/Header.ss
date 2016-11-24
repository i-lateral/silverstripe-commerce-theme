<header class="header" role="banner">
  <div class="sub-header">
    <div class="container">
      <div class="row">
          <nav class="navbar navbar-small col-xs-12">
            <ul class="nav navbar-nav">
              <% if $SiteConfig.ContactPage %>
                <% with $SiteConfig.ContactPage %>
                  <% if $PhoneNumber %>
                    <li><span>$PhoneNumber</span></li>
                  <% end_if %>
                  <% if $Email %>
                    <li><a href="mailto:{$Email}">$Email</a></li>
                  <% end_if %>
                <% end_with %>
              <% end_if %>
            </ul>
            <% include Users_AccountNav %>
          </nav>
     </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <p class="h1">
          <a href="$BaseHref">
            <% if $SiteConfig.Logo %>
              <img class="img-responsive" src="$SiteConfig.Logo.setHeight(100).URL" alt="$SiteConfig.Title">
            <% else %>
              $SiteConfig.Title
            <% end_if %>
          </a>
        </p>
      </div>
      <div class="col-sm-8">
        <nav class="pull-right">
          <% include Navigation %>
        </nav><!--/.nav-collapse -->
      </div>
    </div>
    <div class="navbar navbar-default category-nav" id="CatNav">
      <div class="container">
        <div class="row">
        <p class="navbar-brand affix-only">
          <a href="$BaseHref">
            <% if $SiteConfig.Logo %>
              <img class="img-responsive" src="$SiteConfig.Logo.setHeight(50).URL" alt="$SiteConfig.Title">
            <% else %>
              $SiteConfig.Title
            <% end_if %>
          </a>
        </p>
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <nav class="nav navbar-nav navbar-collapse collapse" role="navigation">
            <% include CatalogueNav %>
          </nav><!--/.nav-collapse -->
        </div>
      </div>
    </div>
  </div>
</header>
