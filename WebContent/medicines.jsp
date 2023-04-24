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
<title>Medicine | Medicines Info </title>

<style type="text/css">
.home-btn{
color:#298c8c;
}
.home-btn:hover{
color:#298c8c;
}
.madd-btn{
margin-top: 4px; 
border-style: solid;
border-color: #298c8c;
color: #298c8c;
border-radius: 4px;
}
.madd-btn:hover{
border-color: #298c8c;
background-color: #298c8c;
color: #DCDCDC;
}

</style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

<div class="container mt-4">

						<c:if test="${not empty SuccessMsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:18pc; border-radius:6px;padding:6px;">${ SuccessMsg}</p></b></center>
							<c:remove var="SuccessMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsgs }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failedMsgs}</p></center>
							<c:remove var="failedMsgs" scope="session"/>
						</c:if>
						
						
						<% MedicineDaoImpl dao = new MedicineDaoImpl(DBConnect.getCon());
						List<Medicines> list = dao.Medicinelist(); %>

<a class="navbar-brand home-btn" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
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
  
  <% for(Medicines m : list)
  {
	  %>
  <tbody>
    <tr>
      <th><%= m.getId() %></th>
      <td><%= m.getCompanyName() %></td>
      <td><%= m.getMedicineName() %></td>
      <td><%= m.getQuantity() %></td>
      <td>
      <a href="delmedicineserv?id=<%=m.getId() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can fa-1x"></i></a>
      </td> 
    </tr>
     <%} %> 
  </tbody>
</table>
</div>

<center>
<a  href="addmedicine.jsp">
<button type="button" class="navbar-brand madd-btn"><i class="fa-regular fa-square-plus"></i> Add Medicine</button></a>
</center>

<div class="mt-5">

<%@ include file="footer.jsp" %>

</div>
</body>
</html>