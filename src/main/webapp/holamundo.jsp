<%-- 
    Document   : holamundo
    Created on : 12-sep-2019, 13:25:10
    Author     : raznara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String valor = "Mundo";%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hola Mundo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <style>
            body { background: linear-gradient(135deg, #e0eafc 0%, #cfdef3 100%); }
            .brand { font-weight: bold; font-size: 2rem; color: #0d6efd; }
            .footer { font-size: 0.9rem; color: #888; }
        </style>
    </head>
    <body class="bg-light">
        <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm mb-4">
            <div class="container">
                <span class="navbar-brand brand">Mondublio</span>
                <div>
                    <a href="index.jsp" class="btn btn-link">Inicio</a>
                </div>
            </div>
        </nav>
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="card shadow-lg border-0 rounded-4 mb-4">
                        <div class="card-body p-5">
                            <!-- ejercicio 1: comentario en HTML -->
                            <% out.println("Ejercicio 1");
                                String nombre = "Rafa";
                                for (int i = 1; i <= 10; i++) {
                            %>                            
                            <h1 class="h4 text-primary">Rafa es el mejor</h1>
                            <% } %>    
                            <!-- ejercicio 2 -->
                            <hr>
                            <% out.println("Ejercicio 2");
                                for (int i = 1; i <= 10; i++) {
                                    out.print("<h1 class='h4 text-success'>Rafa es el mejor</h1>");
                                }
                            %>
                            <!-- ejercicio 3 -->
                            <hr>
                            <% out.println("Ejercicio 3");
                                for (int i = 1; i <= 10; i++) {
                                    out.println("<h1 class='h4 text-danger'>Rafa es el mejor</h1>");
                                }
                            %>
                            <h1 class="mt-4">ejercicio 4</h1>
                            <!-- ejercicio 4 variables -->
                            <% out.println("Ejercicio 4");
                                for (int i = 1; i <= 10; i++) {
                                    out.println("<h1 class='h5 text-info'>EL valor de i es: " + i + "</h1>");
                                }
                            %>
                            <!-- ejercicio 5 variables -->
                            <h1 class="mt-4">ejercicio 5</h1>
                            <% for (int i = 1; i <= 10; i++) {
                            %>                            
                            <h1 class="h5 text-warning">El valor de i es ... <%=i%></h1>
                            <% }%>  
                            <!-- ejercicio 6 variables e if -->
                            <h1 class="mt-4">ejercicio 6</h1>
                            <% for (int i = 1; i <= 10; i++) {
                                    if (i < 5) {
                            %>                            
                            <h1 class="h5 text-secondary">El valor de i es ... <%=i%></h1>
                            <% } else {%>  
                            <h1 class="h5 text-danger">******** El valor de i es ... <%=i%></h1>
                            <% }
                                }%>
                            <!-- ejercicio 7 -->
                            <h1 class="mt-4">Ejercicio 7</h1>
                            <h1>Hola <%=valor%></h1>
                            <!-- ejercicio 8 -->
                            <h1 class="mt-4">Ejercicio 8</h1>
                            <%@include file="incluir_estatica.jsp" %>  <!-- estática: en tiempo de compilacion -->
                            <!-- ejercicio 9 -->
                            <h1 class="mt-4">Ejercicio 9</h1>
                            <% String command = "hola"; %>
                            <jsp:include page="incluir_dinamica.jsp" flush="true">                      
                                <jsp:param name="p1" value="<%=command%>" />                
                                <jsp:param name="p2" value="Rafa" /> 
                            </jsp:include>
                        </div>
                    </div>
                    <a href="index.jsp" class="btn btn-outline-primary w-100 rounded-pill shadow-sm">Volver al inicio</a>
                </div>
            </div>
        </div>
        <footer class="footer text-center py-3 mt-auto bg-white border-top shadow-sm">&copy; 2024 Mondublio. Todos los derechos reservados.</footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
