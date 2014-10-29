package Dao;

import Domain.User;

public interface userDao {
	boolean validateUser(String username, String password);

	void persist(User user);

	void merge(User user);

	void remove(User user);

	User getUserById(int id);

	User getUserByName(String username);
}
