
<%@page import="com.entity.Medic"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MedicineDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Payments Form</title>
</head>
<body>

<%@ include file="navbar.jsp" %>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

				
<div class="container mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
			<!-- <a class="navbar-brand home-btn" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a> -->
				<div class="card mt-3">
					<div class="card-body">
						<h3 class="text-center p-3" style="color: #298c8c;">Book Medicine</h3>

						<c:if test="${not empty succmsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ succmsg}</p></b></center>
							<c:remove var="succmsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failmsg }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failmsg}</p></center>
							<c:remove var="failmsg" scope="session"/>
						</c:if>
						
						<%
							int Id = Integer.parseInt(request.getParameter("id"));
							
						MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
						
						Medic m = dao.getMedicPayId(Id);

				%>
						<c:if test="${not empty paysucc }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ paysucc}</p></b></center>
							<c:remove var="paysucc" scope="session"/>
						</c:if>

						<c:if test="${not empty payfailed }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ payfailed}</p></center>
							<c:remove var="payfailed" scope="session"/>
						</c:if>

						<form action="payserv" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label"> Amount : </label>
								 <input type="text" class="form-control"
									id="exampleInputEmail1" name="amunt" value="<%=m.getAmount() %>"
									aria-describedby="emailHelp" readonly="readonly" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Card Number : 
									</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="cardno"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email Id :</label>
								<input type="text" class="form-control"
									id="exampleInputEmail1" name="uemail" value="<%=m.getUserId() %>"
									aria-describedby="emailHelp" readonly="readonly" required="required">
							</div>
							<center>
								<button type="submit" class="btn" style="background-color: #298c8c; color:white;">Submit</button>
							</center>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="mt-5">

<%@ include file="footer.jsp" %>

</div>

</body>
</html>