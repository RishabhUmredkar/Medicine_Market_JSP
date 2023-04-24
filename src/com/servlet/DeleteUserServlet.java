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


@WebServlet("/delusserv")
public class DeleteUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			int Id = Integer.parseInt(request.getParameter("id"));
			
			UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
			
			boolean g = dao.deleteUser(Id);
			
			if(g)
			{
				session.setAttribute("SuccMsg", "Record Deleted Successfully..");
				response.sendRedirect("users.jsp");
			}
			else
			{
				session.setAttribute("FailMsg", "Something went wrong..");
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
