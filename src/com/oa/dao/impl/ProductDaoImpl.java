package com.oa.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.oa.dao.ProductDao;
import com.oa.entity.Product;
@Repository
public class ProductDaoImpl extends HibernateTemplate implements ProductDao{
 
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Product> findAll() {
		return (List<Product>) super.find("from Product");
	}

	@Override
	public void deleteProduct(Product p) {
		super.delete(p);
	}

	@Override
	public List<Product> findByEpc_id(int epc_id) {
		 String hql="from Product p where epc_id=?";
		 Session session=sessionFactory.openSession();
		 Query query=session.createQuery(hql);
		 query.setInteger(0, epc_id);
		 List<Product> list=query.list();
		 if (list.size()>0) {
			return list;
		}else{ 
			return null;
		}
	}


	@Override
	public Product findById(int id) {
		return null;
	}
	
	

	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



}
