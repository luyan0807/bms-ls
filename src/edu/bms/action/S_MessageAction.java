package edu.bms.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.bms.entity.Message;
import edu.bms.model.Mess;
import edu.bms.model.PageModel;
import edu.bms.service.MessageService;

public class S_MessageAction extends ActionSupport 
		implements SessionAware,RequestAware,ModelDriven<Mess>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> session;
	private Map<String, Object> request;
	
	private Mess mess;
	
	private MessageService messageService;
	
	private PageModel<Message> pageModel;

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}
		
	public Mess getMess() {
		return mess;
	}

	public void setMess(Mess mess) {
		this.mess = mess;
	}

	@Override
	public Mess getModel() {
		mess=new Mess();
		return mess;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public PageModel<Message> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<Message> pageModel) {
		this.pageModel = pageModel;
	}

	public void getMessageList(){
		pageModel=new PageModel<>();
		pageModel.setPageSize(10);
		if(mess.getPageNo()!=0){
			pageModel.setPageNo(mess.getPageNo());
		}else {
			pageModel.setPageNo(1);
		}
		
		List<Message> messages=messageService.getMessageList(
				pageModel.getPageNo(), pageModel.getPageSize());
		int size=messageService.getMessageSize(pageModel.getPageNo(),
				pageModel.getPageSize());
		pageModel.setList(messages);
		pageModel.setTotalRecords(size);
		request.put("pageModel", pageModel);
	}
	public String toMessage(){
		return "toMessage";
	}
	
	public String toMessageList(){
		getMessageList();
		request.put("date",new Date());
		return "toMessageList";
	}

	public String saveMessage() throws IOException{
		Message message=new Message();
		message.setTopic(mess.getTopic());
		message.setContent(mess.getContent());
		message.setDate(new Date());
		messageService.saveMessage(message);
		getMessageList();
		return "saveMessage";
	}
	
	public String deleMessage(){
		messageService.deleMessage(mess.getId());
		getMessageList();
		return "deleMessage";
	}
}
