package Validate;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import Dao.userDao;
import Domain.User;
import com.opensymphony.xwork2.ActionSupport;

public class userEdit extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String newUsername;

	public String getNewUsername() {
		return newUsername;
	}

	public void setNewUsername(String newUsername) {
		this.newUsername = newUsername;
	}

	private String newPasswd;

	public String getNewPasswd() {
		return newPasswd;
	}

	public void setNewPasswd(String newPasswd) {
		this.newPasswd = newPasswd;
	}

	private userDao userdao;

	public userDao getUserdao() {
		return userdao;
	}

	public void setUserdao(userDao userdao) {
		this.userdao = userdao;
	}

	public boolean edit(User user) {
		if (newUsername != "" && userdao.getUserByName(newUsername) != null)
			return false;
		else {
			if (newUsername != "") {
				System.out.println(newUsername);
				user.setUsername(newUsername);
			}
			if (newPasswd != null) {
				System.out.println(newPasswd);
				user.setPassword(newPasswd);
			}
			userdao.merge(user);
			return true;
		}
	}

	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user");
		if (edit(user))
			return SUCCESS;
		else
			return ERROR;
	}
}
