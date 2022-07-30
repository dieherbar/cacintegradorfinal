<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dataBase.ConexionDB"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS v5.0.2 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="../css/style.css">
<title>Lista Usuarios</title>
</head>
<body>
 <div class=" navigation">
    <nav class="nav navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Java Final</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="home.html">Inicio</a>
            </li>
            <li class="nav-item dropdown "> <a class="nav-link dropdown-toggle" href="#"  data-bs-toggle="dropdown" >Usuarios</a>
              <ul class="dropdown-menu">
                <li class="dropdown-item"> <a class="nav-link active" aria-current="page" href="crearUsuario.jsp">Crear Usuario</a>
                </li>
                <li class="dropdown-item"> <a class="nav-link active" aria-current="page" href="#">Listado Usuarios</a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">Acerca de</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">
                Pedidos
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="dropdown-item" href="PedidoFront.jsp">Hacer Pedido</a></li>
                <li><a class="dropdown-item" href="listarPedidos.jsp">Listar Pedidos</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>

<div class="text-center container text-center text-capitalize fw-bold pt-5">
<h1 class="h1 text-muted">Listado de Usuarios</h1>
</div>
<div class="container"  >
<table class="table table-striped">
<thead>
  <tr>
    <th>Id</th>
    <th>Usuario</th> 
    <th>Contraseña</th>
  </tr>
  </thead>
<tbody>
<%
//forma anterior haciendo conexion desde el jsp
/* ConexionDB conexionDB=new ConexionDB();
Connection conn=conexionDB.establecerConexion();
Statement st=conn.createStatement();
ResultSet rs= st.executeQuery("SELECT * FROM usuarios"); */

//trabajar con los metodos de la clase usuario
 UsuarioDao usudao = new UsuarioDao();
List<Usuario> listusu = usudao.getAllUsu();

for(Usuario usu:listusu){
	out.println("<tr>");

	//id
	out.println("<td>");
	out.println(usu.getId());
	out.println("</td>");
	
	//nombre
	out.println("<td>");
	out.println(usu.getUsuario());
	out.println("</td>");
	//apellido
	out.println("<td>");
	out.println(usu.getClave());
	out.println("</td>");
}
//forma anterior recorriendo el resultset dentro del jsp
/*while(rs.next()){
	out.println("<tr>");

	//id
	out.println("<td>");
	out.println(rs.getInt("idusuario"));
	out.println("</td>");
	
	//nombre
	out.println("<td>");
	out.println(rs.getString("usuario"));
	out.println("</td>");
	//apellido
	out.println("<td>");
	out.println(rs.getString("clave"));
	out.println("</td>");
}*/
%>


</tbody>
</table>
</div>
   <hr>
    
  <div>
    <footer class="my-3 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2017-2020 Codo a Codo</p>
    </footer>
    </div>
   
  <hr><hr>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
  integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
  integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
  crossorigin="anonymous"></script>
</body>
</html>