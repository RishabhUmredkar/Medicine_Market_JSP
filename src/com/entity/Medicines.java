package com.entity;

public class Medicines {
	
	private int id;
	private String CompanyName;
	private String MedicineName;
	private int Quantity;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyName() {
		return CompanyName;
	}
	public void setCompanyName(String companyName) {
		CompanyName = companyName;
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
	
	@Override
	public String toString() {
		return "Medicines [id=" + id + ", CompanyName=" + CompanyName + ", MedicineName=" + MedicineName + ", Quantity="
				+ Quantity + "]";
	}
	
	
	
	
	

}
