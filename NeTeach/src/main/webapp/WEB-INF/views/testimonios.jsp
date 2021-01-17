<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a href="/tutores">Tutores</a>
            <a href="/registro" >Registro</a>
            <a href="/testimonios" class="activo">Testimonios</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>     
    </div>
    
    
    <div class="box">
	<a class="boton2" href="#popup1">Dejanos tu testimonio</a>
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Dejanos tu testimonio</h2> <br>
		<a class="close" href="#">&times;</a>
		
		<form:form class="formTest" action="agregarTestimonio" method="POST"
			modelAttribute="testimonio">
			<div class="form-group">
				<form:label path="nombretes">Nombre</form:label>
				<form:input path="nombretes" class="form-control" type="text" required="" placeholder="Ingresa tu nombre"/>
				<form:errors path="nombretes"></form:errors><br>
				
				<form:label path="edadtes">Edad</form:label>
				<form:input path="edadtes" class="form-control"
					 type="number" required="" placeholder="-" />
				<form:errors path="edadtes"></form:errors> <br>
				
				<form:label path="desctes">Testimonio </form:label>
				<form:textarea path="desctes"  placeholder="Máximo 100 caracteres" class="form-control"
					type="text" required="" />
				<form:errors path="desctes"></form:errors><br>
				
				<form:button class="btn btn-outline-info btn-block" type="submit">Enviar</form:button>
			</div>
		</form:form>
	</div>
</div>

<!-- asdas -->

 <c:forEach items="${testimonios}" var="test">
			<div class="card card-body text-center col-10 "
				style="color: black; border-radius: 10px; text-align: justify; width: 480px; height: 450px">
				<p hidden="${test.id}">
				<h4>${test.nombretes}</h4>
				
				<hr>
				
				<hr>
				<p>Edad: ${test.edadtes}</p>
				<p></p>
				<hr>
				<p>${test.desctes}</p>
			
				
			</div>
		</c:forEach>

</body>
</html>