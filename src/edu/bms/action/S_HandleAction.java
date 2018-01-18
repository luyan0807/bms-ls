package edu.bms.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.bms.entity.Handle;
import edu.bms.model.HandleModel;
import edu.bms.model.PageModel;
import edu.bms.service.HandleService;

public class S_HandleAction extends ActionSupport implements SessionAware,
RequestAware,ModelDriven<HandleModel>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String idd;
	private HandleService handleService;
	private Map<String, Object> request;
	private Map<String,Object> session;
	private HandleModel handleModel;
	private PageModel<Handle> pageModel;



	public String getIdd() {
		return idd;
	}

	public void setIdd(String idd) {
		this.idd = idd;
	}

	public HandleService getHandleService() {
		return handleService;
	}

	public void setHandleService(HandleService handleService) {
		this.handleService = handleService;
	}
	
	public HandleModel getHandleModel() {
		return handleModel;
	}

	public void setHandleModel(HandleModel handleModel) {
		this.handleModel = handleModel;
	}

	public PageModel<Handle> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<Handle> pageModel) {
		this.pageModel = pageModel;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	//显示
	public String handle(){
		System.out.println("进入handle方法");
		request.put("handle", handleService.getAll());
		return "handle";
	}

	@Override
	public HandleModel getModel() {
		handleModel=new HandleModel();
		return handleModel;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
		
	}
	
	public void getHandleList(){
		pageModel=new PageModel<>();
		pageModel.setPageSize(10);
		if(handleModel.getPageNo()!=0){
			pageModel.setPageNo(handleModel.getPageNo());
		}else {
			pageModel.setPageNo(1);
		}
		
		List<Handle> hands=handleService.getHandleList(
				pageModel.getPageNo(), pageModel.getPageSize());
		int size=handleService.getHandleSize(pageModel.getPageNo(),
				pageModel.getPageSize());
		pageModel.setList(hands);
		pageModel.setTotalRecords(size);
		request.put("pageModel", pageModel);
	}
	public String toHandleList(){
		/*getHandleList();
		return "toHandleList";*/
		System.out.println("进入tohandlelist方法");
		request.put("handle", handleService.getAll());
		getHandleList();
		return "toHandleList";
	}
	public String agree(){
		System.out.println("agree");
		System.out.println(idd);
		handleService.agree(idd);
		toHandleList();
		return "agree";
	}
	
}
