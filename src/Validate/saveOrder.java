package Validate;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import Dao.*;
import Domain.*;
import java.util.Date;
import com.opensymphony.xwork2.ActionSupport;

public class saveOrder extends ActionSupport {
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

	@SuppressWarnings("deprecation")
	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		orders oo = new orders();
		Date date = (Date) session.getAttribute("date");
		User user = (User) session.getAttribute("user");
		Goods goods = (Goods) session.getAttribute("goods");

		oo.setDate(date.toLocaleString());
		oo.setGoodsId(goods.getId());
		oo.setUserId(user.getId());
		oo.setStatus("save");

		ordersdao.persist(oo);
		return SUCCESS;
	}
}
