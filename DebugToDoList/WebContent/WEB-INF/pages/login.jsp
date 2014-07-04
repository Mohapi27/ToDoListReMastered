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

			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-6 col-md-offset-0">
					<c:url value="/login" var="loginUrl" />
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
         /\
Sign In  ||
-------------------------------------------------------------------------------------------------------------------------------
Sign Up  ||
         \/

				<div
					class="col-xs-12 col-sm-8 col-md-7 col-sm-offset-2 col-md-offset-1">
					<form:form method="post" action="saveNewMember.html" role="form" modelAttribute="newMember">
						<h2>
							Please Sign Up <small>It's free and always will be.</small>
						</h2>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<form:input path="name" class="form-control input-lg"
										placeholder="First Name" tabindex="1" />
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<form:input path="surname" class="form-control input-lg"
										placeholder="Last Name" tabindex="2" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<form:input path="username" class="form-control input-lg"
								placeholder="Username" tabindex="3" />
						</div>
						<div class="form-group">
							<form:input path="email" class="form-control input-lg"
								placeholder="Email Address" tabindex="4" />
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<form:password path="password" id="password"
										class="form-control input-lg" placeholder="Password"
										tabindex="5" />
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<input type="password" id="password_confirmation"
										class="form-control input-lg" placeholder="Confirm Password"
										tabindex="6" >
								</div>
							</div>
						</div>


						<hr class="colorgraph">
						<div class="row">
							<div>
								<input type="submit" value="Register"
									class="btn btn-primary btn-block btn-lg" tabindex="7">
							</div>

						</div>
					</form:form>

				</div>
			</div>
		</div>
	</div>


</body>
<c:import url="templates/javascripts.jsp"></c:import>
</html>