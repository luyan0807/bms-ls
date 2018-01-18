package edu.bms.entity;

import java.util.Date;

public class Handle {
	private String id;
	private String idno;//证件号
	private String level;//会员等级
	private String isbn;//ISBN
	private String bname;//书名
	private String barcode;//条形码
	private Date borrowDate;//借阅日期
	private Date returnDate;//归还日期
	private int day;//超期天数
	private Double shmoney;//应缴费用
	private Double almoney;//已交费用
	private String hname;//处理人
	private String status;//审核状态
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getIdno() {
		return idno;
	}
	public void setIdno(String idno) {
		this.idno = idno;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public Date getBorrowDate() {
		return borrowDate;
	}
	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public Double getShmoney() {
		return shmoney;
	}
	public void setShmoney(Double shmoney) {
		this.shmoney = shmoney;
	}
	public Double getAlmoney() {
		return almoney;
	}
	public void setAlmoney(Double almoney) {
		this.almoney = almoney;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}

}
