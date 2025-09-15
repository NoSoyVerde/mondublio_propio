<%-- 
    Document   : holamundo
    Created on : 12-sep-2019, 13:25:10
    Author     : raznara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String valor = "Mundo";%>
//test 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    </head>
    <body class="bg-light">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <!-- ejercicio 1: comentario en HTML -->
                            <% out.println("Ejercicio 1");
                                String nombre = "Rafa";
                                // comentario en Java
                                for (int i = 1; i <= 10; i++) {
                                    /* comentario en java
                                    multiline
                                     */
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
                                    /* comentario en java
                                    multiline
                                     */
                            %>                            
                            <h1 class="h5 text-warning">El valor de i es ... <%=i%></h1>
                            <% }%>  
                            <!-- ejercicio 6 variables e if -->
                            <h1 class="mt-4">ejercicio 6</h1>
                            <% for (int i = 1; i <= 10; i++) {
                                    /* comentario en java
                                    multiline
                                     */
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
                            <!-- dinámica: en tiempo de ejecución -->   
                            <jsp:include page="incluir_dinamica.jsp" flush="true">                      
                                <jsp:param name="p1" value="<%=command%>" />                
                                <jsp:param name="p2" value="Rafa" /> 
                            </jsp:include>
                        </div>
                    </div>
                    <a href="index.jsp" class="btn btn-outline-primary w-100">Volver al inicio</a>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoA6DQD1KQkQ1p2eQF1rZLrZlq2F5Dk5j5Q5Q5Q5Q5Q5Q5Q" crossorigin="anonymous"></script>
    </body>
</html>
