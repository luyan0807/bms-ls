package edu.bms.dao;

import java.util.List;

import org.hibernate.Query;

import edu.bms.entity.Standard;


public class StandardDao extends BaseDao{

	public void updateStandard(int id,Standard standard){
		String hql="UPDATE Standard s SET s.lendNum=?,s.lendLimit=?,s.fine=? where id=?";
		Query query  = getSession().createQuery(hql); 
	        query.setInteger(0, standard.getLendNum()).setInteger(1,
	        		standard.getLendLimit()).setDouble(2, 
	        				standard.getFine()).setInteger(3, id);
		query.executeUpdate();
	}
	
	@SuppressWarnings("unchecked")
	public List<Standard> getStandards(){
		String hql="FROM Standard WHERE 1=1";
		Query query=getSession().createQuery(hql);
		List<Standard> standards=query.list();
		return standards;
	}
	
	@SuppressWarnings("unchecked")
	public List<Standard> getStandard(int id){
		String hql="FROM Standard WHERE id=?";
		Query query=getSession().createQuery(hql);
		query.setInteger(0, id);
		List<Standard> standards=query.list();
		return standards;
	}
}
