package Dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import Dao.userDao;
import Domain.User;

@Transactional
public class userDaoImpl extends HibernateDaoSupport implements userDao {
	public User getUserById(int id) {
		User user = (User) getHibernateTemplate().get(User.class, id);

		return user;
	}

	@SuppressWarnings("unchecked")
	public boolean validateUser(String username, String password) {
		List<User> result = getHibernateTemplate().find(
				"from User u where u.username = ? and u.password = ?",
				new Object[] { username, password });

		return result.size() > 0 ? true : false;
	}

	@SuppressWarnings("unchecked")
	public User getUserByName(String username) {
		List<User> result = getHibernateTemplate().find(
				"from User u where u.username = ?", new Object[] { username });

		return result.size() > 0 ? result.get(0) : null;
	}

	public void merge(User user) {
		getHibernateTemplate().saveOrUpdate(user);

	}

	public void persist(User user) {
		getHibernateTemplate().save(user);

	}

	public void remove(User user) {
		getHibernateTemplate().delete(user);

	}
}
