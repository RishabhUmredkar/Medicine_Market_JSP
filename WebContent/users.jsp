<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | User</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	
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

<%
	UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
	List<User> list = dao.Userslist();	
%>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

						

<div class="container mt-4">
<center><h3 style=" color: #298c8c;">Users List</h3></center>

						<c:if test="${not empty SuccMsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ SuccMsg}</p></b></center>
							<c:remove var="SuccMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty FailMsg }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ FailMsg}</p></center>
							<c:remove var="FailMsg" scope="session"/>
						</c:if>

<a class="navbar-brand home-btn" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
<table class="table table-striped table-bordered text-center mt-4">
  <thead style=" background-color: #298c8c; color:#DCDCDC;">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
  <%for(User u : list)
	{ %>
  <tbody>
    <tr>
      <th><%= u.getId() %></th>
      <td><%= u.getFname() %></td>
      <td><%= u.getEmail() %></td>
      <td><%= u.getPhone() %></td>
      <td>
      <a href="usedit.jsp?id=<%=u.getId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square fa-1x"></i></a>
      <a href="delusserv?id=<%=u.getId() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can fa-1x"></i></a>
      </td>  
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