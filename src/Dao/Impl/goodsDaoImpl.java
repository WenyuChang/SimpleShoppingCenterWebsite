package Dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;
import Dao.goodsDao;
import Domain.Goods;

@Transactional
public class goodsDaoImpl extends HibernateDaoSupport implements goodsDao {
	public Goods getGoodsById(int id) {
		Goods good = (Goods) getHibernateTemplate().get(Goods.class, id);

		return good;
	}

	@SuppressWarnings("unchecked")
	public Goods getGoodsByName(String name) {
		List<Goods> result = getHibernateTemplate().find(
				"from Goods g where g.username = ?", new Object[] { name });

		return result.size() > 0 ? result.get(0) : null;
	}

	public void merge(Goods good) {
		getHibernateTemplate().saveOrUpdate(good);

	}

	public void persist(Goods good) {
		getHibernateTemplate().save(good);

	}

	public void remove(Goods good) {
		getHibernateTemplate().delete(good);

	}
}
