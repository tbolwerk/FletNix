<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: twanb
  Date: 30-Jun-18
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>FletNix</title>
    <link rel="stylesheet" href="style/style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style/search_overlay.css"/>
    <meta name="description" content="FletNix online video streaming service"/>
    <meta name="keywords" content="FletNix,NetFlix,Video,Streaming"/>
    <meta name="author" content="Twan Bolwerk"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
<div class="header">
    <div class="topnav" id="myTopnav">
        <a href="index.xhtml" class="active">Home</a>
        <a href="#new">New</a>
        <a href="overviewservlet">Overview</a>
        <a href="#populair">Populair</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <div class="usernav">
        <a href="#"><span><i class="fas fa-user"></i>Sign Up</span></a>
        <a href="#"><span><i class="fas fa-sign-in-alt"></i>Login</span></a>

    </div>
</div>
<div id="search_overlay" class="search_overlay">
    <form class="search_overlay-form">
        <input class="search_overlay-input" type="search" id="key" placeholder="Search..." onkeyup="searchInfo()"/>

    </form>
    <div class="search_overlay-content">
        <div class="dummy-column">
            <h2>Movies</h2>
        <div id="livesearch"></div>
        </div>
        <div class="dummy-column">
            <h2>Popular</h2>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/08/05/page-preloading-effect/">
                <img src="img/thumbs/PagePreloadingEffect.png" alt="PagePreloadingEffect"/>
                <h3>Page Preloading Effect</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/05/28/arrow-navigation-styles/">
                <img src="img/thumbs/ArrowNavigationStyles.png" alt="ArrowNavigationStyles"/>
                <h3>Arrow Navigation Styles</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/06/19/ideas-for-subtle-hover-effects/">
                <img src="img/thumbs/HoverEffectsIdeasNew.png" alt="HoverEffectsIdeasNew"/>
                <h3>Ideas for Subtle Hover Effects</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/07/14/freebie-halcyon-days-one-page-website-template/">
                <img src="img/thumbs/FreebieHalcyonDays.png" alt="FreebieHalcyonDays"/>
                <h3>Halcyon Days Template</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/05/22/inspiration-for-article-intro-effects/">
                <img src="img/thumbs/ArticleIntroEffects.png" alt="ArticleIntroEffects"/>
                <h3>Inspiration for Article Intro Effects</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/06/26/draggable-dual-view-slideshow/">
                <img src="img/thumbs/DraggableDualViewSlideshow.png" alt="DraggableDualViewSlideshow"/>
                <h3>Draggable Dual-View Slideshow</h3>
            </a>
        </div>
        <div class="dummy-column">
            <h2>New</h2>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/10/07/tooltip-styles-inspiration/">
                <img src="img/thumbs/TooltipStylesInspiration.png" alt="TooltipStylesInspiration"/>
                <h3>Tooltip Styles Inspiration</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/09/23/animated-background-headers/">
                <img src="img/thumbs/AnimatedHeaderBackgrounds.png" alt="AnimatedHeaderBackgrounds"/>
                <h3>Animated Background Headers</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/09/16/off-canvas-menu-effects/">
                <img src="img/thumbs/OffCanvas.png" alt="OffCanvas"/>
                <h3>Off-Canvas Menu Effects</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/09/02/tab-styles-inspiration/">
                <img src="img/thumbs/TabStyles.png" alt="TabStyles"/>
                <h3>Tab Styles Inspiration</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/08/19/making-svgs-responsive-with-css/">
                <img src="img/thumbs/ResponsiveSVGs.png" alt="ResponsiveSVGs"/>
                <h3>Make SVGs Responsive with CSS</h3>
            </a>
            <a class="dummy-media-object" href="http://tympanus.net/codrops/2014/07/23/notification-styles-inspiration/">
                <img src="img/thumbs/NotificationStyles.png" alt="NotificationStyles"/>
                <h3>Notification Styles Inspiration</h3>
            </a>
        </div>
    </div><!-- /morphsearch-content -->
    <span class="search_overlay-close"></span>
</div><!-- /morphsearch -->
</body>
</html>
