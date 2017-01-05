<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	$MetaTags(false)
    <!-- Place favicon.ico and apple-touch-icon.png in the root of your domain and delete these references -->
    <link rel="shortcut icon" href="{$ThemeDir}/icons/favicon.ico">
	<meta property="og:title" content="{$Title}" />
	
	<% if $SiteConfig.Title %>
		<meta property="og:site_name" content="{$SiteConfig.Title}"/>
	<% end_if %>
	
	<% if $Content %>
		<meta property="og:description" content="{$Content.FirstParagraph}" />
	<% end_if %>
	
	<% if $AbsoluteLink %>
		<meta property="og:url" content="{$AbsoluteLink}" />
	<% end_if %>
	
	<% if $SummaryImage %>
		<meta property="og:image" content="{$BaseHref}{$SummaryImage.SetWidth(550).FileName}" />
	<% else_if $Image %>
		<meta property="og:image" content="{$BaseHref}{$Image.SetWidth(550).FileName}" />
	<% else_if $Images.exists %>
		<meta property="og:image" content="{$BaseHref}{$Images.first.SetWidth(550).FileName}" />
	<% else_if $Parent.SummaryImage %>
		<meta property="og:image" content="{$BaseHref}{$Parent.SummaryImage.SetWidth(550).FileName}" />
	<% else_if $SiteConfig.Logo %>
		<meta property="og:image" content="{$BaseHref}{$SiteConfig.Logo.SetWidth(550).FileName}" />
	<% end_if %>

	<link rel="icon" sizes="16x16" href="{$ThemeDir}/icons/icon-16.png" />
	<link rel="icon" sizes="32x32" href="{$ThemeDir}/icons/icon-32.png" />
	<link rel="icon" sizes="48x48" href="{$ThemeDir}/icons/icon-48.png" />
	<link rel="icon" sizes="64x64" href="{$ThemeDir}/icons/icon-64.png" />
	<link rel="icon" sizes="128x128" href="{$ThemeDir}/icons/icon-128.png" />
	<link rel="icon" sizes="196x196" href="{$ThemeDir}/icons/icon-196.png" />

	<link rel="apple-touch-icon" href="{$ThemeDir}/icons/icon-60.png" />
	<link rel="apple-touch-icon" sizes="76x76" href="{$ThemeDir}/icons/icon-76.png">
	<link rel="apple-touch-icon" sizes="120x120" href="{$ThemeDir}/icons/icon-120.png">
	<link rel="apple-touch-icon" sizes="152x152" href="{$ThemeDir}/icons/icon-152.png">
    <script>
    themedir = '{$ThemeDir}';
    </script>

	$LoadThemeAssets

	<% require themedCSS("site") %>

	<% require javascript("themes/bootstrap-commerce/javascript/libs.js") %>
	<% require javascript("themes/bootstrap-commerce/bower_components/matchheight/dist/jquery.matchHeight-min.js") %>
	<% require javascript("themes/bootstrap-commerce/bower_components/bootstrap/dist/js/bootstrap.min.js") %>
	<% require javascript("themes/bootstrap-commerce/javascript/main.js") %>

    <script src="{$ThemeDir}/bower_components/modernizr/modernizr.js"></script>
</head>
<body id="$ClassName">
<% include Header %>

<!--[if lt IE 8]>
<div class="container chromeframe">
    <div class="row">
        <div class="col-lg-12">
    		<div class="alert alert-error">
    		  You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
    		</div>
        </div>
    </div>
</div>
<![endif]-->

$Layout

<% include Footer %>

<div id="back-to-top" data-spy="affix" data-offset-top="100"><a href="#" class="btn btn-default"><i class="fa fa-chevron-up"><span class="hide">Back to Top</span></i></a></div>

</body>
</html>
