<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Login</title>

<style type="text/css">
.back-img
{
background: url("images/medicine_img.jpg");
height: 80vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;

}
.pd{
padding-top: 5pc;
}
</style>

</head>
<body>

<%@ include file="navbar.jsp" %>

<!-- login form start -->

<div class="back-img">
	<div class="container pd">
		<div class="row mt-4">
		<div class="col-md-4 offset-md-4">
 			<div class="card">
				<div class="card-body">
					<h3 class="text-center p-2" style="color: #298c8c;">Login</h3>	
								
					<form action="logiserv" method="post">
					  <div class="mb-3">
					    <label for="exampleInputEmail1" class="form-label">Email Address</label>
					    <input type="email" class="form-control" name="email"
					    id="exampleInputEmail1"
					    aria-describedby="emailHelp" required="required">
					  </div>
					  <div class="mb-3">
					    <label for="exampleInputPassword1" class="form-label">Password</label>
					    <input type="password" class="form-control" name="password"
					     id="exampleInputPassword1" required="required">
					  </div>				 
					  <div class="text-center">
					  	<button type="submit" class="btn" style="background-color: #298c8c; color:white;">Login</button><br>
					  	<a href="register.jsp" class="nav-link active">Create An Account</a>
					  </div>
					  
					</form>
				</div>
			</div>
		</div> 
		</div>
	</div>
</div>	
	
	<!-- login form end -->
	
	<%@ include file="footer.jsp" %>

</body>
</html>