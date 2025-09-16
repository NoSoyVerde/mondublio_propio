<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <title>Generación de números aleatorios</title>
    </head>
    <body class="bg-light">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-body text-center">
                            <h1 class="mb-4">Generación de números aleatorios</h1>
                            <% 
                                String supParam = request.getParameter("sup");
                                String infParam = request.getParameter("inf");
                                if (supParam == null || infParam == null || supParam.isEmpty() || infParam.isEmpty()) {
                                    out.print("<div class='alert alert-warning'>Por favor, introduce ambos límites.</div>");
                                } else {
                                    try {
                                        int max = Integer.parseInt(supParam);
                                        int min = Integer.parseInt(infParam);
                                        if (max < min) {
                                            out.print("<div class='alert alert-danger'>El límite superior debe ser mayor o igual que el límite inferior.</div>");
                                        } else {
                                            Random rand = new Random();
                                            int randomNum = rand.nextInt((max - min) + 1) + min;
                                            out.print("<h2 class='text-success'>El número generado es el... " + randomNum + "</h2>");
                                        }
                                    } catch (NumberFormatException e) {
                                        out.print("<div class='alert alert-danger'>Por favor, introduce valores numéricos válidos.</div>");
                                    }
                                }
                            %>
                            <a href="formulario.html" class="btn btn-outline-primary mt-4">Volver al formulario</a>
                            <a href="index.jsp" class="btn btn-secondary mt-3 me-2">Volver a inicio</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoA6DQD1KQkQ1p2eQF1rZLrZlq2F5Dk5j5Q5Q5Q5Q5Q5Q5Q" crossorigin="anonymous"></script>
    </body>
</html>
