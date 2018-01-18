package edu.bms.action;

import java.io.ByteArrayInputStream;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import edu.bms.utils.SecurityCode;
import edu.bms.utils.SecurityImage;

public class SecurityCodeImageAction extends ActionSupport  implements SessionAware{

	private static final long serialVersionUID = 1496691731440581303L;  
    //图片流  
    private ByteArrayInputStream imageStream;  
    //session域  
    private Map<String, Object> session ;  
    private String password;  
    
    public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public ByteArrayInputStream getImageStream() {  
        return imageStream;  
    }  
    public void setImageStream(ByteArrayInputStream imageStream) {  
        this.imageStream = imageStream;  
    }  
    public void setSession(Map<String, Object> session) {  
        this.session = session;  
    }   
    public String execute() throws Exception {  
        //如果开启Hard模式，可以不区分大小写  
        //String securityCode = SecurityCode.getSecurityCode(4,SecurityCodeLevel.Hard, false).toLowerCase();  
          
        //获取默认难度和长度的验证码  
        String securityCode = SecurityCode.getSecurityCode();  
        imageStream = SecurityImage.getImageAsInputStream(securityCode);  
        //放入session中  
        session.put("securityCode", securityCode); 
  
        return SUCCESS;  
    }  
}
