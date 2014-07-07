<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp"></c:import>
<title>Display Tasks</title>
</head>
<body>
	<c:import url="templates/navbar.jsp"></c:import>

	<div class="container">
		<form:form>
			<div class="row col-md-10 col-md-offset-1 custyle">

				<c:if test="${!empty tasks}">
					<table class="table table-striped custab">
						<thead>
							<tr>
								<th>Task Id</th>
								<th>Description</th>
								<th>Start Time</th>
								<th>Finish Time</th>
								<th>Comment</th>
								<th>Completed</th>
							</tr>
						</thead>

						<c:forEach items="${tasks}" var="task">
							<tr>
								<td><c:out value="${task.taskId}" /></td>
								<td><c:out value="${task.discription}" /></td>
								<td><c:out value="${task.startTime}" /></td>
								<td><c:out value="${task.finishTime}" /></td>
								<td><c:out value="${task.comment}" /></td>
								<td><c:out value="${task.isDone}" /></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</form:form>
	</div>

</body>
<c:import url="templates/javascripts.jsp"></c:import>
</html>