package net.ausiasmarch.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/conexion")
public class Conexion extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lista de elementos
        ArrayList<String> lista = new ArrayList<String>();
        lista.add("Elemento 1");
        lista.add("Elemento 2");
        lista.add("Elemento 3");
        lista.add("Elemento 4");
        lista.add("Elemento 5");
        request.setAttribute("lista", lista);

        // Obtener parámetro "nombre" desde la URL
        String nombre = "Pepito";

        // Condicional: si el nombre es "Héctor"
        // <-- aquí puedes cambiarlo directamente
        String mensaje;
        if ("Hector".equalsIgnoreCase(nombre)) {
            mensaje = "¡Hola guapetón!";
        } else if ("Pepito".equalsIgnoreCase(nombre)) {
            mensaje = "¡Hola Pepito!";
        } else {
            mensaje = "Hola desconocido";
        }

        // Guardar el mensaje en el request
        request.setAttribute("mensajeSaludo", mensaje);

        // Forward a la JSP
        request.getRequestDispatcher("conexion.jsp").forward(request, response);
    }
}
