package edu.bms.service;

import java.util.List;

import edu.bms.dao.BaseDao;
import edu.bms.dao.HandleDao;
import edu.bms.entity.Handle;

public class HandleService extends BaseDao{
	
	private HandleDao handleDao;
	
	public HandleDao getHandleDao() {
		return handleDao;
	}

	public void setHandleDao(HandleDao handleDao) {
		this.handleDao = handleDao;
	}

	public List<Handle> getAll(){
		return handleDao.getAll();
	}
	
	public List<Handle> getHandleList(int pageNo,int pageSize){
		return handleDao.getHandleList(pageNo, pageSize);
	}
	public int getHandleSize(int pageNo,int pageSize){
		return handleDao.getHandleSize(pageNo, pageSize);
	}
	
	//审核
	public void agree(String id){
		handleDao.agree(id);
	}
}
