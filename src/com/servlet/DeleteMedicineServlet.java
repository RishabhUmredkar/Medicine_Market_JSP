package com.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MedicineDaoImpl;
import com.DB.DBConnect;


@WebServlet("/delmedicineserv")
public class DeleteMedicineServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			int Id = Integer.parseInt(request.getParameter("id"));
			
			MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
			boolean b = dao.deleteMedicines(Id);
			
			if(b)
			{
				session.setAttribute("SuccessMsg", "Medicine Delete Successfully..");
				response.sendRedirect("medicines.jsp");
			}
			else{
				session.setAttribute("failedMsgs", "Something Went Wrong..");
				response.sendRedirect("medicines.jsp");
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
