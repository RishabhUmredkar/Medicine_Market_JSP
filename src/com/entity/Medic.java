package com.entity;

public class Medic {
	
	private int BookId;
	private String MedicineName;
	private int Quantity;
	private String UserId;
	private int Amount1;

	
	public int getBookId() {
		return BookId;
	}
	public void setBookId(int bookId) {
		BookId = bookId;
	}
	public String getMedicineName() {
		return MedicineName;
	}
	public void setMedicineName(String medicineName) {
		MedicineName = medicineName;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public int getAmount() {
		return Amount1;
	}
	public void setAmount(int amount) {
		
		Amount1 = amount;
	}


	@Override
	public String toString() {
		return "Medic [BookId=" + BookId + ", MedicineName=" + MedicineName + ", Quantity=" + Quantity + ", UserId="
				+ UserId + ", Amount1=" + Amount1 + "]";
	}


}
