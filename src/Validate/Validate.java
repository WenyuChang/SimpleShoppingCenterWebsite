package Validate;

import javax.servlet.http.HttpSession;
import java.util.Date;
import org.apache.struts2.ServletActionContext;

import Dao.userDao;
import Domain.User;

import com.opensymphony.xwork2.ActionSupport;

public class Validate extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private String passwd;

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	private userDao userdao;

	public userDao getUserdao() {
		return userdao;
	}

	public void setUserdao(userDao userdao) {
		this.userdao = userdao;
	}

	public boolean validateInfo() {
		System.out.println("Username: " + name + "\n" + "Password: " + passwd);
		boolean exist = userdao.validateUser(name, passwd);
		return exist;
	}

	@SuppressWarnings("deprecation")
	public String execute() {
		if (validateInfo()) {
			HttpSession session = ServletActionContext.getRequest()
					.getSession();
			session.setAttribute("user", userdao.getUserByName(name));
			User user = userdao.getUserByName(name);
			user.setLatestLogin(new Date().toLocaleString());
			userdao.merge(user);
			return SUCCESS;
		} else
			return ERROR;
	}
}
