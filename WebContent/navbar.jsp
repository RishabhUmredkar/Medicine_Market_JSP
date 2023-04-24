<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet" href="style.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">

 .lgn-btn{
background-color: #DCDCDC;
color:	#708090;
} 
.lgn-btn:hover{
color: #298c8c;
}
.reg-btn{
background-color: 	#DCDCDC;
color: 	#708090;
}
.reg-btn:hover{
color: #298c8c;
}
.bar{
margin-left: 2pc;
}
h2{
color:#DCDCDC;
}

a{
text-decoration: none;
}
a:hover{
text-decoration: none;
color: black;
}

</style>

</head>
<body>

<!-- navbar start  -->

	<div class="container-fluid" style="height: 10px; background-color: #298c8c;"></div>

	<!-- <div class="container-fluid p-2">
		<div class="row">
			<div class="col-md-3 ">
				<h2><i class="fa-solid fa-prescription"></i> MEDICINES</h2>
			</div>
		</div>
	</div>
 -->
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #298c8c;">
		<div class="container-fluid">
			
					<a href="index.jsp" style="text-decoration: none;">
					<h2><i class="fa-solid fa-prescription"></i> MEDICINES</h2></a>
				<!-- <div class="bar">
			<a class="navbar-brand" href="#"><i class="fa-solid fa-file-prescription"></i></a>
			<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
			<a class="navbar-brand"> User</a>
			<a class="navbar-brand"> Medicine</a>
			<a class="navbar-brand"> Medicine Booking</a>
			<a class="navbar-brand"> Payment History</a>
			</div>  -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				 <ul class="navbar-nav me-auto mb-2 mb-lg-0">	
				</ul> 
			
			
			<form class="d-flex">
					<div>
						<c:if test="${not empty usobj }">
							<a href="login.jsp" class="btn lgn-btn">
							<i class="fa-solid fa-user"></i> ${usobj.fname}</a>
							<a href="logout.jsp" class="btn btn reg-btn">
							<i class="fa-solid fa-right-from-bracket"></i> Logout</a> 
						</c:if>
						<c:if test="${empty usobj }">
						<a href="login.jsp" class="btn lgn-btn"><i
							class="fa-solid fa-right-to-bracket"></i> Login</a> 
							<a href="register.jsp" class="btn reg-btn"><i
							class="fa-solid fa-user-plus"></i> Register</a>
						</c:if>
					</div>
				</form>
			</div>
		</div>
	</nav>

	<!-- navbar end  -->
	
	

</body>
</html>