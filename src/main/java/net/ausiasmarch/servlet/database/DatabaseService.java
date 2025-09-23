package net.ausiasmarch.servlet.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseService {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/mondublio";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "tiger";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }
}
