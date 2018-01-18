package edu.bms.dao;

import java.util.List;

import org.hibernate.Query;

import edu.bms.entity.Activity;

public class NoticeDao extends BaseDao{

	public void saveActivity(Activity activity){
		getSession().saveOrUpdate(activity);
	}
	
	@SuppressWarnings("unchecked")
	public List<Activity> getNoticeList(int pageNo,int pageSize){
		String hql="FROM Activity WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 List<Activity>list=query.setFirstResult((pageNo-1)*pageSize)
                 .setMaxResults(pageSize).list();
		 return list;
	}
	
	public int getNoticeSize(int pageNo,int pageSize){
		String hql="FROM Activity WHERE 1=1";
		 Query query =getSession().createQuery(hql);
		 return query.list().size();
	}
	
	public void deleActivity(int id){
		String hql="DELETE FROM Activity WHERE id=?";
		Query query=getSession().createQuery(hql);
		query.setInteger(0, id);
		query.executeUpdate();
	}
}
