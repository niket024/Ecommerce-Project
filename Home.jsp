<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home</title>

<!-- Bootstrap -->
<link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<%@include file="/views/Header.jsp"%>



	<c:choose>
		<c:when test="${empty loggedInUser}">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<nav class="navbar navbar-inverse" role="navigation">
						<div class="navbar-header"></div>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
							</div>
						</form>
						<form class="navbar-form navbar-right">
							<a href="memberShip" class="btn btn-default">New User</a> <a
								href="loginHere" class="btn btn-default">ExistingUser</a>
						</form>
						</nav>
					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${not empty loggedInUser}">
			<form class="navbar-form navbar-right" role="search">
				<td>Welcome ${loggedInUser}</td> <a href="logout"
					class="btn btn-default">logout </a>
			</form>

		</c:when>

	</c:choose>




	<div id="admin">

		<c:if test="${isAdmin==true}">




			<%@ include file="/views/AdminHome.jsp"%>


		</c:if>

		<c:if test="${isAdmin==false}">


			<a href="myCart" class="btn btn-default" class="pull-right">Cart</a>

			<%@ include file="/views/productlist.jsp"%>

		</c:if>


		<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
				<%@ include file="/views/AdminHome.jsp"%>
				<%@ include file="/views/category.jsp"%>
			</c:if>
		</div>

		<div id="products">
			<c:if test="${isAdminClickedProducts==true}">
				<%@ include file="/views/AdminHome.jsp"%>
				<%@ include file="/views/product.jsp"%>
			</c:if>
		</div>

		<div id="suppliers">
			<c:if test="${isAdminClickedSuppliers==true}">
				<%@ include file="/views/AdminHome.jsp"%>
				<%@ include file="/views/supplier.jsp"%>
			</c:if>
		</div>

	</div>



	<%@include file="/views/Footer.jsp"%>




	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>
</body>
</html>



