package com.DAO;

import java.util.List;

import com.entity.User;

public interface UserDao {
	
	public boolean userRegister(User us);
	
	public User login(String email, String password);
	
	public List<User> Userslist();
	
	public User getUserById(int id);
	
	public boolean updateUser(User us);
	
	public boolean deleteUser(int id);
	
}
