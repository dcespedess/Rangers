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
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/script.js"></script>

<title>NETeach</title>
</head>
<body>
	<div class="navbar" id="minavbar">
        <div class="espacio"></div>
        <div class="navelem">
            <a href="/" >Home</a>
            <a href="/tutores">Tutores</a>
            <a href="/registro" class="activo">Registro</a>
            <a href="/testimonios">Testimonios</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>     
    </div>

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
				<form:input path="edad" class="span3" placeholder="Tï¿½ edad"
					type="number" required="" />
				<form:errors path="edad"></form:errors>
				<form:label path="celular">Celular </form:label>
				<form:input path="celular" class="span3" type="number" required="" />
				<form:errors path="celular"></form:errors>
				<form:label path="correo">Correo Electrï¿½nico</form:label>
				<form:input path="correo" class="span3"
					type="email" required="" />
				<form:errors path="correo"></form:errors>
				<form:radiobutton path="sexo" value="hombre" required="" />
				Hombre
				<form:radiobutton path="sexo" value="mujer" required="" />
				Mujer
				<form:errors path="sexo"></form:errors>
				<form:label path=""></form:label>
				<form:label path="materia">Materia/ï¿½rea</form:label>
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
					Mï¿½sica
					</form:select>
				<form:errors path="materia"></form:errors>
			</div>

			<div class="span5">
				<form:label path="descUsuario">Reseï¿½a</form:label>
				<form:textarea path="descUsuario" class="input-xlarge span5"
					id="message" name="message" rows="10" required="" />
				<form:errors path="descUsuario"></form:errors>


				<form:button class="btn btn-primary" type="submit">Enviar</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>