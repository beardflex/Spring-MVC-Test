<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
		<spring:url value="/resources/core/css/hello.css" var="coreCss" />
		<link href="${bootstrapCss}" rel="stylesheet" />
		<link href="${coreCss}" rel="stylesheet" />
	</head>
	
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Project Name</a>
				</div>
			</div>
		</nav>
		
		<div class="jumbotron">
			<div class="container">
				<h1>${title}</h1>
				<p>
					<c:if test="${not empty msg}">
						Hello ${msg}
					</c:if>
					<c:if test="${empty msg}">
						Welcome Welcome!
					</c:if>
				</p>
				<p>
					<a class="btn btn-primary btn-lg" href="#" role="button">Learn More</a>
				</p>
			</div>
		</div>
		
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<form name="loginForm" action="/" method="POST">
						<div class="form-group">
							<label for="userName">Username</label>
							<input type="text" class="form-control" id="userName" placeholder="Enter your username.">
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<input type="password" class="form-control" id="password" placeholder="Password">
						</div>
						<div class="form-group">
							<input type="submit" name="login" class="form-control" value="Login">
							<div class="alert alert-danger" role="alert">${errorMessage}</div>
						</div>
					</form>
					<h2>Heading</h2>
					<p>GHI</p>
					<p>
						<a class="btn btn-default href="#" role="button">View Details</a>
					</p>
				</div>
			</div>
			
			<hr>
			<footer>
				<p>com.github.beardflex</p>
			</footer>
		</div>
		
		<spring:url value="/resources/core/css/hello.js" var="coreJs" />
		<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />
		
		<script src="${coreJs}"></script>
		<script src="${bootstrapJs}"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	</body>
</html>