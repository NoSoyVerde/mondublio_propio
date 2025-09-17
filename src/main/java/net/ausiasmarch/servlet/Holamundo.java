package net.ausiasmarch.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/holamundo")
public class Holamundo extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hola Mundo de Hector</title>");
        out.println("<meta name='viewport' content='width=device-width, initial-scale=1'>");
        out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css' rel='stylesheet' crossorigin='anonymous'>");
        out.println("</head>");
        out.println("<body class='bg-light d-flex flex-column min-vh-100'>");
        out.println("<main class='container py-5'>");
        out.println("<div class='row justify-content-center'>");
        out.println("<div class='col-md-8 col-lg-6'>");
        out.println("<div class='card shadow'>");
        out.println("<div class='card-body text-center'>");
        out.println("<a href='index.jsp' class='btn btn-link mb-3'>&larr; Volver al menú principal</a>");
        out.println("<h1 class='mb-4'>¡Hola Mundo desde un Servlet de Hector!</h1>");
        out.println("</div></div></div></div></main>");
        out.println("</body>");
        out.println("</html>");
      



    }
}