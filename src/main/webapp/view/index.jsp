<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceder al sistema</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body class="text-center bg-light">
<div class="container">


<form class="form-login" action="../controller/checkLogin.jsp" method="post">
<img alt="" src="">
<h2>Ingresar al sistema JSP</h2>
<input type="email" name="inputEmail" class="form-control" placeholder="Ingrese su usuario" required autofocus>
<input type="password" name="inputPassword" class="form-control" placeholder="Ingrese su clave" required >
<button type="submit" class="btn btn-lg btn-primary btn-block">Ingresar</button>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
