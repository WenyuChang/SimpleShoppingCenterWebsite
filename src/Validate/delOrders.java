package Validate;

import Dao.*;
import Domain.*;
import com.opensymphony.xwork2.ActionSupport;

public class delOrders extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int id = -1;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	ordersDao ordersdao;

	public ordersDao getOrdersdao() {
		return ordersdao;
	}

	public void setOrdersdao(ordersDao ordersdao) {
		this.ordersdao = ordersdao;
	}

	public String execute() {
		orders order = ordersdao.getordersById(id);
		ordersdao.remove(order);
		return SUCCESS;
	}
}
