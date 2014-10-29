package Logout;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class logout extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("user", null);
		return SUCCESS;
	}
}
