package edu.bms.entity;

import java.util.Date;

public class MyBookshelf {

	private Integer id ;
	private Reader reader;
	private BookInfo bookInfo;
	private Integer state;
	private Date timeDate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Reader getReader() {
		return reader;
	}
	public void setReader(Reader reader) {
		this.reader = reader;
	}
	public BookInfo getBookInfo() {
		return bookInfo;
	}
	public void setBookInfo(BookInfo bookInfo) {
		this.bookInfo = bookInfo;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getTimeDate() {
		return timeDate;
	}
	public void setTimeDate(Date timeDate) {
		this.timeDate = timeDate;
	}

}
