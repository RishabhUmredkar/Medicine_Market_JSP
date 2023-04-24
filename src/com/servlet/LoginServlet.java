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


@WebServlet("/logiserv")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			
			UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
			
			String email = request.getParameter("email");
			String pass = request.getParameter("password");
			
			if("admin@gmail.com".equals(email) && "admin".equals(pass))
			{
				User us=new User();
				us.setFname("admin");
				session.setAttribute("usobj", us);
				
				response.sendRedirect("home.jsp");
			}
			else
			{
				User us =dao.login(email, pass);
				
				if(us!=null)
				{
					session.setAttribute("usobj", us);
					session.setAttribute("usemil", us.getEmail());
					
					response.sendRedirect("homeuser.jsp");
				}
				else
				{
					response.sendRedirect("login.jsp");
				}
				
				response.sendRedirect("login.jsp");
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
