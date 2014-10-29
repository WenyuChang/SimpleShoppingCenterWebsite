package Validate;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import Dao.goodsDao;
import com.opensymphony.xwork2.ActionSupport;

public class goodsDetail extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	goodsDao goodsdao;

	public goodsDao getGoodsdao() {
		return goodsdao;
	}

	public void setGoodsdao(goodsDao goodsdao) {
		this.goodsdao = goodsdao;
	}

	public String execute() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("goods", goodsdao.getGoodsById(id));
		return SUCCESS;
	}
}
