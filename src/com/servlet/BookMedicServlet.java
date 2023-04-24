package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MedicineDaoImpl;
import com.DB.DBConnect;
import com.entity.Medic;
import com.entity.Medicines;


@WebServlet("/bookmedicserv")
public class BookMedicServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session = request.getSession();
		
		try {
			int Id =Integer.parseInt(request.getParameter("id"));
			String MedicName = request.getParameter("mname");
			int QuantityNew =Integer.parseInt(request.getParameter("qunty"));
			String Email = request.getParameter("email");
			int Quantity = 0;
			
			int QuantityOld =Integer.parseInt(request.getParameter("oldqty"));
			System.out.println(QuantityOld);
			Quantity = QuantityOld -  QuantityNew;
			System.out.println(Quantity);
			
			MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
			
			int Amount = 30 * QuantityNew;
			
			int status = dao.updateQuantity(Quantity, Id);
	
			
			Medic m = new Medic();
			m.setMedicineName(MedicName);
			m.setQuantity(QuantityNew);
			m.setUserId(Email);
			m.setAmount(Amount);
			
			
			boolean f = dao.BookMedicine(m);
			
			if(f)
			{
				session.setAttribute("succmsg", "Book Medicine Successful..");
				response.sendRedirect("usmedicinebook.jsp");
			}
			else{
				session.setAttribute("failmsg", "Something went wrong..");
				response.sendRedirect("bookingmed.jsp");
				
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
