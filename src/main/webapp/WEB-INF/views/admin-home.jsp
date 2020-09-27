<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<h2>Admin Home Page</h2>
	<hr>
	<jsp:include page="header.jsp" />
	
	
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Corona Prevention Kit</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <security:authorize access="hasRole('ADMIN')">
			<a class="btn btn-outline-primary btn-sm m-1" href="${pageContext.request.contextPath}/admin/home">Home</a>
		</security:authorize>
      </li>
      <li class="nav-item">
        <ul>
			<security:authorize access="hasRole('ADMIN')">
				<li><a class="btn btn-outline-primary btn-sm m-1" href="${pageContext.request.contextPath}/admin/product-entry">Add Product</a></li>
			</security:authorize>

		</ul>
      </li>
      <li class="nav-item">
        <ul>
        <security:authorize access="hasRole('ADMIN')">
				<li><a class="btn btn-outline-primary btn-sm m-1" href="${pageContext.request.contextPath}/admin/product-list">View Products</a></li>
			</security:authorize>

		</ul>>
      </li>
    </ul>
  </div>
</nav>

<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Welcome to Corona Prevention Kit</h5>
    <p class="card-text">As an Admin, You have access to View, Add & delete products from the website. Please click on appropriate links from the navigation bar</p>
  </div>
</div>
	<br/>
	<div>
	<jsp:include page="footer.jsp" />
	</div>
</body>
</html>