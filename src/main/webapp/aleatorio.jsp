<%@page import="java.util.Random"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Generación de números aleatorios</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
    />
    <style>
      body {
        background: linear-gradient(135deg, #e0eafc 0%, #cfdef3 100%);
      }
      .brand {
        font-weight: bold;
        font-size: 2rem;
        color: #0d6efd;
      }
      .footer {
        font-size: 0.9rem;
        color: #888;
      }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm mb-4">
      <div class="container">
        <span class="navbar-brand brand">Mondublio</span>
        <div>
          <a href="index.jsp" class="btn btn-link">Inicio</a>
          <a href="formulario.html" class="btn btn-link">Formulario</a>
        </div>
      </div>
    </nav>
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-7 col-lg-6">
          <div class="card shadow-lg border-0 rounded-4">
            <div class="card-body text-center p-5">
              <h1 class="mb-4 display-6 fw-bold text-primary">
                Generación de números aleatorios
              </h1>
              <% // Generación de números aleatorios int max = 10; int min = 1;
              Random rand = new Random(); int randomNum = rand.nextInt((max -
              min) + 1) + min; out.print("
              <div class="alert alert-success rounded-3 shadow-sm">
                <h2 class="mb-0">
                  El número generado es el...
                  <span class="fw-bold text-primary">" + randomNum + "</span>
                </h2>
              </div>
              "); %>
              <div class="d-flex justify-content-center gap-3 mt-4">
                <a
                  href="index.jsp"
                  class="btn btn-secondary px-4 py-2 rounded-pill shadow-sm"
                  >Volver a inicio</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer
      class="footer text-center py-3 mt-auto bg-white border-top shadow-sm"
    >
      &copy; 2025 Mondublio. Todos los derechos reservados.
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
