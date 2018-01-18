package edu.bms.service;

import java.util.List;

import edu.bms.dao.NoticeDao;
import edu.bms.entity.Activity;

public class NoticeService {

	private NoticeDao noticeDao;

	public NoticeDao getNoticeDao() {
		return noticeDao;
	}

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	
	public void saveActivity(Activity activity){
		noticeDao.saveActivity(activity);
	}
	
	public List<Activity> getNoticeList(int pageNo,int pageSize){
		return noticeDao.getNoticeList(pageNo, pageSize);
	}
	public int getNoticeSize(int pageNo,int pageSize){
		return noticeDao.getNoticeSize(pageNo, pageSize);
	}
	
	public void deleActivity(int id){
		noticeDao.deleActivity(id);
	}
}
