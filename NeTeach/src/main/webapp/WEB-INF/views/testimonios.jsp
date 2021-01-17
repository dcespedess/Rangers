<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css"
	href="resources/css/testimonio.css">

<script type="text/javascript" src="resources/js/script.js"></script>

<title>NETeach</title>
</head>
<body>
	<div class="navbar" id="minavbar">
		<div class="espacio"></div>
		<div class="navelem">
			<a href="/">Home</a> <a href="/tutores">Tutores</a> <a
				href="/registro">Registro</a> <a href="/testimonios" class="activo">Testimonios</a>
			<a href="javascript:void(0);" class="icon" onclick="myFunction()">
				<i class="fa fa-bars"></i>
			</a>
		</div>
	</div>


	<div class="box">
		<a class="boton2" href="#popup1"  data-toggle="modal"
			data-target="#product_view">Dejanos tu testimonio</a>

	</div>

	<!-- Otro Pop Up -->

	<div class="modal fade product_view" id="product_view">
		<div class="modal-dialog">
			<div class="modal-content" style="border: none;">
				<div class="modal-header" style="background: rgb(2,0,36);
	background: linear-gradient(137deg, rgba(2,0,36,1) 0%, rgba(57,6,88,1) 66%, rgba(35,72,150,1) 100%);">
				<h3 class="modal-title" >Deja tu testimonio</h3>
					<a href="#" data-dismiss="modal" class="class pull-left"><span
						class="btn btn-outline-danger">Cerrar</span></a>
					
				</div>
				<form:form class="formTest" action="agregarTestimonio" method="POST"
					modelAttribute="testimonio">
					<div class="modal-body" style=" border: none; background: rgb(123, 123, 127); background: linear-gradient(0deg, rgba(123, 123, 127, 1) 0%, rgba(143, 143, 142, 1) 100%);">
						
						<div class="row">

							<div class="col-md-12 product_content">
								

								<form:label path="nombretes">Nombre</form:label>
								<form:input path="nombretes" class="form-control" type="text"
									required="" placeholder="Ingresa tu nombre" />
								<form:errors path="nombretes"></form:errors>
								<br>

								<form:label path="edadtes">Edad</form:label>
								<form:input path="edadtes" class="form-control" type="number"
									required="" placeholder="-" />
								<form:errors path="edadtes"></form:errors>
								<br>

								<form:label path="desctes">Testimonio </form:label>
								<form:textarea path="desctes"
									placeholder="Máximo 100 caracteres" class="form-control"
									type="text" required="" />
								<form:errors path="desctes"></form:errors>
								<br>
								<div class="space-ten"></div>
								<div class="btn-ground">
								<form:button class="btn btn-success btn-block" type="submit">Enviar</form:button></div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- testimonios -->
	<div class="row">
		<c:forEach items="${testimonios}" var="test">
			<div class="flip-card row">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img
							src="https://iseo.edu.mx/img/egreso.png"
							alt="Avatar" style="width: 200px; height: 200px;">
						<h4>${test.nombretes}</h4>
						<p>Edad: ${test.edadtes}</p>
					</div>
					<div class="flip-card-back ">
						<p hidden="${test.id}">
						<hr>
						<h5>Testimonio</h5>
						<hr>
						<p>${test.desctes}</p>
					</div>
				</div>
			</div>


		</c:forEach>
	</div>

</body>
</html>