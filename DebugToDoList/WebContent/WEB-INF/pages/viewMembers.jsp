<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Members</title>
</head>
<body>
	<c:import url="templates/navbar.jsp"></c:import>

	<div class="container">
		<div class="row">

			<div class="col-md-10 col-md-offset-1">
				<table class="table" id="Members">
					<thead>
						<tr>
							<th>Member ID</th>
							<th>Member Name</th>
							<th>Member Surname</th>
							<th>Member E-Mail</th>
							<th>Member Status</th>
							<th>Member Group</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${allMembers}" var="member">
							<tr>
								<td>${member.memberId}</td>
								<td>${member.name}</td>
								<td>${member.surname}</td>
								<td>${member.email}</td>
								<td>${member.status}</td>
								<c:if test="${not empty member.group}">
								<td>${member.group.name}</td>
								</c:if>
								<c:if test="${empty member.group}">
								<td>Vacant</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>


				</table>

			</div>


		</div>


	</div>


</body>
<c:import url="templates/javascripts.jsp"></c:import>

</html>