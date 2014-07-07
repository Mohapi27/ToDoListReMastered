<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp"></c:import>
<style type="text/css">

 #gauge {
        width:400px; height:320px;
      }
</style>
</head>
<body>
	<div class="container">
		<c:import url="templates/navbar.jsp"></c:import>
		<div class="jumbotron">
			
				<h1>
				Site Under Construction.
				</h1>
			
			<p>
			Site launch date: 07/07/2014, Please be patient. 
			</p>
		</div>

	</div>
	<div class="row">
	<div id=gauge class="col-md-3 col-md-offset-4"></div>
	</div>
	<div class="row">
	<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Top 5 Performers</h3>
  </div>
 
   
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Member</th>
					<th># of Tasks</th>
					<th># of Completed Tasks</th>
					<th># of Tasks Not Completed</th>
					<th># of Tasks To Be Completed</th>
					<th>% of Completed Tasks</th>
					<th>% Not Completed</th>
					<th>Group Performance</th>
				</tr>
			</thead>

			<tbody>
			<c:forEach items="${topFive}" var="tpm">
				<tr class="clickable_row" data-url = "showUserProfile.html?user=${tpm.member.username}">
					<td>${tpm.member.name}</td>
					<td>${tpm.noOfTasks}</td>
					<td>${tpm.completedTasks}</td>
					<td>${tpm.notCompletedTasks}</td>
					<td>${tpm.tasksToBeCompleted}</td>
					<td>${tpm.percentageCompletedTask}</td>
					<td>${tpm.percentageNotCompleted}</td>
					<td>${tpm.groupPerformance}</td>
				</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	</div>
</div>

	
</body>
<c:import url="templates/javascripts.jsp"></c:import>
<script type="text/javascript" src="<c:url value='/resources/javascript/raphael.2.1.0.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/javascript/justgage.1.0.1.min.js' />"></script>
<script>
$(document).ready(function(){
	 $(".clickable_row").click(function() {
         window.document.location = $(this).data("url");
   });
	 
	 var gauge = new JustGage({
         id: "gauge", 
         value: getRandomInt(0, 100), 
         min: 0,
         max: 100,
         title: "Class Performance",
         label: "\nPerformance %\nper Day",
         levelColors: [
        	               "#FF0000",
        	               "#FFBF00",
        	               "#74DF00"
        	             ]      
       });
	 
});
	
</script>
</html>