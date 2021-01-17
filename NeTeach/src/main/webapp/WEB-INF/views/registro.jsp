<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>NETeach</title>
</head>
<body>
	<div class="navbar" id="minavbar">
		<div class="espacio"></div>
		<div class="navelem">
			<a href="/">Home</a> <a href="/tutores">Tutores</a> <a
				href="/registro" class="activo">Registro</a> <a href="/testimonios">Testimonios</a>
			<a href="javascript:void(0);" class="icon" onclick="myFunction()">
				<i class="fa fa-bars"></i>
			</a>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row centered-form justify-content-center">
			<div
				class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							Registrate como Tutor y ayudamos a crecer esta nueva
			comunidad
						</h3>
					</div>
					<div class="panel-body">
						<form:form action="agregarTutor" method="POST"
							modelAttribute="usuario">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<form:label path="nombre">Nombre</form:label>
										<form:input path="nombre" class="form-control input-sm"
											type="text" required="nombre" />
										<form:errors path="nombre"></form:errors>

									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<form:label path="apellido">Apellidos</form:label>
										<form:input path="apellido" class="form-control input-sm"
											type="text" required="apellido" />
										<form:errors path="apellido"></form:errors>
									</div>
								</div>
							</div>

							<div class="form-group">
								<form:label path="correo">Correo Electrónico</form:label>
								<form:input path="correo" class="form-control input-sm"
									type="email" required="correo" />
								<form:errors path="correo"></form:errors>
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<form:label path="edad">Edad </form:label>
										<form:input path="edad" class="form-control input-sm"
											type="number" required="edad" />
										<form:errors path="edad"></form:errors>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<form:label path="celular">Celular </form:label>
										<form:input path="celular" class="form-control input-sm"
											type="number" required="celular" />
										<form:errors path="celular"></form:errors>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-12">
									<div class="form-group">
										<form:radiobutton path="sexo" value="hombre" required="sexo" />
										Hombre
										<form:radiobutton path="sexo" value="mujer" required="sexo" />
										Mujer
										<form:radiobutton path="sexo" value="mujer" required="sexo" />
										Otro
										<form:errors path="sexo"></form:errors>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-12">
									<div class="form-group">

										<form:label path="materia">Materia</form:label>
										<form:select path="materia"
											class="col-xs-6 col-sm-6 col-md-12" id="subject"
											name="subject" required="materia">

											<form:option value="matematicas" label="Matematicas" />
					Matematicas
					<form:option value="lenguaje" label="Lenguaje" />
					Lenguaje
					<form:option value="historia" label="Historia" />
					Historia
					<form:option value="musica" label="Musica" />
					Música
					<form:option value="informatica" label="Informatica" />
					Informatica
					<form:option value="fisica" label="Fisica" />
					Físca
					<form:option value="quimica" label="Quimica" />
					Quimica
					<form:option value="biologia" label="Biología" />
					Biología
					</form:select>
										<form:errors path="materia"></form:errors>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-12">
									<div class="form-group">
										<form:label path="descUsuario">Reseña</form:label>
										<form:textarea path="descUsuario"
											class="form-control input-sm" id="message" name="message"
											rows="10" required="descUsuario" />
										<form:errors path="descUsuario"></form:errors>
									</div>
								</div>
							</div>

							
								<form:button class="btn btn-outline-info btn-block" type="submit">Registrarse</form:button>
<br>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		<div class="footer">
		<p>Sitio creado por Daniel Cespedes & Angela Romero & Daniela
			Caicedo</p>
	</div>

</body>
</html>