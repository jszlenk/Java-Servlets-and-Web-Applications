package filters.wrappers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class ParameterInspector extends HttpServletRequestWrapper {

	public ParameterInspector(HttpServletRequest request) {
		super(request);
	}

	public String[] getParameterValues(String p) {

		String[] values = super.getParameterValues(p);
		if (values == null) return null;
		ArrayList<String> newValues = new ArrayList<String>();

		for (String s : values) {
			if (p.equalsIgnoreCase("interceptedparam")) {
				s = s.toUpperCase();
			}
			newValues.add(s);
		}
		return (String[])newValues.toArray();
	}
	
	public String getParameter(String p) {

		String value = super.getParameter(p);
		if (value == null) return null;

		if (p.equalsIgnoreCase("interceptedparam")) {
			return value.toUpperCase();
		}
		return value;
	}
	
	public String getHeader(String h) {
		return super.getHeader(h);
	}
}