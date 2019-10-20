package servlets.contextlistener;

import javax.servlet.*;

import servlets.jdbc.ConnectionBehavior;
import servlets.jdbc.ManagerDB;
import servlets.jdbc.ServerConnection;

public class ManagerListenerDB implements ServletContextListener {

    private ManagerDB managerDB = null;

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        if (managerDB != null) {
            if (managerDB.isConnected()) {
                managerDB.closeConnection();
            }
        }
        managerDB = null;
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {

        ServletContext servletContext = servletContextEvent.getServletContext();
        String user = servletContext.getInitParameter("user");
        String password = servletContext.getInitParameter("password");
        String database = servletContext.getInitParameter("database");

        ConnectionBehavior connectionBehavior = new ServerConnection(user, password, database);
        managerDB = new ManagerDB(connectionBehavior);

        servletContext.setAttribute("managerDB", managerDB);
        System.out.println("ManagerDB created and added to context");
    }
}