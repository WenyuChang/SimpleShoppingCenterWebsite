package Validate;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import Dao.ordersDao;
import Domain.*;
import com.opensymphony.xwork2.ActionSupport;

public class showOrders extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	ordersDao ordersdao;

	public ordersDao getOrdersdao() {
		return ordersdao;
	}

	public void setOrdersdao(ordersDao ordersdao) {
		this.ordersdao = ordersdao;
	}

	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user");
		int userID = user.getId();

		List<orders> oo = ordersdao.getordersByUserID(userID);
		session.setAttribute("result", oo);
		return SUCCESS;
	}
}
