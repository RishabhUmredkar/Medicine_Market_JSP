<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Register</title>
</head>
<body>

<%@ include file="navbar.jsp" %>

	<!-- register form start  -->
	
	

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center p-3" style="color: #298c8c;">Registration</h3>

						<c:if test="${not empty SuccessMsg }">
							<center><b><p class="text-center text-white" style="background-color:limegreen; width:15pc; border-radius:6px;padding:4px;">${ SuccessMsg}</p></b></center>
							<c:remove var="SuccessMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsgs }">
							<center><p class="text-center text-white" style="background-color:tomato; width:18pc; border-radius:6px;padding:4px;">${ failedMsgs}</p></center>
							<c:remove var="failedMsgs" scope="session"/>
						</c:if>

						<form action="regserv" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Full
									Name :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="fname"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address :</label> <input type="email" class="form-control"
									id="exampleInputEmail1" name="email"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									No :</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="phone"
									aria-describedby="emailHelp" required="required">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password
									:</label> <input type="password" class="form-control"
									id="exampleInputPassword1" name="pass" required="required">
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" name="check"> <label
									class="form-check-label" for="exampleCheck1">Agree
									terms & condition</label>
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
	
	<%@ include file="footer.jsp" %>

</body>
</html>