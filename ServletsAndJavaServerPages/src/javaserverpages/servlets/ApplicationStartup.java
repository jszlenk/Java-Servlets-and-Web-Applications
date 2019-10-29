package javaserverpages.servlets;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ApplicationStartup implements ServletContextListener {

    public void contextInitialized(ServletContextEvent ctxt) {
        ctxt.getServletContext().setAttribute("uid", "ApplicationScopeUser");
        ctxt.getServletContext().setAttribute("pwd", "ApplicationScopePassword");
    }

    public void contextDestroyed(ServletContextEvent arg0) {
    }
}