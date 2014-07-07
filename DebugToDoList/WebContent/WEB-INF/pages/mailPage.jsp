<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Mail</title>
</head>
<body>
	<c:import url="templates/navbar.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-4">
				<form:form modelAttribute="mail" role="form" action="sendMail.html">
					<div class="row">
						<div class="col-md-4 coloumn">
							<div class="form-group">
								<form:label path="mailTo">To:</form:label>
								<form:input path="mailTo" class="form-control" placeholder="To" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 coloumn">
							<div class="form-group">
								<form:label path="mailSubject">Subject:</form:label>
								<form:input path="mailSubject" class="form-control"
									placeholder="Subject" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-8 coloumn">
							<div class="form-group">
								<form:label path="mailMessage">Message:</form:label>
								<form:textarea path="mailMessage" class="form-control"
									placeholder="Message" rows="12" cols="6" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">

							<button type="submit" class="btn btn-primary">
								<span class="glyphicon glyphicon-envelope"></span> Send
							</button>
						</div>

					</div>


				</form:form>
			</div>
		</div>
	</div>
</body>
<c:import url="templates/javascripts.jsp" />
</html>