<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>

<head>
<c:import url="templates/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
	<c:import url="templates/navbar.jsp"></c:import>
	<div class="container">
		<div class="row clearfix">
			<div
				class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2">
				<form:form method="post" action="saveNewMember.html" role="form"
					modelAttribute="newMember" id="form">
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
									tabindex="6">
							</div>
						</div>
					</div>


					<hr class="colorgraph">
					<div class="row">
						<div>
							<input type="submit" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7" id="submit">
						</div>

					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
<c:import url="templates/javascripts.jsp"></c:import>
<script type="text/javascript">
$(document).ready(function(){
	
	$( "#form" ).submit(function( event ) {
		  if ( $( "#password" ).val() === $( "#password_confirmation" ).val() ) {
		   alert("Success");
		    return;
		  }
		 
		  alert("Failed");
		  event.preventDefault();
		});
	
});


</script>
</html>