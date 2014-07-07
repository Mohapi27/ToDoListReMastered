<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<c:import url="templates/navbar.jsp"></c:import>
	<div class="container">
		<div class="row clearfix">

			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-6 col-md-offset-4">
				<c:url value="/login.html" var="loginUrl" />
				<form action="${loginUrl}" method="post" role="form"
					class="form-signin">
					<fieldset>
						<h2>Please Sign In</h2>
						<hr class="colorgraph">
						<div class="form-group">
							<input type="text" name="username" class="form-control input-lg"
								placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" name="password"
								class="form-control input-lg" placeholder="Password">
						</div>

						<a href="" class="btn btn-link pull-right">Forgot Password?</a>

						<hr class="colorgraph">
						<div class="row">
							<div>
								<input type="submit" class="btn btn-lg btn-success btn-block"
									value="Sign In">
							</div>
						</div>
					</fieldset>
					<c:if test="${not empty error}">
						<div class="alert alert-danger">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="alert alert-info">${msg}</div>
					</c:if>
				</form>
			</div>
		</div>
	</div>



</body>
<c:import url="templates/javascripts.jsp"></c:import>
</html>