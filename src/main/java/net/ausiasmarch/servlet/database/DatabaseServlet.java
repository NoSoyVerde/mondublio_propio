package net.ausiasmarch.servlet.database;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; // <- Importa esto
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DatabaseServlet") 
public class DatabaseServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("name") != null ? request.getParameter("username") : "invitado";
        String password = request.getParameter("password") != null ? request.getParameter("password") : "invitado";
        String email = request.getParameter("email") != null ? request.getParameter("email") : "invitado";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String mensaje = "";

        String strSQL = "INSERT INTO usuario (name, password, email) VALUES (?, ?, ?)";

        try (Connection oConnection = DatabaseService.getConnection();
                PreparedStatement oPreparedStatement = oConnection.prepareStatement(strSQL,
                        PreparedStatement.RETURN_GENERATED_KEYS)) {

            oPreparedStatement.setString(1, nombre);
            oPreparedStatement.setString(2, password);
            oPreparedStatement.setString(3, email);

            int iResult = oPreparedStatement.executeUpdate();

            if (iResult > 0) {
                try (ResultSet rs = oPreparedStatement.getGeneratedKeys()) {
                    if (rs.next()) {
                        int newId = rs.getInt(1);
                        mensaje = "Usuario insertado correctamente. ID: " + newId;
                    } else {
                        mensaje = "Usuario insertado, pero no se pudo obtener el ID.";
                    }
                }
            } else {
                mensaje = "Error al insertar el usuario.";
            }

        } catch (SQLException e) {
            e.printStackTrace();
            mensaje = "Error de base de datos: " + e.getMessage();
        }

        // Redirigir al JSP con el mensaje
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("/resultado.jsp").forward(request, response);
    }
}
