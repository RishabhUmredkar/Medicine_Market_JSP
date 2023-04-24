package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.User;

public class UserDaoImpl implements UserDao {

	private Connection con;

	public UserDaoImpl(Connection con) {
		super();
		this.con = con;
	}
	
	

	@Override
	public boolean userRegister(User us) {
		boolean f=false;
		
		try {
			
			PreparedStatement ps = con.prepareStatement("INSERT INTO registertbl(Name,Email,Phone,Password) value(?,?,?,?)");
			
			ps.setString(1, us.getFname());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhone());
			ps.setString(4, us.getPswd());
			
			int a = ps.executeUpdate();
			
			if(a>0){
				f=true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return f;
	}



	@Override
	public User login(String email, String password) {
		
		User us=null;
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from registertbl where email=? and password=?");
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				us=new User();
			
				us.setId(rs.getInt(1));
				us.setFname(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setPswd(rs.getString(5));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return us;
	}



	@Override
	public List<User> Userslist() {
		
		List<User> list =new ArrayList<User>();
		User u = null;
		
		try {
			
			PreparedStatement ps = con.prepareStatement("select * from registertbl");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				u=new User();
				
				u.setId(rs.getInt(1));
				u.setFname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPhone(rs.getString(4));
				
				list.add(u);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}



	@Override
	public User getUserById(int id) {
		User u = null;
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from registertbl where id=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				u = new User();
				u.setId(rs.getInt(1));
				u.setFname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPhone(rs.getString(4));
				u.setPswd(rs.getString(5));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}



	@Override
	public boolean updateUser(User us) {
		
		boolean b = false;
		
		try {
			
			PreparedStatement pst = con.prepareStatement("update registertbl set Name=?, Email=?, Phone=? where id=?");
			
			pst.setString(1, us.getFname());
			pst.setString(2, us.getEmail());
			pst.setString(3, us.getPhone());
			pst.setInt(4, us.getId());
			
			int a = pst.executeUpdate();
			
			if(a>0)
			{
				b = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return b;
	}



	@Override
	public boolean deleteUser(int id) {
		boolean g = false;
		
		try {
			PreparedStatement ps = con.prepareStatement("delete from registertbl where id=?");
			
			ps.setInt(1, id);
			int a = ps.executeUpdate();
			
			if(a>0)
			{
				g = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return g;
	}

	
	
	
}
