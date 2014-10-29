package Validate;

import Dao.userDao;
import Domain.User;

import com.opensymphony.xwork2.ActionSupport;

public class newUser extends ActionSupport {
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

	public String execute() {
		System.out.println(name + "  " + passwd);
		User u = new User();
		u.setUsername(name);
		u.setPassword(passwd);

		userdao.persist(u);
		return SUCCESS;
	}
}
