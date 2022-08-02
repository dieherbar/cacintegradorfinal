<%@page import="java.util.List"%>
<%@page import="model.Localidades"%>
<%@page import="dao.LocalidadDao"%>
<%@page import="model.Provincias"%>
<%@page import="dao.ProvinciasDao"%>
<%@page import="model.Pedido"%>
<%@page import="dao.PedidoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- Bootstrap CSS v5.0.2 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- mis estilos -->
   <link rel="stylesheet" href="../css/style.css">
<title>Edicion Pedido</title>
</head>
<body>
<header>
<div class=" navigation">
    <nav class="nav navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" >Java Final</a>
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
                <li class="dropdown-item"> <a class="nav-link active" aria-current="page" href="listaUsuarios.jsp">Listado Usuarios</a>
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
</header>

<div class="py-4 text-center">
      <img class="d-block mx-auto mb-4 pt-5" src="../images/BA.png" alt="Logo caba" >
    <h2>Formulario de edición de Pedido</h2>
    <p class="lead">La fecha de entrega puede modificarse de acuerdo a los cambios solicitados</p>
  </div>

	<%
	
	String idPed = request.getParameter("idPedido");
	PedidoDao pedidoDAO = new PedidoDao();
	Pedido pedido = pedidoDAO.getPedidoXId(Integer.valueOf(idPed)); 
	%>
	
  <div class="col-md-12 text-center">
    <form  action="../controller/updPedido.jsp" method="POST" class="needs-validation" novalidate>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="firstName">Nombre</label>
          <input type="hidden" name="idPedido" value="<%out.println(pedido.getIdPedido());%>">
		  	
          <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Tu nombre" value="<% out.println(pedido.getNombre()); %>" required>
          <div class="invalid-feedback">
            Debe ingresar su nombre.
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="lastName">Apellido</label>
          <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Tu apellido" value="<% out.println(pedido.getApellido()); %>" required>
          <div class="invalid-feedback">
            Faltó ingresar el apellido.
          </div>
        </div>
      </div>

<div class="row">
          <div class="col-md-12 mb-3">
              <label for="username">Nombre de Usuario</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <input type="text" class="form-control" id="username" name="username" placeholder="Usuario" value="<% out.println(pedido.getUsuario()); %>" required>
                <div class="invalid-feedback" style="width: 100%;">
                  Faltó ingresar el usuario.
                </div>
              </div>
            </div>
         </div>
  
        <div class="row">
          <div class="col-md-12 mb-3">
              <label for="email">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email"  name="email" placeholder="tumail@gmail.com" value="<% out.println(pedido.getMail()); %>">
              <div class="invalid-feedback">
                El e-mail es inválido.
              </div>
            </div>
         </div>	  
  
        <div class="row">
          <div class="col-md-12 mb-3">
              <label for="address">Lugar de Entrega</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="Calle, nro" value="<% out.println(pedido.getLugarentrega()); %>"required>
              <div class="invalid-feedback">
                Faltó ingresar el domicilio de entrega.
              </div>
            </div>
         </div>
  
  
  
        <div class="row">
          <div class="col-md-5 mb-3">
          
            <label for="localidad">Localidad</label>
<%--             <input type="hidden" name="localidaddb" value="<%out.println(pedido.getLocalidad().getLocalidad());%>"> --%>
            <select class="custom-select d-block w-100" id="localidad" name="localidad" required>
            
            <option value="<% out.println(pedido.getLocalidad().getIdLocalidad()); %> "> <% out.println(pedido.getLocalidad().getLocalidad()); %></option>
            <%
            LocalidadDao localidadDAO = new LocalidadDao();
            List<Localidades> listLoc = LocalidadDao.getAllLocal();
            		
            		for(Localidades loca:listLoc){
            		//pcia = loca.getIdProvincia();
            		out.println("<option value=" + loca.getIdLocalidad() + ">" + loca.getLocalidad() + "</option>");
            		}
          %>
          </select>
            <div class="invalid-feedback">
              Seleccioná una localidad válida.
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <label for="state">Provincia (Opcional)</label>
            <select class="custom-select d-block w-100" id="state" name="state"> 
            <!--value="<% out.println(pedido.getProvincia().getIdProvincia()); %>"><% out.println(pedido.getProvincia().getProvincia()); %></option> -->
            <option value="<% out.println(pedido.getProvincia().getIdProvincia()); %> "> <% out.println(pedido.getProvincia().getProvincia()); %></option>
             
              <%
              ProvinciasDao provinciaD = new ProvinciasDao();
              List<Provincias> prov = provinciaD.getAllProv(); 
