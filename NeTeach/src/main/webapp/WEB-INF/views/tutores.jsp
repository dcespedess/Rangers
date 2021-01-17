<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/script.js"></script>

<title>NETeach</title>
</head>

<body>
	<div class="navbar" id="minavbar">
        <div class="espacio"></div>
        <div class="navelem">
            <a href="/" >Home</a>
            <a href="/tutores" class="activo">Tutores</a>
            <a href="/registro" >Registro</a>
            <a href="/testimonios" >Testimonios</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>     
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