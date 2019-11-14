package tags.library;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.*;

import java.io.IOException;
import java.util.ArrayList;

public class Navigator extends SimpleTagSupport {

    private ArrayList<NavigationDetails> links;

    private void CreateNavigationLinks() {

        links = new ArrayList<NavigationDetails>();

        NavigationDetails nd = new NavigationDetails();
        nd.setLink("indexTags.jsp");
        nd.setText("Home");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("loginTags.jsp");
        nd.setText("Login");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("listCitiesTags.jsp");
        nd.setText("View Cities");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("SignOut");
        nd.setText("Sign Out");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("xxx");
        nd.setText("Clear Data");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("Protected/listCitiesTags.jsp");
        nd.setText("Protected");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("ProtectedTwo/listCitiesTags.jsp");
        nd.setText("ProtectedTwo");
        links.add(nd);

        nd = new NavigationDetails();
        nd.setLink("parameterInterceptor.jsp?interceptedparam=start");
        nd.setText("Parameter Interceptor");
        links.add(nd);
    }

    public void doTag() throws JspException, IOException {

        CreateNavigationLinks();

        for (NavigationDetails nd : links) {
            getJspContext().setAttribute("navdetails", nd);
            getJspBody().invoke(null);
        }
    }
}