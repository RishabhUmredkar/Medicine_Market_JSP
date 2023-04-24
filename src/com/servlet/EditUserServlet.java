package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/editusserv")
public class EditUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		try {
			
		
		int Id = Integer.parseInt(request.getParameter("ids"));
		String FName = request.getParameter("fName");
		String UEmail = request.getParameter("uemail");
		String Phone = request.getParameter("uphone");
		
		User U = new User();
		U.setId(Id);
		U.setFname(FName);
		U.setEmail(UEmail);
		U.setPhone(Phone);
		
		UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
		
		boolean f = dao.updateUser(U);
		
		if(f)
		{
			session.setAttribute("SuccMsg", "Data Updated Successfully..");
			response.sendRedirect("users.jsp");
		}
		else
		{
			session.setAttribute("FailMsg", "Something Went wrong..");
			response.sendRedirect("users.jsp");
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
