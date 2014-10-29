package Domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class User {
	private int id;
	private String username;
	private String password;
	private String latestLogin;

	@Id
	@GeneratedValue
	@Column(name = "User_ID")
	public int getId() {
		return id;
	}

	public void setId(int _id) {
		this.id = _id;
	}

	@Column(name = "USERNAME")
	public String getUsername() {
		return username;
	}

	public void setUsername(String _username) {
		this.username = _username;
	}

	@Column(name = "PASSWORD")
	public String getPassword() {
		return password;
	}

	public void setPassword(String _password) {
		this.password = _password;
	}

	@Column(name = "LATESTLOGIN")
	public String getLatestLogin() {
		return latestLogin;
	}

	public void setLatestLogin(String latestLogin) {
		this.latestLogin = latestLogin;
	}
}
