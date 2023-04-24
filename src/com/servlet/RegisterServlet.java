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


@WebServlet("/regserv")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("fname");
		String email = request.getParameter("email");
		String phno = request.getParameter("phone");
		String pswd = request.getParameter("pass");
		String check = request.getParameter("check");
		
		User us = new User();
		
		us.setFname(name);
		us.setEmail(email);
		us.setPhone(phno);
		us.setPswd(pswd);
		
		try {
			HttpSession session = request.getSession();
			
			if(check!=null)
			{
				UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
				boolean f= dao.userRegister(us);
				
				if(f){
					session.setAttribute("SuccessMsg", "Registred Successfully..");
					response.sendRedirect("register.jsp");	
				}
				else{
					session.setAttribute("failedMsgs", "Something wrong on server..");
					response.sendRedirect("register.jsp");	
				}
			}
			else{
				session.setAttribute("failedMsgs", "Please check Agree terms & condition..");
				response.sendRedirect("register.jsp");	
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
