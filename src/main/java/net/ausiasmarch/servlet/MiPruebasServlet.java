package net.ausiasmarch.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mispruebas")
public class MiPruebasServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Date now = new Date();
        request.setAttribute("now", now);

        request.getRequestDispatcher("/mispruebas.jsp").forward(request, response);
    }
}