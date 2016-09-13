<!doctype html>
<html lang="$ContentLocale">
<head>
<% base_tag %>

<!-- Load fonts first (development mode) -->
<link rel="stylesheet" type="text/css" href="//cloud.typography.com/6385092/743224/css/fonts.css" />
<link rel="stylesheet" type="text/css" href="/$ThemeDir/css/fonts.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta charset="UTF-8">
<title>$Title</title>

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

</head>

<body class="iframe">
<% include GoogleTagManager %>

<!-- START main content -->
<div class="page-maincontent" id="content">
  <div class="page-wrapper"> 
    
    <!-- START content -->
    <div class="content-wrapper"> 
    <h1>$Title</h1>
    $Introduction
    $Content      
    </div>
    <!-- END content -->
   
  </div>
</div>
<!-- END main content -->

<!-- Google Analytics --><!--
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-3097719-2', 'auto');  // Replace with your property ID.
ga('send', 'pageview');
</script>-->
<!-- End Google Analytics -->

</body>
</html>
