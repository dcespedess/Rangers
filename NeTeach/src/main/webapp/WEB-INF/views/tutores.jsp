<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="resources/css/style.css">

<title>NETeach</title>
</head>
<body>
	<div class="navbar" id="navbar">
		<a href="/">Home</a> <a href="/tutores" class="activo">Tutores</a> <a
			href="/registro">Registro</a> <a href="/testimonios">Testimonios</a>
		<a href="javascript:void(0);" class="mini" onclick="myFunction()">
			<i class="fa fa-bars"></i>
		</a>
	</div>
	
 <a  href="buscarNombre">Ordenar por Nombre</a>
 <a  href="buscarApellido">Ordenar por Apellido</a>
 <a  href="buscarEdad">Ordenar por Edad</a>
 <a  href="buscarSexo">Ordenar por Sexo</a> <br><br>
 
 
 <p>Filtrar por Materia</p>
 <form action="buscarArea" method="post">
<select id="materia" name="materia">
<option value="" selected>Escoja una opcion</option>
  <option value="matematicas">Matematicas</option>
  <option value="lenguaje">Lenguaje</option>
  <option value="historia">Historia</option>
  <option value="musica">Musica</option>
</select>
<input type="submit" value="Filtrar">
</form><br><br>


<p>Filtrar por sexo</p>
 <form action="buscarSexo" method="post">
<select id="sexo" name="sexo">
<option value="" selected>Escoja una opcion</option>
  <option value="mujer">Mujer</option>
  <option value="hombre">Hombre</option>
</select>
<input type="submit" value="Filtrar">
</form>

	<c:forEach items="${usuarios}" var="t">
		<div class="card card-group">
			<div class="card-body text-center">
				<p hidden="${t.id}">
				<p>${t.nombre}</p>
				<p>${t.apellido}</p>
				<p>${t.materia}</p>
				<p>${t.edad}</p>
				<p>${t.correo}</p>
				<p>${t.celular}</p>
				<p>${t.sexo}</p>
				<p>${t.descUsuario}</p>
			</div>
		</div>
		
	</c:forEach>


</body>
</html>