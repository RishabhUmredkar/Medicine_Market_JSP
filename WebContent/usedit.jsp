<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | User Edit </title>
</head>
<body>

<%@ include file="navbar.jsp" %>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

			<%
				int Id = Integer.parseInt(request.getParameter("id"));
			
				UserDaoImpl dao = new UserDaoImpl(DBConnect.getCon());
				
				User u = dao.getUserById(Id);
			%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center p-3" style="color: #298c8c;">Edit Form</h3>

						<%-- <c:if test="${not empty SuccMsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ SuccessMsg}</p></b></center>
							<c:remove var="SuccessMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty FailMsg }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failedMsgs}</p></center>
							<c:remove var="failedMsgs" scope="session"/>
						</c:if> --%>

						<form action="editusserv" method="get">
							<div class="mb-3">
								 <input type="hidden" class="form-control"
									id="exampleInputEmail1" name="ids" value="<%=u.getId() %>"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									Name :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="fName" value="<%=u.getFname() %>"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address :</label> <input type="email" class="form-control"
									id="exampleInputEmail1" name="uemail" value="<%=u.getEmail() %>"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									No :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="uphone" value="<%=u.getPhone() %>"
									aria-describedby="emailHelp" required="required">
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
	
	<!-- register form end  -->
	
	<div class="mt-4">

<%@ include file="footer.jsp" %>

</div>

</body>
</html>