package edu.bms.dao;

import java.util.List;

import org.hibernate.Query;

import edu.bms.entity.Message;

public class MessageDao extends BaseDao{
	
	public void saveMessage(Message message){
		getSession().saveOrUpdate(message);
	}
	
	@SuppressWarnings("unchecked")
	public List<Message> getMessageList(int pageNo,int pageSize){
		String hql="FROM Message WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 List<Message>list=query.setFirstResult((pageNo-1)*pageSize)
                 .setMaxResults(pageSize).list();
		 return list;
	}
	
	public int getMessageSize(int pageNo,int pageSize){
		String hql="FROM Message WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 return query.list().size();
	}
	
	public void deleMessage(int id){
		String hql="DELETE FROM Message WHERE id=?";
		Query query=getSession().createQuery(hql);
		query.setInteger(0, id);
		query.executeUpdate();
	}

}
