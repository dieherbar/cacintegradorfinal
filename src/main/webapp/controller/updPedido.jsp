<%@page import="dao.PedidoDao"%>
<%@page import="model.Pedido"%>
<%@page import="model.Provincias"%>
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
String idpedido = request.getParameter("idPedido");
//Integer idpedido = Integer.valueOf(request.getParameter("idPedido"));
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


System.out.println("este es el numero:-->"+ idpedido +"<--");
System.out.println("este es el numero2:-->"+ idpedido.trim() +"<--");
Integer idped = Integer.valueOf(idpedido.trim());
//idpedido = Integer.parseInt(idpedido);
//idpedido = idpedido.replace("\n", "").replace("\r", "");


Localidades localidad = new Localidades(Integer.valueOf(idlocalidad), null, null);
Provincias provincia = new Provincias(Integer.valueOf(idProvincia),null);


Pedido pedido = new Pedido(idped,nombre, apellido, usuario, mail, lugarentrega, localidad, provincia, codigo, pago, titular, Double.valueOf(tarjeta), venc, Integer.valueOf(clave));

PedidoDao dao = new PedidoDao();
Boolean updateOk = dao.updPedido(pedido);


if(updateOk) {
	response.sendRedirect("../view/mensajeEditOk.html");
} else {
	response.sendRedirect("../view/mensajeError.html");
}
%>
</body>
</html>