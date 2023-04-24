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


@WebServlet("/admedserv")
public class AddMedicineServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CName = request.getParameter("cname");
		String MName = request.getParameter("mname");
		int Quantity1 = Integer.parseInt(request.getParameter("qunty"));
		
		Medicines md = new Medicines();
		
		/*Medic m = new Medic();
		MedicineDaoImpl dao2 = new MedicineDaoImpl(DBConnect.getCon());
		boolean mdc = dao2.BookMedicine(m);
		
		int qut = m.getQuantity();
		
		System.out.print(qut);
		
		Quantity1 = Quantity1 - qut;*/ 
		
		md.setCompanyName(CName);
		md.setMedicineName(MName);
		md.setQuantity(Quantity1);
		
		try {
			
			HttpSession session = request.getSession();
			
			MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
			boolean b = dao.addMedicine(md);
			
			if(b)
			{
				session.setAttribute("SuccessMsg", "Medicine Added Successfully..");
				response.sendRedirect("medicines.jsp");	
			}
			else {
				session.setAttribute("failedMsgs", "Something wrong..");
				response.sendRedirect("addmedicine.jsp");
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
