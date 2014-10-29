package Dao;

import Domain.orders;
import java.util.List;

public interface ordersDao {
	public orders getordersById(int id);

	public List<orders> getordersByUserID(int userId);

	public orders getordersByGoodsID(int goodsId);

	public void merge(orders order);

	public void persist(orders order);

	public void remove(orders user);
}
