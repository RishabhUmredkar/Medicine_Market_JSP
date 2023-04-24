package com.entity;

public class Payment {
	
	private int id;
	private int Amount;
	private String Card_Number;
	private String UserId;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public String getCard_Number() {
		return Card_Number;
	}
	public void setCard_Number(String card_Number) {
		Card_Number = card_Number;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	
	@Override
	public String toString() {
		return "Payment [id=" + id + ", Amount=" + Amount + ", Card_Number=" + Card_Number + ", UserId=" + UserId + "]";
	}
	

}
