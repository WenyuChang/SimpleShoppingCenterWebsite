package Dao;

import Domain.Goods;

public interface goodsDao {
	void persist(Goods good);

	void merge(Goods good);

	void remove(Goods good);

	Goods getGoodsById(int id);

	Goods getGoodsByName(String name);
}
