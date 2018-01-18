package edu.bms.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import edu.bms.model.PageShow;
import edu.bms.service.BookCatalogService;

public class BorrowSortAction extends ActionSupport implements SessionAware,RequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;
	private Map<String, Object> session;
	//分页属性
	private int pageNow = 1;// 动态改变 页面取得  
    private int pageSize = 10;// 固定不变 
    private int totalPage=0;
    
    
    private BookCatalogService bookCatalogService;
    
    
    
    

	@Override
	public String execute() throws Exception {
		List<Object[]> lists=bookCatalogService.borrowSort(pageNow,pageSize);
		request.put("lists", lists);
		//分页
		 PageShow page = new PageShow(pageNow, bookCatalogService.findAll(), pageSize);
	     totalPage=bookCatalogService.findAll()/pageSize;
	     request.put("page", page);
	     
	     
		return SUCCESS;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}

	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public BookCatalogService getBookCatalogService() {
		return bookCatalogService;
	}

	public void setBookCatalogService(BookCatalogService bookCatalogService) {
		this.bookCatalogService = bookCatalogService;
	}

}
