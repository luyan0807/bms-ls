package edu.bms.service;

import java.util.List;

import edu.bms.dao.StandardDao;
import edu.bms.entity.Standard;


public class StandardService {
    private StandardDao standardDao;

	public StandardDao getStandardDao() {
		return standardDao;
	}

	public void setStandardDao(StandardDao standardDao) {
		this.standardDao = standardDao;
	}
    
	//更改标准
	public void updateStandard(int id,Standard standard){
		standardDao.updateStandard(id,standard);
	}
	//获取标准
	public List<Standard> getStandards(){
		return standardDao.getStandards();
	}
	public List<Standard> getStandard(int id){
		return standardDao.getStandard(id);
	}
}
