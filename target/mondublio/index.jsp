<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Página principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="bg-light d-flex flex-column min-vh-100">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body text-center">
                        <h1 class="mb-4">Bienvenido a la página principal</h1>
                        <p class="mb-4">Utiliza las siguientes opciones para generar números aleatorios:</p>
                        <div class="d-grid gap-3 col-6 mx-auto">
                            <a href="aleatorio.jsp" class="btn btn-primary btn-lg">Generar número aleatorio (por defecto)</a>
                            <a href="formulario.html" class="btn btn-outline-primary btn-lg">Formulario de aleatorios</a>
                            <a href="holamundo.jsp" class="btn btn-outline-success btn-lg">Demo: Hola Mundo (Ejercicio para estudiantes)</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoA6DQD1KQkQ1p2eQF1rZLrZlq2F5Dk5j5Q5Q5Q5Q5Q5Q5Q" crossorigin="anonymous"></script>
</body>
</html>
