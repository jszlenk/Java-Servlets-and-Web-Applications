package servlets.sessionlistener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener
public class AttributeTracking implements HttpSessionAttributeListener {

    public void attributeRemoved(HttpSessionBindingEvent hsbe) {
        System.out.printf("Attribute Removed from session: %s\t%s\n", hsbe.getName(), hsbe.getValue());
    }

    public void attributeAdded(HttpSessionBindingEvent hsbe) {
        System.out.printf("Attribute Added to session: %s\t%s\n", hsbe.getName(), hsbe.getValue());
    }

    public void attributeReplaced(HttpSessionBindingEvent hsbe) {
        System.out.printf("Attribute Replaced in session: %s\t%s\n", hsbe.getName(), hsbe.getValue());
    }
}