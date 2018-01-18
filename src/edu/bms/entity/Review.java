package edu.bms.entity;

import java.util.Date;

public class Review {

	private Integer id;
	private String title;//标题
	private String content;//内容
	private int browseNum;//浏览量
	private Date  reviewDate;
	private BookInfo bookInfo;
	private Reader reader;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getBrowseNum() {
		return browseNum;
	}
	public void setBrowseNum(int browseNum) {
		this.browseNum = browseNum;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public BookInfo getBookInfo() {
		return bookInfo;
	}
	public void setBookInfo(BookInfo bookInfo) {
		this.bookInfo = bookInfo;
	}
	public Reader getReader() {
		return reader;
	}
	public void setReader(Reader reader) {
		this.reader = reader;
	}
	
}
