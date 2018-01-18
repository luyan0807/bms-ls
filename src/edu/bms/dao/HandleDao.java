package edu.bms.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


import edu.bms.entity.Handle;

public class HandleDao extends BaseDao{
	
	private String id;
	
	private SessionFactory sessionFactory;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Handle> getAll(){
		String hql="from Handle";
		return getSession().createQuery(hql).list();
	}
	//分页
	@SuppressWarnings("unchecked")
	public List<Handle> getHandleList(int pageNo,int pageSize){
		String hql="FROM Handle WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 List<Handle>list=query.setFirstResult((pageNo-1)*pageSize)
                 .setMaxResults(pageSize).list();
		 return list;
	}
	
	public int getHandleSize(int pageNo,int pageSize){
		String hql="FROM Handle WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 return query.list().size();
	}
	
	public void agree(String id){
		int Id=Integer.valueOf(id);
		System.out.println("dao");
		String hql="update Handle h set h.status=? where h.id=?";
		getSession().createQuery(hql).setString(0, "1").setInteger(1, Id).executeUpdate();
	}
	
}
