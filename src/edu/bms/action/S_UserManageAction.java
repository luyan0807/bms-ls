package edu.bms.action;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import edu.bms.entity.Admin;
import edu.bms.model.PageShow;
import edu.bms.model.UpdateAdminModel;
import edu.bms.service.BookListService;
import edu.bms.service.S_UserManageService;

public class S_UserManageAction extends ActionSupport implements RequestAware,
ModelDriven<UpdateAdminModel>,Preparable{
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;
	private S_UserManageService userManageService;
	
	//分页的属性
	private int pageNow = 1;// 动态改变 页面取得  
    private int pageSize = 10;// 固定不变 
    private int totalPage=0;
    
    //因为admin和booklist外键关联  所以删除时  需要先删除booklist的内容
    private BookListService bookListService;
    
    //需要修改的属性   要是用Admin接收    就会有大量数据冗余  
    //可以把它封装成一个类    放在model里面   
    //也可以直接传   就是数据不安全
    /*
     * private String edurank;
       private Date onworkDate;
       private Date birthday;
       private String id;
    */
    private UpdateAdminModel model;
    
    //删除id
    private String id;
    
    //查找的身份证号码
    private String idno;
    
	public void setModel(UpdateAdminModel model) {
		this.model = model;
	}

	public String showAll(){//展示所有的图书管理员
		List<Admin> admins=userManageService.getAll(pageNow,pageSize);
		request.put("admins",admins);
		//分页
        PageShow page = new PageShow(pageNow, userManageService.findAll(), pageSize);
        totalPage=userManageService.findAll()/pageSize;
        request.put("page", page);
		return SUCCESS;
	}
	
	public String updateAdmin() throws ParseException{
		System.out.println("update");
	    boolean flag=userManageService.update(model);
	    if(flag){
	    	showAll();
	    	return SUCCESS;
	    }
	    else return ERROR;
	}
	
	public String deleteAdmin(){
		System.out.println("delete");
		boolean flag=userManageService.delete(id);
		if(flag){
			showAll();
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String searchAdmin(){
		System.out.println("searchAdmin");
		Admin admin=userManageService.searchAdmin(idno);
		System.out.println(idno);
		request.put("admins", admin);
		return SUCCESS;
	}
	
	public void prepareUpdateAdmin(){
		System.out.println("prepareUpdateAdmin");
		model=new UpdateAdminModel();
	}
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
	public Map<String, Object> getRequest() {
		return request;
	}
	public S_UserManageService getUserManageService() {
		return userManageService;
	}
	public void setUserManageService(S_UserManageService userManageService) {
		this.userManageService = userManageService;
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

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UpdateAdminModel getModel() {
		// TODO Auto-generated method stub
		return model;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BookListService getBookListService() {
		return bookListService;
	}

	public void setBookListService(BookListService bookListService) {
		this.bookListService = bookListService;
	}

	public String getIdno() {
		return idno;
	}

	public void setIdno(String idno) {
		this.idno = idno;
	}

	
	
}
