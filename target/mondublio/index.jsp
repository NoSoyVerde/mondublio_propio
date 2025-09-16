<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Página principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body { background: linear-gradient(135deg, #e0eafc 0%, #cfdef3 100%); }
        .brand { font-weight: bold; font-size: 2rem; color: #0d6efd; }
        .footer { font-size: 0.9rem; color: #888; }
    </style>
</head>
<body class="bg-light d-flex flex-column min-vh-100">
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm mb-4">
        <div class="container">
            <span class="navbar-brand brand">Mondublio</span>
            <div>
                <a href="index.jsp" class="btn btn-link">Inicio</a>
                <a href="formulario.html" class="btn btn-link">Formulario</a>
                <a href="holamundo.jsp" class="btn btn-link">Demo Hola Mundo</a>
                <a href="mispruebas.jsp" class="btn btn-link">JSTL Pruebas</a>
            </div>
        </div>
    </nav>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body text-center p-5">
                        <h1 class="mb-4 display-5 fw-bold text-primary">Bienvenido a la página principal</h1>
                        <p class="mb-4 lead">Utiliza las siguientes opciones para generar números aleatorios o ver ejercicios de demostración:</p>
                        <div class="d-grid gap-3 col-8 mx-auto">
                            <a href="aleatorio.jsp" class="btn btn-primary btn-lg rounded-pill shadow-sm">Generar número aleatorio (por defecto)</a>
                            <a href="formulario.html" class="btn btn-outline-primary btn-lg rounded-pill shadow-sm">Formulario de aleatorios</a>
                            <a href="holamundo.jsp" class="btn btn-outline-success btn-lg rounded-pill shadow-sm">Demo: Hola Mundo (Ejercicio para estudiantes)</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer text-center py-3 mt-auto bg-white border-top shadow-sm">&copy; 2025 Mondublio. Todos los derechos reservados.</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
