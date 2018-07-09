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
        <a href="index.html" >Home</a>
        <a href="#new">New</a>
        <a href="overviewservlet" class="active">Overview</a>
        <a href="#populair">Populair</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>



    <div class="usernav">
        <%
            if(session.getAttribute("user") == null){

        %>

        <a href="#"><span><i class="fas fa-user"></i>Sign Up</span></a>
        <a href="#"><span><i class="fas fa-sign-in-alt"></i>Login</span></a>
     <% }else{ %> <a href="#"><span><i class="fas fa-user"></i><%=(String)session.getAttribute("user") %></span></a> <% }%>
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
            <div id="livesearch"></div>
        </div>
        <div class="dummy-column">
            <h2>New</h2>
            <div id="livesearch"></div>
        </div>
    </div><!-- /morphsearch-content -->
    <span class="search_overlay-close"></span>
</div><!-- /morphsearch -->
</body>
</html>
