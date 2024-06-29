<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Add Medicine </title>

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

<div class="container mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
			<a class="navbar-brand home-btn" href="home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
				<div class="card mt-3">
					<div class="card-body">
						<h3 class="text-center p-3" style="color: #298c8c;">Add Medicine</h3>

						<c:if test="${not empty SuccessMsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ SuccessMsg}</p></b></center>
							<c:remove var="SuccessMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsgs }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failedMsgs}</p></center>
							<c:remove var="failedMsgs" scope="session"/>
						</c:if>

						<form action="admedserv" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Company
									Name :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="cname"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Medicine
									Name :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="mname"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Quantity :</label>
								<input type="text" class="form-control"
									id="exampleInputEmail1" name="qunty"
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
	
<div class="mt-5">

<%@ include file="footer.jsp" %>

</div>

</body>
</html>
