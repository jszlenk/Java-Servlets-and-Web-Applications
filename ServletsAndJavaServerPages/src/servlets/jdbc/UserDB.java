package servlets.jdbc;

abstract class UserDB {

	private String user;
	private String password;
	private String database;

	UserDB(String user, String password, String database) {
		this.user = user;
		this.password = password;
		this.database = database;
	}

	String getUser() {
		return user;
	}

	String getPassword() {
		return password;
	}

	String getDatabase() {
		return database;
	}
}