//             		for(Localidades loca:listLoc){
//                 		out.println("<option value=" + loca.getIdProvincia() + ">" + loca.getIdProvincia().getProvincia() + "</option>");
//                 	}
            		
            		for(Provincias p:prov){out.println("<option value=" + p.getIdProvincia() + ">" + p.getProvincia() + "</option>");}
          %>
            </select>
            <div class="invalid-feedback">
              Seleccioná una provincia válida.
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label for="zip">Cod.Postal</label>
            <input type="text" class="form-control" id="zip" name="zip" placeholder="" value="<% out.println(pedido.getCodpostal()); %>"required>
            <div class="invalid-feedback">
              Faltó ingresar el Código Postal.
            </div>
          </div>
        </div>
  
  
        <hr class="mb-6">
  
        <h4 class="mb-3">Forma de Pago</h4>
  
        <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input value="CreditCard" id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
            <label class="custom-control-label" for="credit">Tarjeta de Crédito</label>
          </div>
          <div class="custom-control custom-radio">
            <input value="debit" id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
            <label class="custom-control-label" for="debit">Deposito Bancario</label>
          </div>
          <div class="custom-control custom-radio">
            <input value="cash" id="cash" name="paymentMethod" type="radio" class="custom-control-input"  required>
            <label class="custom-control-label" for="cash">Efectivo contraentrega</label>
          </div>
        </div>
        <div class="">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="cc-name">Nombre del Titular de la Tarjeta</label>
            <input type="text" class="form-control" id="cc-name" name="cc-name" placeholder="" value="<% out.println(pedido.getTarjtitular()); %>"required>
            <small class="text-muted">Nombre como se muestra en la tarjeta</small>
            <div class="invalid-feedback">
              El nombre debe ser ingresado.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="cc-number">Número de la tarjeta</label>
            <input type="number" class="form-control" id="cc-number" name="cc-number" placeholder="" value="<% out.println(pedido.getTarjnumero()); %>"required>
            <div class="invalid-feedback">
              El número es obligatorio.
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-3 mb-3"></div>
          <div class="col-md-3 mb-3">
            <label for="cc-expiration">Fecha de Vto.</label>
            <input type="text" class="form-control" id="cc-expiration" name="cc-expiration" placeholder="" value="<% out.println(pedido.getTarjvto()); %>"required>
            <div class="invalid-feedback">
              Falta ingresar la fecha de Vto.
            </div>
          </div>
          <div class="col-md-3 mb-3">
            <label for="cc-cvv">Código</label>
            <input type="number" class="form-control" id="cc-cvv" name="cc-cvv" placeholder="" value="<% out.println(pedido.getTarjclave()); %>"required>
            <div class="invalid-feedback">
              Nro de seguridad obligatorio.
            </div>
          </div>
        </div>
        </div>
        
        <div class="datosOperacion">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="numoper">Numero de operacion</label>
            <input type="text" class="form-control" id="numoper" name="numoper" placeholder="" >
            
            <small class="text-muted">Numero de operacion</small>
            <div class="invalid-feedback">
              Debe completar el numero de operacion
            </div>
          </div>
          </div>
          </div>
      
      <hr class="mb-4">
      <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
          <button class="btn btn-primary btn-lg btn-block" type="submit">Modificar Solicitud</button>
        </div>
      </div>
    </form>
  </div>
  </div>



   <hr>
  <div>
    <footer class="my-3 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2017-2020 Codo a Codo</p>
    </footer>
    </div>
  <hr><hr>
<script src="../js/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
  integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
  integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
  crossorigin="anonymous"></script>
</body>
</html>