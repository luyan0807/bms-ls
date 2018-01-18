package edu.bms.model;

import edu.bms.entity.Message;

public class Mess extends Message{
	private int pageNo;
	private int pageSize;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
