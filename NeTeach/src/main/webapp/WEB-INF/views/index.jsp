<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/script.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>NETeach</title>
</head>
<body>
	<div class="navbar" id="minavbar">
		<div class="espacio"></div>
		<div class="navelem">
			<a href="/" class="activo">Home</a> <a href="/tutores">Tutores</a> <a
				href="/registro">Registro</a> <a href="/testimonios">Testimonios</a>
			<a href="javascript:void(0);" class="icon" onclick="myFunction()">
				<i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://la.mathworks.com/campaigns/offers/deep-learning-vs-machine-learning-algorithm/_jcr_content/mainParsys2/image.adapt.full.high.jpg/1603814022623.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h1>Enseñamos ♥</h1>
					<p>Texto cualquiera aaa</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://miro.medium.com/max/3200/1*2T0Fl4mVQjUgIZ3CMjB5XQ.png"
					class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h1>Enseñamos ♥</h1>
					<p>Texto cualquiera aaa 2</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://i.pinimg.com/originals/fe/02/66/fe026605b330d36bc0ca511ab9d636ee.jpg"
					class="d-block w-100" alt="...">
				<div class="carousel-caption">
					<h1>Enseñamos ♥</h1>
					<p>Texto cualquiera aaa</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="descripcion">
		<h4>Nuestra mision es conectar a estudiantes o personas que
			necesiten reforzar y/o aprender una o más materias de estudios. Así
			también dar la oportunidad de que otras personas, profesores o estudiantes,
			compartan sus conocimientos a través de asesorias, pasantias o
			ejercicios de estudios para facilitar el aprendizaje de sus alumnos.
		</h4>
		<a class="boton" href="/registro">Inscribete!</a>
		
	</div>

	<!--  Linkedin y GitHub -->
	<div class="box">
	
		<div class="container">
		<h1>Contacta a los desarrolladores acá</h1>
		<br>
			<div class="row">

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">

						<i class="fa fa-linkedin fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>Angela Romero</h4>
						</div>

						<div class="text">
							<span>Desarrollador Full Stack Java.</span>
						</div>

						<a
							href="https://www.linkedin.com/in/angela-romero-ram%C3%ADrez-464481181/"><input
							class="btn btn-outline-info" value="Agregar"></a>

					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">

						<i class="fa fa-linkedin fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>Daniela Caicedo</h4>
						</div>

						<div class="text">
							<span>Desarrollador Full Stack Java.</span>
						</div>

						<a href="https://www.linkedin.com/in/nksg/"><input
							class="btn btn-outline-info" value="Agregar"></a>

					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">

						<i class="fa fa-linkedin fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>Daniel Céspedes</h4>
						</div>

						<div class="text">
							<span>Desarrollador Full Stack Java.</span>
						</div>

						<a href="https://www.linkedin.com/in/d-cespedes-f/"><input
							class="btn btn-outline-info" value="Agregar"></a>

					</div>
				</div>
				<br>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">
						<br> <i class="fa fa-github fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>angelar95</h4>
						</div>

						<div class="text">
							<span>Repositorio de trabajos.</span>
						</div>

						<a href="https://github.com/angelar95"><input type="button"
							class="btn btn-outline-success" value="Visitar"></a>

					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">
						<br> <i class="fa fa-github fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>nekosagi</h4>
						</div>

						<div class="text">
							<span>Repositorio de trabajos.</span>
						</div>

						<a href="https://github.com/nekosagi"><input type="button"
							class="btn btn-outline-success" value="Visitar"></a>

					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

					<div class="box-part text-center">
						<br> <i class="fa fa-github fa-3x" aria-hidden="true"></i>

						<div class="title">
							<h4>dcespedess</h4>
						</div>

						<div class="text">
							<span>Repositorio de trabajos.</span>
						</div>

						<a href="https://github.com/dcespedess"><input type="button"
							class="btn btn-outline-success" value="Visitar"></a>

					</div>
				</div>

			</div>
		</div>
	</div>
	<br>
	<div class="footer">
		<p>Sitio creado por Daniel Cespedes & Angela Romero & Daniela
			Caicedo</p>
	</div>


</body>
</html>