<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%
    if (request.getAttribute("now") == null) {
        request.setAttribute("now", new java.util.Date());
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSTL Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
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
                <a href="../index.jsp" class="btn btn-link">Inicio</a>
            </div>
        </div>
    </nav>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body text-center p-5">
                        <h2 class="mb-4 display-6 fw-bold text-primary">Welcome to JSTL Example!</h2>
                        <p class="lead">The current time is: <span class="fw-bold text-success"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/></span></p>
                        <a href="../index.jsp" class="btn btn-outline-primary mt-4">Volver al inicio</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer text-center py-3 mt-auto bg-white border-top shadow-sm">&copy; 2025 Mondublio. Todos los derechos reservados.</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>