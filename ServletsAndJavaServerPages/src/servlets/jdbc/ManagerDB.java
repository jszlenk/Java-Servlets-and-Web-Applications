package servlets.jdbc;

import java.sql.*;

class ManagerDB {

    private Connection connection = null;
    private ConnectionBehavior connectionBehavior;

    ManagerDB(ConnectionBehavior connectionBehavior) {
        this.connectionBehavior = connectionBehavior;
    }

    boolean openConnection() {
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
            return false;
        }
		return connection != null;
	}

	private void closeConnection() {
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

    boolean isConnected() {
        return connection != null;
    }

    ResultSet ExecuteResultSet(String query) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        return preparedStatement.executeQuery();
    }
}