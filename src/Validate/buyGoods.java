package Validate;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import Dao.*;
import Domain.*;
import java.util.Date;
import com.opensymphony.xwork2.ActionSupport;

public class buyGoods extends ActionSupport {
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

	goodsDao goodsdao;

	public goodsDao getGoodsdao() {
		return goodsdao;
	}

	public void setGoodsdao(goodsDao goodsdao) {
		this.goodsdao = goodsdao;
	}

	@SuppressWarnings("deprecation")
	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();

		Date date = (Date) session.getAttribute("date");
		User user = (User) session.getAttribute("user");
		Goods goods = (Goods) session.getAttribute("goods");

		if (id == -1 && goods.getRemain() > 0) {
			orders oo = new orders();
			oo.setDate(date.toLocaleString());
			oo.setGoodsId(goods.getId());
			oo.setUserId(user.getId());
			oo.setStatus("buy");
			goods.setRemain(goods.getRemain() - 1);

			goodsdao.merge(goods);
			ordersdao.persist(oo);
			return SUCCESS;
		}
		if (id != -1) {
			orders oo = ordersdao.getordersById(id);
			goods = goodsdao.getGoodsById(oo.getGoodsId());
			if (oo.getStatus().equals("save")) {
				oo.setStatus("buy");
			} else
				return SUCCESS;
			ordersdao.merge(oo);
			goods.setRemain(goods.getRemain() - 1);
			goodsdao.merge(goods);
			return SUCCESS;
		}
		return ERROR;
	}
}
