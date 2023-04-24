package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Medic;
import com.entity.Medicines;
import com.entity.Payment;

public class MedicineDaoImpl implements MedicineDao{
	
	private Connection con;

	public MedicineDaoImpl(Connection con) {
		super();
		this.con = con;
	}


	@Override
	public boolean addMedicine(Medicines md) {
		boolean b = false;
		
		try {
			
			PreparedStatement ps = con.prepareStatement("insert into medicinetbl(CompanyName, MedicineName, Quantity_) values(?,?,?)");
			
			ps.setString(1, md.getCompanyName());
			ps.setString(2, md.getMedicineName());
			ps.setInt(3, md.getQuantity());
			
			int a = ps.executeUpdate();
			
			if(a>0)
			{
				b=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}


	@Override
	public List<Medicines> Medicinelist() {
		
		List<Medicines> list = new ArrayList<Medicines>();
		Medicines m = null;
		
		try {
			
			PreparedStatement ps = con.prepareStatement("select * from medicinetbl");
			
			ResultSet rs =ps.executeQuery();
			
			while(rs.next())
			{
				m = new Medicines();
				
				m.setId(rs.getInt(1));
				m.setCompanyName(rs.getString(2));
				m.setMedicineName(rs.getString(3));
				m.setQuantity(rs.getInt(4));
				
				list.add(m);
			}
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}


	@Override
	public Medicines getMedicineById(int id) {
		
		Medicines m= null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from medicinetbl where id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				m = new Medicines();
				m.setId(rs.getInt(1));
				m.setCompanyName(rs.getString(2));
				m.setMedicineName(rs.getString(3));
				m.setQuantity(rs.getInt(4));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return m;
	}


	@Override
	public boolean BookMedicine(Medic m) {
boolean b = false;
		
		try {
			PreparedStatement ps = con.prepareStatement("insert into bookmedic(BookingId, MedicineName, Quantity, UserId, Amount) values(?,?,?,?,?)");
			
			ps.setInt(1, m.getBookId());
			ps.setString(2, m.getMedicineName());
			ps.setInt(3, m.getQuantity());
			ps.setString(4, m.getUserId());
			ps.setInt(5, m.getAmount());
			
			int a = ps.executeUpdate();
			
			if(a>0)
			{
				b=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return b;
	}


	@Override
	public List<Medic> Mediclist(String UserId) {
		List<Medic> list2 = new ArrayList<Medic>();
		Medic mdc = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from bookmedic where UserId=?");
			ps.setString(1, UserId);
			
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				mdc = new Medic();
				mdc.setBookId(rs.getInt(1));
				mdc.setMedicineName(rs.getString(2));
				mdc.setQuantity(rs.getInt(3));
				mdc.setUserId(rs.getString(4));
				mdc.setAmount(rs.getInt(5));
				
				list2.add(mdc);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list2;
	}


	@Override
	public Medic getMedicPayId(int id) {
		 
		Medic m = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from bookmedic where BookingId=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				m = new Medic();
				m.setBookId(rs.getInt(1));
				m.setMedicineName(rs.getString(2));
				m.setQuantity(rs.getInt(3));
				m.setUserId(rs.getString(4));
				m.setAmount(rs.getInt(5));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return m;
	}


	@Override
	public boolean getPayment(Payment pay) {
		boolean p = false;
		
		try {
			PreparedStatement ps = con.prepareStatement("insert into payment_tbl(Id, Amount, Card_Number, UserId) values(?,?,?,?)");
			
			ps.setInt(1, pay.getId());
			ps.setInt(2, pay.getAmount());
			ps.setString(3, pay.getCard_Number());
			ps.setString(4, pay.getUserId());
			
			int a = ps.executeUpdate();
			
			if(a>0)
			{
				p = true;
			}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return p;
	}


	@Override
	public List<Payment> Paymentlist() {
		
		List<Payment> list = new ArrayList<Payment>();
		Payment pay = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from payment_tbl");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				pay = new Payment();
				
				pay.setId(rs.getInt(1));
				pay.setAmount(rs.getInt(2));
				pay.setCard_Number(rs.getString(3));
				pay.setUserId(rs.getString(4));
				
				list.add(pay);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}


	@Override
	public int updateQuantity(int Quantity, int id) {
		
		int status = 0;
		
		try {
			PreparedStatement ps = con.prepareStatement("update medicinetbl set Quantity_=? where id=?");
			
			
			ps.setInt(1,Quantity);
			ps.setInt(2,id);
			
			status = ps.executeUpdate();
			
			if(status>0)
			{
				System.out.println("Data Updated");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return status;
	}


	@Override
	public List<Payment> Paymentlist(String UserId) {
		
		List<Payment> list = new ArrayList<Payment>();
		Payment py = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from payment_tbl where UserId=?");
			ps.setString(1, UserId);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				py = new Payment();
				py.setId(rs.getInt(1));
				py.setAmount(rs.getInt(2));
				py.setCard_Number(rs.getString(3));
				py.setUserId(rs.getString(4));
				
				list.add(py);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<Medic> Mediclist() {
		List<Medic> list1 = new ArrayList<Medic>();
		Medic md = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from bookmedic");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				md = new Medic();
				md.setBookId(rs.getInt(1));
				md.setMedicineName(rs.getString(2));
				md.setQuantity(rs.getInt(3));
				md.setUserId(rs.getString(4));
				md.setAmount(rs.getInt(5));
				
				list1.add(md);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list1;
	}


	@Override
	public boolean deleteMedicines(int id) {
		boolean b = false;
		
		try {
			PreparedStatement ps = con.prepareStatement("delete from medicinetbl where id=?");
			
			ps.setInt(1, id);
			int a = ps.executeUpdate();
			
			if(a>0)
			{
				b = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	
	
	

}
