<%@page import="com.DAO.UserDaoImpl"%>
<%@page import="com.entity.Medicines"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MedicineDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Booking Medicine</title>

<style type="text/css">
.home-btn{
color:#298c8c;
}
.home-btn:hover{
color:#298c8c;
}

</style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

<div class="container mt-4">

<h3 class="text-center p-3" style="color: #298c8c;">Medicine List</h3>
	
						<% MedicineDaoImpl dao2 = new MedicineDaoImpl(DBConnect.getCon());
							List<Medicines> list2 = dao2.Medicinelist();
							
						%>
						
						<c:if test="${not empty succmsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ succmsg}</p></b></center>
							<c:remove var="succmsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failmsg }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failmsg}</p></center>
							<c:remove var="failmsg" scope="session"/>
						</c:if>

<a class="navbar-brand home-btn" href="homeuser.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
<table class="table table-striped table-hover table-bordered text-center mt-4">
  <thead style=" background-color: #298c8c; color:#DCDCDC;">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Company Name</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Quantity</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
  <% for(Medicines m : list2)
  {
	  %>
  <tbody>
    <tr>
      <th><%= m.getId() %></th>
      <td><%= m.getCompanyName() %></td>
      <td><%= m.getMedicineName() %></td>
      <td><%= m.getQuantity() %></td>
      <td>
      <a href="bookingmed.jsp?id=<%=m.getId()%>" class="btn btn-md btn-success"><i class="fa-solid fa-pen-to-square fa-1x"></i> Book</a>
      </td> 
    </tr>
     <%}  %> 
  </tbody>
</table>
</div>

<div class="mt-5">

<%@ include file="footer.jsp" %>

</div>

</body>
</html>