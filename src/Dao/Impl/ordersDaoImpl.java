package Dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Dao.ordersDao;
import Domain.orders;

public class ordersDaoImpl extends HibernateDaoSupport implements ordersDao {
	public orders getordersById(int id) {
		orders order = (orders) getHibernateTemplate().get(orders.class, id);

		return order;
	}

	@SuppressWarnings("unchecked")
	public List<orders> getordersByUserID(int userId) {
		List<orders> result = getHibernateTemplate().find(
				"from orders o where o.userId = ?", new Object[] { userId });

		return result.size() > 0 ? result : null;
	}

	@SuppressWarnings("unchecked")
	public orders getordersByGoodsID(int goodsId) {
		List<orders> result = getHibernateTemplate().find(
				"from orders o where o.goodsID = ?", new Object[] { goodsId });

		return result.size() > 0 ? result.get(0) : null;
	}

	public void merge(orders order) {
		getHibernateTemplate().saveOrUpdate(order);

	}

	public void persist(orders order) {
		getHibernateTemplate().save(order);

	}

	public void remove(orders user) {
		getHibernateTemplate().delete(user);

	}
}
