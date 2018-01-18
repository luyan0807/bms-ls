package edu.bms.action;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.bms.entity.Activity;
import edu.bms.model.Notice;
import edu.bms.model.PageModel;
import edu.bms.service.NoticeService;


public class S_NoticeAction extends ActionSupport  implements SessionAware,
RequestAware,ModelDriven<Notice>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> session;
	private Map<String, Object> request;

	private Notice notice;

	private NoticeService noticeService;
	
	private PageModel<Activity> pageModel;
	
	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	@Override
	public Notice getModel() {
	    notice=new Notice();
		return notice;
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
	}
	
	public NoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	public PageModel<Activity> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<Activity> pageModel) {
		this.pageModel = pageModel;
	}

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public void getNoticeList(){
		pageModel=new PageModel<>();
		pageModel.setPageSize(10);
		if(notice.getPageNo()!=0){
			pageModel.setPageNo(notice.getPageNo());
		}else {
			pageModel.setPageNo(1);
		}
		
		List<Activity> activities=noticeService.getNoticeList(
				pageModel.getPageNo(), pageModel.getPageSize());
		int size=noticeService.getNoticeSize(pageModel.getPageNo(),
				pageModel.getPageSize());
		pageModel.setList(activities);
		pageModel.setTotalRecords(size);
		request.put("pageModel", pageModel);
	}
	public String toNotice(){
		return INPUT;
	}
	
	public String toNoticeList(){
		getNoticeList();
		request.put("date",new Date());
		return "toNoticeList";
	}
	public String saveNotice() throws IOException{
		Activity activity=new Activity();
		
		System.err.println(notice.getEnrollTime());
		
		activity.setActContent(notice.getActContent());
		activity.setActivityAddr(notice.getActivityAddr());
		activity.setActivityCum(notice.getActivityCum());
		activity.setActivityDate(notice.getActivityDate());
		activity.setActor(notice.getActor());
		activity.setEnrollTime(notice.getEnrollTime());
		activity.setPromptWarmth(notice.getPromptWarmth());
		activity.setPublishDate(new Date());
		activity.setSpeaker(notice.getSpeaker());
		activity.setTopical(notice.getTopical());
		
		
		
		String fname=UUID.randomUUID().toString().replaceAll("-", "")+".jpg";
		String path =ServletActionContext.getServletContext().getRealPath("/upload/");
		FileOutputStream os;
		if(notice.getFile()!=null){
			try {
				System.out.println("fileFileName:"+notice.getFileFileName());
				os = new FileOutputStream(path+"\\"+ fname);
				System.out.println("fname:"+fname);
				FileInputStream in=new FileInputStream(notice.getFile());
				System.out.println("file:"+notice.getFile());
				byte[] buff=new byte[1024];
				while(in.read(buff)!=-1){
					os.write(buff);
				}
				activity.setImage(fname);
				os.close();
				in.close();
			} catch (FileNotFoundException e) {
			
				e.printStackTrace();
			}
		}else {
			activity.setImage(null);
		}
		noticeService.saveActivity(activity);
		getNoticeList();
		return "saveNotice";
	}
	
	public String deleActivity(){
		noticeService.deleActivity(notice.getId());
		getNoticeList();
		return "deleActivity";
	}
}
