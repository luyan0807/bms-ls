package edu.bms.dao;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;





import org.hibernate.Query;

import edu.bms.entity.Admin;
import edu.bms.model.UpdateAdminModel;

public class S_UserManageDao extends BaseDao{

	@SuppressWarnings("unchecked")
	public List<Admin> getAll(int pageNow, int pageSize) {
        String hql="From Admin where type=?";
        Query query = getSession().createQuery(hql).setString(0, "b");
		query.setFirstResult((pageNow - 1) * pageSize);  
        query.setMaxResults(pageSize);  
        List<Admin> admins= query.list();  
        if (admins.size() > 0) {  
            return admins;  
        }
        else{
        	 return null;
        }
	}

	public int findAll() {
		String hql = "from Admin where type=? ";  
        int size = getSession().createQuery(hql).setString(0, "b").list().size();   
        return size;  
	}

	public boolean update(UpdateAdminModel model) throws ParseException {
		String hql="update Admin a set a.edurank=?,a.onworkDate=?,a.birthday=? where a.id=?";
		System.out.println(model.getEdurank());
		System.out.println(model.getBirthday());
		System.out.println(model.getOnworkDate());
		java.text.SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date OnworkDate=DateFormat.getDateInstance().parse(model.getOnworkDate().toString());
		Date Birthday =  formatter.parse(model.getBirthday().toString().trim());
		int id=Integer.valueOf(model.getId());
		int i=getSession().createQuery(hql).setString(0, model.getEdurank()).setDate(1, OnworkDate)
		.setDate(2, Birthday).setInteger(3, id).executeUpdate();
		this.getSession().clear();
		System.out.println(i);
		if(i>0)
			return true;
		else {
			return false;
		}
	}

	public boolean delete(String id) {
		String hql1="delete BookList where admin_id=?";
		getSession().createQuery(hql1).setInteger(0, Integer.valueOf(id)).executeUpdate();
			String hql="delete Admin where id=?";
			int i=getSession().createQuery(hql).setInteger(0, Integer.valueOf(id)).executeUpdate();
			if(i>0)
				return true;
			else   
				return false;
	}

	public Admin searchAdmin(String idno) {
		String hql="from Admin where idno=?";
		Admin admin=(Admin) getSession().createQuery(hql).setString(0, idno.trim()).uniqueResult();
		return admin;
	}

}
