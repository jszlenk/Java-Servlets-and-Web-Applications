package servlets.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ServerConnection extends UserDB implements ConnectionBehavior {

    ServerConnection(String user, String password, String database) {
        super(user, password, database);
    }

    @Override
    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(getConnectionURL());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public String getConnectionURL() {
        return String.format("jdbc:mysql://localhost/%s?serverTimezone=UTC&user=%s&password=%s"
                , getDatabase()
                , getUser()
                , getPassword());
    }
}