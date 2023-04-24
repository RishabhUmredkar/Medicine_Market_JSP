<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine | User Home</title>

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
padding-top: 8pc;
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
<div class="container pd">
<div class="row p-5">
<div class="col-md-4">
<a href="usmedicinebook.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<i class="fa-solid fa-pills fa-3x"></i>
<h2 style=" color: #298c8c;"> Medicines</h2>
</div>
</div>
</a>
</div>

<div class="col-md-4">
<a href="mdbookorder.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<i class="fa-solid fa-book-open fa-3x "></i>
<h2 style=" color: #298c8c;"> Booking Orders</h2>
</div>
</div>
</a>
</div>


<div class="col-md-4">
<a href="paymenthistroy.jsp">
<div class="card" style="background-color: #f7f7f7;">
<div class="card-body text-center" style=" color: #298c8c;">
<!-- <i class="fa-solid fa-capsules fa-3x"></i> -->
<i class="fa-solid fa-money-bill-1 fa-3x"></i>
<h2 style=" color: #298c8c;"> Payments</h2>
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