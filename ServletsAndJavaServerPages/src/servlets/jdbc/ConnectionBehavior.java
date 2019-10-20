package servlets.jdbc;

import java.sql.Connection;

public interface ConnectionBehavior {

	Connection getConnection();
	String getConnectionURL();
}
