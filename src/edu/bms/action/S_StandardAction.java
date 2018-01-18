package edu.bms.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import edu.bms.entity.Standard;
import edu.bms.service.StandardService;

public class S_StandardAction extends ActionSupport  implements SessionAware,
RequestAware,ModelDriven<Standard>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> session;
	private Map<String, Object> request;
	private Standard standard;
	private StandardService standardService;
	
	public Standard getStandard() {
		return standard;
	}

	public void setStandard(Standard standard) {
		this.standard = standard;
	}

	public StandardService getStandardService() {
		return standardService;
	}

	public void setStandardService(StandardService standardService) {
		this.standardService = standardService;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	@Override
	public Standard getModel() {
		standard=new Standard();
		return standard;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request=arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
	    this.session=arg0;
	}
	
	public String listStandard(){
		List<Standard> standards=standardService.getStandards();
		request.put("standards", standards);
		return "listStandard";
	}
	
	public String updateStandard(){
		System.out.println("超期期限"+standard.getLendLimit());
		System.out.println("ID:"+standard.getId());
		standardService.updateStandard(standard.getId(),standard);
		List<Standard> standards=standardService.getStandards();
		request.put("standards", standards);
		return "updateStandard";
	}
	
	public String toUpdate(){
		List<Standard> standards=standardService.getStandard(standard.getId());
		request.put("standards", standards);
		return "toUpdate";
	}
}
