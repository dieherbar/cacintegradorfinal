<%@ page import="dao.UsuarioDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<%
String usu = request.getParameter("inputEmail");
String pass = request.getParameter("inputPassword");

UsuarioDao usudao = new UsuarioDao();
Boolean valido = usudao.validarUsuYPass(usu, pass);

if (valido){
	response.sendRedirect("../view/home.html");
} else {
	response.sendRedirect("../view/login-error.html");
}
%>
</body>
</html>