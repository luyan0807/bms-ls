package edu.bms.service;

import java.util.List;

import edu.bms.dao.MessageDao;
import edu.bms.entity.Message;

public class MessageService {
	private MessageDao messageDao;

	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
	
	public void saveMessage(Message message){
		messageDao.saveMessage(message);
	}
	public List<Message> getMessageList(int pageNo,int pageSize){
		return messageDao.getMessageList(pageNo, pageSize);
	}
	public int getMessageSize(int pageNo,int pageSize){
		return messageDao.getMessageSize(pageNo, pageSize);
	}
	
	public void  deleMessage(int id) {
		messageDao.deleMessage(id);
	}

}
