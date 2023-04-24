<%@page import="com.entity.Medic"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MedicineDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Medicine Booking</title>

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

<%
	MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
	List<Medic> list = dao.Mediclist();
%>

<div class="container mt-4">
<center><h3 style=" color: #298c8c;">Medicine List</h3></center>

<a class="navbar-brand home-btn" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
<table class="table table-striped table-hover table-bordered text-center mt-4">
  <thead style=" background-color: #298c8c; color:#DCDCDC;">
    <tr>
     <th scope="col">Id</th>
      <th scope="col">Medicine Name</th>
      <th scope="col">Quantity</th>
      <th scope="col">UserId</th>
      <th scope="col">Amount</th>
    </tr>
  </thead>
  
  <%
  	for(Medic m : list)
  	{
  		
  %>
  
  <tbody>
    <tr>
      <th><%=m.getBookId() %></th>
      <td><%=m.getMedicineName() %></td>
      <td><%=m.getQuantity() %></td>
      <td><%=m.getUserId() %></td>
      <td><%=m.getAmount() %></td>
    </tr>
   
    <%} %>
  </tbody>
</table>
</div>

<div class="mt-5">

<%@ include file="footer.jsp" %>

</div>
</body>
</html>