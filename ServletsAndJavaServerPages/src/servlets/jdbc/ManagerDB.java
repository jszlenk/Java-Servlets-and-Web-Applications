package servlets.jdbc;

import java.sql.*;

public class ManagerDB {

    private Connection connection = null;
    private ConnectionBehavior connectionBehavior;

    public ManagerDB(ConnectionBehavior connectionBehavior) {
        this.connectionBehavior = connectionBehavior;
    }

    public boolean openConnection() {
        try {
            if (connectionBehavior == null) {
                throw new IllegalArgumentException("Define a connection behavior");
            }
            if (connection != null) {
                closeConnection();
            }
            connection = connectionBehavior.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }

        return connection == null;
    }

    public void closeConnection() {
        try {
            if (connection != null) {
                if (!connection.isClosed()) {
                    connection.close();
                }
                connection = null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public boolean isConnected() {
        return connection != null;
    }

    public ResultSet ExecuteResultSet(String query) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        return preparedStatement.executeQuery();
    }
}