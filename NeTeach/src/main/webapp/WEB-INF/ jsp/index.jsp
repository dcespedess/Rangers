<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/script.js"></script>
<title>NETeach</title>
</head>
<body>
    <div class="navbar" id="navbar">
        <a href="/index" class="activo">Home</a>
        <a href="/tutores">Tutores</a>
        <a href="/registro">Registro</a>
        <a href="/testimonios">Testimonios</a>
        <a href="javascript:void(0);" class="mini" onclick="myFunction()">
            <i class="fa fa-bars"></i>
          </a>
    </div>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
      
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="img1.jpg" alt="Imagen 1">
          </div>
      
          <div class="item">
            <img src="img2.jpg" alt="Imagen 2">
          </div>
      
          <div class="item">
            <img src="img3.jpg" alt="Imagen 3">
          </div>
        </div>
      
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>

-navbar
-carrusel
-descripcion
-contacto
-footer


</body>
</html>