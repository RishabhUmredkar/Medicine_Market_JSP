package com.DAO;

import java.util.List;

import com.entity.Medic;
import com.entity.Medicines;
import com.entity.Payment;

public interface MedicineDao {
	
	public boolean addMedicine(Medicines md);
	
	public List<Medicines> Medicinelist();
	
	public Medicines getMedicineById(int id);
	
	public boolean BookMedicine(Medic m);
	
	public List<Medic> Mediclist(String UserId);
	
	public Medic getMedicPayId(int id);
	
	public boolean getPayment(Payment pay);
	
	public List<Payment> Paymentlist();
	
	public int updateQuantity(int Quantity,int id);
	
	public List<Payment> Paymentlist(String UserId);
	
	public List<Medic> Mediclist();
	
	public boolean deleteMedicines(int id);

}
