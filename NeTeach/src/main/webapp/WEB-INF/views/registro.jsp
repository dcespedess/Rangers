<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/script.js"></script>
<link href="resources/css/style.css">


<!-- BootStrap 4 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>


<!-- css formulario -->

<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



<title>NETeach</title>
</head>
<body>

	<header>
		<div class="navbar" id="navbar">
			<a href="/">Home</a> <a href="/tutores">Tutores</a> <a
				href="/registro" class="activo">Registro</a> <a href="/testimonios">Testimonios</a>
		</div>
	</header>

	<div class="container">

		<form:form class="well span" action="agregarTutor" method="POST"
			modelAttribute="usuario">
			<div class="span3">

				<form:label path="nombre">Nombre</form:label>
				<form:input path="nombre" cssClass="span3" type="text" required="" />
				<form:errors path="nombre"></form:errors>
				<form:label path="apellido">Apellidos</form:label>
				<form:input path="apellido" class="span3"
					 type="text" required="" />
				<form:errors path="apellido"></form:errors>
				<form:label path="edad">Edad </form:label>
				<form:input path="edad" class="span3" placeholder="Tú edad"
					type="number" required="" />
				<form:errors path="edad"></form:errors>
				<form:label path="celular">Celular </form:label>
				<form:input path="celular" class="span3" type="number" required="" />
				<form:errors path="celular"></form:errors>
				<form:label path="correo">Correo Electrónico</form:label>
				<form:input path="correo" class="span3"
					type="email" required="" />
				<form:errors path="correo"></form:errors>
				<form:radiobutton path="sexo" value="hombre" required="" />
				Hombre
				<form:radiobutton path="sexo" value="mujer" required="" />
				Mujer
				<form:errors path="sexo"></form:errors>
				<form:label path=""></form:label>
				<form:label path="materia">Materia/Área</form:label>
				<form:select path="materia" class="span3" id="subject"
					name="subject">
					<form:option value="" />
					Escoge una materia

					<form:option value="matematicas" label="Matematicas" />
					Matematicas

					<form:option value="lenguaje" label="Lenguaje" />
					Lenguaje

					<form:option value="historia" label="Historia" />
					Historia
					<form:option value="musica" label="Musica" />
					Música
					</form:select>
				<form:errors path="materia"></form:errors>
			</div>

			<div class="span5">
				<form:label path="descUsuario">Reseña</form:label>
				<form:textarea path="descUsuario" class="input-xlarge span5"
					id="message" name="message" rows="10" required="" />
				<form:errors path="descUsuario"></form:errors>


				<form:button class="btn btn-primary" type="submit">Enviar</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>