<%@page import="model.Provincias"%>
<%@page import="dao.PedidoDao"%>
<%@page import="model.Pedido"%>
<%@page import="model.Localidades"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String nombre = request.getParameter("firstName");
String apellido = request.getParameter("lastName");
String usuario = request.getParameter("username");
String mail = request.getParameter("email");
String lugarentrega = request.getParameter("address");
String idlocalidad = request.getParameter("localidad");
String idProvincia = request.getParameter("state");
String codigo = request.getParameter("zip");
String pago = request.getParameter("paymentMethod");
String titular = request.getParameter("cc-name");
String tarjeta = request.getParameter("cc-number");
String venc = request.getParameter("cc-expiration");
String clave = request.getParameter("cc-cvv");

Localidades localidad = new Localidades(Integer.valueOf(idlocalidad), null, null);
Provincias provincia = new Provincias(Integer.valueOf(idProvincia),null);

Pedido pedido = new Pedido(nombre, apellido, usuario, mail, lugarentrega, localidad, provincia, codigo, pago, titular, Double.valueOf(tarjeta), venc, Integer.valueOf(clave));

PedidoDao dao = new PedidoDao();
Boolean insertOk = dao.crearPedido(pedido);


if(insertOk) {
	response.sendRedirect("../view/mensajeOk.html");
} else {
	response.sendRedirect("../view/mensajeError.html");
}
%>

</body>
</html>