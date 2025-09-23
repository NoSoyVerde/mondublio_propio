package net.ausiasmarch.servlet.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InfiniteConnectionServlet")
public class InfiniteConnectionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h2>Abriendo conexiones sin cerrar...</h2>");

        int contador = 0;

        while (true) {
            try {
                Connection conn = DatabaseService.getConnection();
                PreparedStatement ps = conn.prepareStatement(
                        "INSERT INTO usuario (name, password, email) VALUES ('test" 
                        + contador + "', '123', 'test" + contador + "@test.com')");

                ps.executeUpdate();

                contador++;
                System.out.println("Conexiones abiertas: " + contador);

                Thread.sleep(100);

            } catch (SQLException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
