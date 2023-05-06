package connection_test;

import java.sql.*;

public class BasicConnectionSingleton {
    private static String url =
            "jdbc:mysql://localhost:3306/JPX?serverTimezone=America/Bogota";
    private static String user = "pool";
    private static String pass = "Jeanpool14";
    private static Connection conn;
    public static Connection getInstance()
            throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user,pass);
        }
        return conn;
    }
} // BasicConnectionSingleton
