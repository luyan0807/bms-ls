package edu.bms.service;

import java.text.ParseException;
import java.util.List;

import edu.bms.dao.BookListDao;
import edu.bms.dao.S_UserManageDao;
import edu.bms.entity.Admin;
import edu.bms.model.UpdateAdminModel;

public class S_UserManageService {
   private S_UserManageDao userManageDao;
   private BookListDao bookListDao;

public S_UserManageDao getUserManageDao() {
	return userManageDao;
}

public void setUserManageDao(S_UserManageDao userManageDao) {
	this.userManageDao = userManageDao;
}

public List<Admin> getAll(int pageNow, int pageSize) {
	// TODO Auto-generated method stub
	return userManageDao.getAll(pageNow,pageSize);
}

public BookListDao getBookListDao() {
	return bookListDao;
}

public void setBookListDao(BookListDao bookListDao) {
	this.bookListDao = bookListDao;
}

public int findAll() {
	// TODO Auto-generated method stub
	return userManageDao.findAll();
}

public boolean update(UpdateAdminModel model) throws ParseException {
	// TODO Auto-generated method stub
	return userManageDao.update(model);
}

public boolean delete(String id) {
	// TODO Auto-generated method stub
	return userManageDao.delete(id);
}

public Admin searchAdmin(String idno) {
	// TODO Auto-generated method stub
	return userManageDao.searchAdmin(idno);
}
}
