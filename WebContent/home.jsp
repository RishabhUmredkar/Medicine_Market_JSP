<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | Admin </title>

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
.back-img{
background: url("images/medicine_img.jpg");
height: 80vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;

}
.pd{
padding-top: 10pc;
}
</style>


</head>
<body>

<%@ include file="navbar.jsp" %>

<c:if test="${empty usobj }">

<% response.sendRedirect("login.jsp"); %>
	
</c:if>

<div class="back-img">

<div class="container-fluid">
<div class="container">
<div class="row pd">
<div class="col-md-3">
<a href="users.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<i class="fa-solid fa-users fa-3x" ></i>
<h3 style=" color: #298c8c;"> Users</h3>
</div>
</div>
</a>
</div>

<div class="col-md-3">
<a href="medicines.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<i class="fa-solid fa-pills fa-3x"></i>
<h3 style=" color: #298c8c;"> Medicine</h3>
</div>
</div>
</a>
</div>


<div class="col-md-3">
<a href="bookmedicine.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<!-- <i class="fa-solid fa-capsules fa-3x"></i> -->
<i class="fa-solid fa-book-open fa-3x "></i>
<h3 style=" color: #298c8c;"> Medicine Booking</h3>
</div>
</div>
</a>
</div>


<div class="col-md-3">
<a href="paymentmedicine.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<i class="fa-solid fa-money-bill-1 fa-3x"></i>
<h3 style=" color: #298c8c;"> Payment History</h3>
</div>
</div>
</a>
</div>

</div>
</div>
</div>


</div>

<div class="">

<%@ include file="footer.jsp" %>

</div>




</body>
</html>