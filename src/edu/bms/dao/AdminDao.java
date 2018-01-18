package edu.bms.dao;

import edu.bms.entity.Admin;

public class AdminDao extends BaseDao{
   
	public Admin get(String id){
		String hql="FROM Admin a where a.id=?";
		Admin admin=(Admin) getSession().createQuery(hql).setString(0, id).uniqueResult();
		return admin;
	}
	
	
	
	public Admin checkamdin(String idno,String password, String type){
	  String hql="FROM Admin a WHERE a.idno=? and a.password=? and a.type=?";
	  Admin admin=(Admin) getSession().createQuery(hql).setString(0, idno)
			  .setString(1,password)
			  .setString(2, type)
			  .uniqueResult();
       if (admin==null) {
		return null;
	}else {
		return admin;
	}
	
   }

	public void saveOrUpdate(Admin admin) {
		getSession().save(admin);
	}

	public void update(Admin admin, String id) {
		String hql="UPDATE Admin a set a.sex=?,a.email=?,a.phone=?,a.nation=?,a.address=? WHERE a.id=?";
		getSession().createQuery(hql).setString(0, admin.getSex())
				.setString(1, admin.getEmail())
				.setString(2, admin.getPhone())
				.setString(3, admin.getNation())
				.setString(4, admin.getAddress())
				.setString(5, id)
				.executeUpdate();
	}



	public boolean checkIdno(String idno) {
        String hqlString="From Admin where idno=?";
        Admin a=(Admin) getSession().createQuery(hqlString).setString(0, idno).uniqueResult();
        if(a==null){
    		return true;//验证成功
        }
		return false;//验证失败
	}



	public boolean checkSystemAdmin(String idno, String passwordMd5) {
		System.out.println("dao checkSystemAdmin");
		String hql="From Admin where idno=? and password=? and type=?";
		Admin systemAdmin=(Admin) getSession().createQuery(hql).setString(0, idno).setString(1, passwordMd5).setString(2, "s").uniqueResult();
		if(null==systemAdmin){
			return false;
		}
		else {
			return true;
		}
	}



	public Admin showSystemAdmin(String idno) {
		System.out.println("dao showSystemAdmin");
		String hql="From Admin where idno=?";
		Admin systemAdmin=(Admin) getSession().createQuery(hql).setString(0, idno).uniqueResult();
		if(null!=systemAdmin)
			return systemAdmin;
		else {
			System.out.println("systemAdmin is null");
			return null;
		}
	}



	public boolean updateSystem(String idno, Admin admin) {
		// TODO Auto-generated method stub
		System.out.println("updateSystemAdmin");
		String hql="UPDATE Admin a set a.sex=?,a.email=?,a.phone=?,a.nation=?,a.address=? WHERE a.idno=?";
		int i=getSession().createQuery(hql).setString(0, admin.getSex())
				.setString(1, admin.getEmail())
				.setString(2, admin.getPhone())
				.setString(3, admin.getNation())
				.setString(4, admin.getAddress())
				.setString(5, idno)
				.executeUpdate();
		if(i==1)
		return true;
		else{
			return false;
		}
	}
}
