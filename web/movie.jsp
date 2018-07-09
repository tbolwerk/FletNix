<%--
  Created by IntelliJ IDEA.
  User: twanb
  Date: 09-Jul-18
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie</title>
    <link rel="stylesheet" href="style/movie.css"/>
</head>
<body>

<header class="spotHeader">

    <div class="spotBg" style="background-image: url('img/posters/<%=session.getAttribute("cover_image")%>')">
        <div></div>
    </div>
    <div class="spotPlay fletAlignLeft">
        <a href="#" class="buttonDark"><i class="fa fa-play" aria-hidden="true"></i>Play</a>
    </div>
    <div class="spotInfo flexAlignRight">
        <div class="spotDetails">
            <h2><%=session.getAttribute("title")%></h2>
            <span>1999</span>
            <div class="spotRating">
                <i class="fa fa-star checked"></i>
                <i class="fa fa-star checked"></i>
                <i class="fa fa-star checked"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <span class="spotTime">
              2u 2m            </span>
            </div>
            <p class="spotPadding"><%=session.getAttribute("description")%></p>
            <div class="spotCast spotPadding">
                <p><b>Film regisseurs:</b>
                    Lana Wachowski, Lilly Wachowski            </p>
                <p><b>Hoofdrolspelers:</b>
                    Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss            </p>
                <p><b>Genres:</b> Actie, SciFi</p>
            </div>
        </div>
        <div class="spotButtons spotPadding">
            <div class="spotButton buttonTrans spotButtonTrailer">
                <span>Trailer</span><i class="fa fa-play" aria-hidden="true"></i>
                <input id="spotPlayTrailer" name="spotPlayTrailer" type="checkbox">
                <label for="spotPlayTrailer" class="boxHidden"></label>
                <div class="spotBoxTrailer boxHidden dFLex">
                    <div class="spotTrailer">
                        <iframe src="https://www.youtube.com/embed/vKQi3bBA1y8" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>              </div>
                </div>
            </div>
            <a class="spotButton buttonTrans" href="#"><span>Watch Later</span><i class="fa fa-plus" aria-hidden="true"></i></a>
        </div>
    </div>
</header>

</body>
</html>
