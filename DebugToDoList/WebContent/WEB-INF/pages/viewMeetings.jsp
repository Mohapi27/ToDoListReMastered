<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Member</title>
</head>
<body>
	<c:import url="templates/navbar.jsp" />

	<div class="container">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-info">
				<div class="panel-heading">
				<span class="pull-right">
					<a href="addNewMeeting.html" data-original-title="Add New Meeting" data-toggle="tooltip" type="button" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-plus"></i></a>
				</span>
					<h3 class="panel-title">Group Meetings</h3>
					
				</div>
				<div class="panel-body">
					<table class="table table-user-information">
						<thead>
							<tr>
								<th>Meeting ID</th>
								<th>Date Of Meeting</th>
								<th>Time Of Meeting</th>
								<th>Place Of Meeting</th>
								<th>Agenda</th>
								<th>Discussion</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${meetings}" var="meeting">
							<tr>
								<td>${meeting.meetingId}</td>
								<td>${meeting.dateOfMeeting }</td>
								<td>${meeting.timeOfMeeting }</td>
								<td>${meeting.placeOfMeeting }</td>
								<td>${meeting.agenda }</td>
								<td>${meeting.discussion }</td>
							</tr>
</c:forEach>


						</tbody>



					</table>



				</div>
			</div>

		</div>


	</div>



</body>
<c:import url="templates/javascripts.jsp" />
<script type="text/javascript"> $('[data-toggle="tooltip"]').tooltip();</script>
</html>