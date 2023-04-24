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
import com.entity.Payment;


@WebServlet("/payserv")
public class PaymentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			
			int Amount = Integer.parseInt(request.getParameter("amunt"));
			String CardNo =request.getParameter("cardno");
			String UserId = request.getParameter("uemail");
			
			Payment pay = new Payment();
			pay.setAmount(Amount);
			pay.setCard_Number(CardNo);
			pay.setUserId(UserId);
			
			MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
			boolean p = dao.getPayment(pay);
			
			if(p)
			{
				session.setAttribute("paysucc", "Payment Successfully Done !!");
				response.sendRedirect("paymenthistroy.jsp");
			}
			else
			{
				session.setAttribute("payfailed", "Something Gone wrong, please Check Again!!");
				response.sendRedirect("payform.jsp");
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
