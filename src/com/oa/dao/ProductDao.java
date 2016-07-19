package com.oa.dao;
 
import java.util.List;
import com.oa.entity.Product;

public interface ProductDao {
	List<Product> findAll();
	List<Product> findByEpc_id(int epc_id);
	Product findById(int id );
	void deleteProduct(Product p);
}
