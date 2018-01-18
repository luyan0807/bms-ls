package edu.bms.entity;

public class Standard {
	private Integer id;
	private int lendNum;
	private int lendLimit;
	private double fine;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getLendNum() {
		return lendNum;
	}
	public void setLendNum(int lendNum) {
		this.lendNum = lendNum;
	}
	public int getLendLimit() {
		return lendLimit;
	}
	public void setLendLimit(int lendLimit) {
		this.lendLimit = lendLimit;
	}
	public double getFine() {
		return fine;
	}
	public void setFine(double fine) {
		this.fine = fine;
	}
	
	
}
