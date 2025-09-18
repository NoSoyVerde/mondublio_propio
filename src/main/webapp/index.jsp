<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String user = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inicio - Mondublio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    </head>
    <body class="bg-light d-flex flex-column min-vh-100">
        <main class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow">
                        <div class="card-body text-center">
                            <h1 class="card-title mb-4">Bienvenido a Mondublio</h1>
                            <h4 class="card-title mb-4">Si quieres aprender practicando con jsp, jstl, servlets y más, ¡estás en el lugar correcto!</h4>
                            <p class="mb-4">Selecciona una opción para generar números aleatorios:</p>
                            <div class="d-grid gap-3">
                                <a href="aleatorio.jsp" class="btn btn-primary">
                                    Ejemplo aleatorio fijo<br>
                                    <span class="small text-white-50">Genera un número aleatorio entre 1 y 10</span>
                                </a>
                                <a href="formulario.html" class="btn btn-outline-primary">
                                    Formulario para aleatorio personalizado<br>
                                    <span class="small text-secondary">Elige los límites para tu número aleatorio</span>
                                </a>
                                <a href="holamundo.jsp" class="btn btn-outline-success">
                                    Demo holamundo.jsp<br>
                                    <span class="small text-success">Ejercicio demo para estudiantes de desarrollo web</span>
                                </a>
                                <a href="holamundo" class="btn btn-outline-info">
                                    Servlet holamundo<br>
                                    <span class="small text-info">Ejecuta el servlet holamundo</span>
                                </a>
                                <a href="conexion" class="btn btn-outline-warning">
                                    Servlet conexion<br>
                                    <span class="small text-warning">Conecta con un JSP y le pasa un ArrayList</span>
                                </a>

                                <% if (user == null) { %>
                                    <!-- Si NO hay sesión, mostrar Login -->
                                    <a href="login.jsp" class="btn btn-outline-danger">
                                        Login <br>
                                        <span class="small text-danger">Logeate</span>
                                    </a>
                                <% } else { %>
                                    <!-- Si hay sesión, mostrar acceso a la zona privada -->
                                    <a href="privada.jsp" class="btn btn-outline-success">
                                        Zona Privada <br>
                                        <span class="small text-success">Accede como <%= user %></span>
                                    </a>
                                <% } %>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
