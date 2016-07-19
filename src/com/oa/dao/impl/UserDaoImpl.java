package com.oa.dao.impl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.oa.dao.UsersDao;
import com.oa.entity.Users;
@Repository
public class UserDaoImpl extends HibernateTemplate implements UsersDao{
	@Autowired
	private SessionFactory sessionFactory;
	private Session session ;

	@SuppressWarnings("all")
	@Override//登陆
	public Users login(String name, String pwd) {
		String hql ="from Users u where name=? and password=?";
		Session session=sessionFactory.openSession();
		Query query=session.createQuery(hql);
		query.setString(0, name);
		query.setString(1, pwd);
		List<Users> list=query.list();
		if (list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
	}
	@Override//注册
	public int saveUsers(Users users) {
		int result=-1;
		session=sessionFactory.openSession();
		Transaction tx =session.beginTransaction();
		result=(Integer) session.save(users);
		tx.commit();
		return result;
	}

	@Override//显示所有用户
	public List<Users> findAll() {
		
		return (List<Users>) super.find("from Users");
	}
	
	@Override//删除用户
	public void deleteUsers(Users users){
		 super.delete(users);
	}
	@Override//根据Id查找用户
	public Users findById(int id) {
		return super.get(Users.class, id);
	}
	@Override//修改用户信息
	public void updateUsers(Users users){
		super.update(users);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
