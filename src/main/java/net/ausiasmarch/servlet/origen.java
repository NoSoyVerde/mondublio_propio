package net.ausiasmarch.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList; // import arraylist
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/origen")
public class origen extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        /*
        out.println("<html>");
        out.println("<head><title>Hola Mundo de rafa</title></head>");
        out.println("<body>");
        out.println("<h1>¡Hola Mundo desde un Servlet de rafa!</h1>");
        out.println("</body>");
        out.println("</html>");
        */
        // crear un arraylist de strings
        ArrayList<String> lista = new ArrayList<String>();
        lista.add("Elemento 1");
        lista.add("Elemento 2");
        lista.add("Elemento 3");
        lista.add("Elemento 4");
        lista.add("Elemento 5");
        //pasar como parametro a la jsp
        request.setAttribute("lista", lista);
        request.getRequestDispatcher("mispruebas.jsp").forward(request, response);



    }
}