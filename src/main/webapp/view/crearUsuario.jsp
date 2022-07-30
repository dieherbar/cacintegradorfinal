<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
         <link rel="stylesheet" href="../css/style.css">
        <title>Crear usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>

    <body class="text-center bg-light">
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

        <div class="container">
            <form class="form-login p-5" action="../controller/guardarUsuario.jsp" method="post">
                <img alt="Buenos Aires logo" src="../images/BA.png">
                <h2>Crear Usuario JSP</h2>
                <div class="row">
                <div class="col-lg-6 col-sm-12 p-3">
                <input type="email" name="inputEmail" class="form-control" placeholder="Ingrese su usuario" required
                    autofocus>
                    </div>
                    <div class="col-lg-6 col-sm-12 p-3">
                <input type="password" name="inputPassword" class="form-control" placeholder="Ingrese su clave"
                    required>
                    </div>
                <button type="submit" class="btn btn-lg btn-primary btn-block">Crear Usuario</button>
                </div>
            </form>
        </div>
        
           <hr>
    
  <div>
    <footer class="my-3 pt-5 text-muted text-center text-small">
      <p class="mb-1">&copy; 2017-2020 Codo a Codo</p>
    </footer>
    </div>
   
  <hr><hr>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>


    </body>

    </html>