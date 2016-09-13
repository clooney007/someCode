<!DOCTYPE html>
<!--[if lt IE 9 ]><html lang="$ContentLocale" class="lt-ie9"><![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html lang="$ContentLocale"><!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<% base_tag %>

<!-- Load fonts first (development mode) -->
<link rel="stylesheet" type="text/css" href="//cloud.typography.com/6385092/743224/css/fonts.css" />
<link rel="stylesheet" type="text/css" href="/$ThemeDir/css/fonts.css" />

<!-- Meta -->
<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
$MetaTags(false)

<!-- Facebook open graph -->
<meta property="og:title" content="<% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %>" />
<meta property="og:type" content="website" />
<meta property="og:description" content="$MetaDescription" />  
<meta property="og:url" content="$AbsoluteLink" />
<% if $OpenGraphImage %>
<meta property="og:image" content="$OpenGraphImage.CroppedImage(1280,722).AbsoluteURL" />
<% end_if %>
<meta property="og:site_name" content="$SiteConfig.Title - $SiteConfig.Tagline" /> 

<!-- Twitter Card data -->
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@BluebridgeFerry">
<meta name="twitter:title" content="$Title | $SiteConfig.Title">
<meta name="twitter:description" content="$MetaDescription">
<meta name="twitter:creator" content="@BluebridgeFerry">
<% if $OpenGraphImage %>
<meta name="twitter:image" content="$OpenGraphImage.CroppedImage(1280,722).AbsoluteURL"> 
<% end_if %>

<!-- Canonical Link -->

<!-- Icons -->
<link rel="shortcut icon" href="/$ThemeDir/images/icons/favicon/favicon.ico" type="image/vnd.microsoft.icon" />
<link rel="apple-touch-icon" sizes="57x57" href="/$ThemeDir/images/icons/favicon/bluebridge-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/$ThemeDir/images/icons/favicon/bluebridge-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/$ThemeDir/images/icons/favicon/bluebridge-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="/$ThemeDir/images/icons/favicon/bluebridge-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="/$ThemeDir/images/icons/favicon/bluebridge-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="/$ThemeDir/images/icons/favicon/bluebridge-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="/$ThemeDir/images/icons/favicon/bluebridge-144x144.png">
<link rel="icon" type="image/png" href="/$ThemeDir/images/icons/favicon/bluebridge-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="/$ThemeDir/images/icons/favicon/bluebridge-96x96.png" sizes="96x96">
<link rel="icon" type="image/png" href="/$ThemeDir/images/icons/favicon/bluebridge-16x16.png" sizes="16x16">
<meta name="msapplication-TileColor" content="#0f4455">
<meta name="msapplication-TileImage" content="/$ThemeDir/images/icons/favicon/bluebridge-144x144.png">

<!-- Styles -->
<link rel="stylesheet" href="/$ThemeDir/css/normalize.css" media="all" />
<link rel="stylesheet" href="/$ThemeDir/css/screen.css" media="all" />
<link rel="stylesheet" href="/$ThemeDir/css/screen-enhanced.css" media="only screen and (min-width:761px)" />
<link rel="stylesheet" href="/$ThemeDir/css/print.css" media="print" />
<link rel="stylesheet" href="/$ThemeDir/css/access.css" media="speech, braille, embossed" />
<!--[if IE 7]>
<link href="/$ThemeDir/css/screen-enhanced.css" rel="stylesheet" media="screen" />
<link href="/$ThemeDir/css/browser/ie7.css" rel="stylesheet" media="all" />
<script src="/$ThemeDir/javascript/plugins/json3-for-ie7.min.js"></script>
<![endif]-->
<!--[if IE 8]>
<link href="/$ThemeDir/css/screen-enhanced.css" rel="stylesheet" media="screen" />
<link href="/$ThemeDir/css/browser/ie8.css" rel="stylesheet" media="all" />
<![endif]-->
<!--[if IE 9]>
<link href="/$ThemeDir/css/screen-enhanced.css" rel="stylesheet" media="screen" />
<link href="/$ThemeDir/css/browser/ie9.css" rel="stylesheet" media="all" />
<![endif]-->
<!-- Scripts -->
<script src="/$ThemeDir/javascript/jquery-1.11.0.min.js"></script>
<script src="/$ThemeDir/javascript/jquery-ui-1.10.4.js"></script> 
<% if $ContentLocale != 'en-NZ' %>
  <script src="/$ThemeDir/javascript/jquery.ui.datepicker-$CurrentLocaleAlias\.js"></script>
<% end_if %>
<script src="/$ThemeDir/javascript/plugins/modernizr.custom.36411.js"></script>
<script src="/$ThemeDir/javascript/bluebridge-scripts-combined.min.js"></script>
<script src="/$ThemeDir/javascript/script.js"></script>
<script src="/$ThemeDir/javascript/luvly.js"></script>
</head>
<body class="$CurrentLocaleAlias">
<% include GoogleTagManager %>
<% include Header %>

$Layout

<% include SideBar %>
<% include Footer %>
</body>
</html>
