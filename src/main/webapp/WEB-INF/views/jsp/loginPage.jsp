<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Insert title here</title>
		<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
		<spring:url value="/resources/core/css/hello.css" var="coreCss" />
		<link href="${bootstrapCss}" rel="stylesheet" />
		<link href="${coreCss}" rel="stylesheet" />
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Login</a>
				</div>
			</div>
		</nav>
		<div class="jumbotron">
			<div class="container">
				<h1>Login</h1>
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<form name="loginForm" action="<c:url value='/login' />" method="POST">
							<div class="form-group">
								<label for="username">Username</label>
								<input type="text" class="form-control" name="username" id="username" placeholder="Enter your username.">
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<input type="password" class="form-control" name="password" id="password" placeholder="Password">
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="form-actions">
								<input type="submit" class="btn btn-block btn-primary btn-default" name="login" value="Login">
							</div>
							<c:if test="${error != null}">
								<div class="alert alert-danger">
									${error}
								</div>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<spring:url value="/resources/core/js/hello.js" var="coreJs" />
		<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
		
		<script src="${coreJs}"></script>
		<script src="${bootstrapJs}"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	</body>
</html>