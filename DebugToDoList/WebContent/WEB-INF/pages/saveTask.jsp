<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="templates/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp"></c:import>
<title>Create Task</title>
</head>
<body>
	<c:import url="templates/navbar.jsp"></c:import>
	<div class="container">
		<form:form class="form-horizontal" commandName="task"
			enctype="multipart/form-data" action="saveTask.html">
			<fieldset>

				<!-- Form Name -->
				<legend>Create New Task</legend>

				<!-- Prepended text-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="description">Description:</label>
					<div class="col-md-6">
						<form:input path="description" name="description"
							class="form-control" placeholder="description" />
					</div>
				</div>

				<!-- Prepended text-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="startTime">Start
						Time:</label>
					<div class="col-md-6">
						<form:input path="startTime" name="startTime" class="form-control"
							placeholder="start time" />
					</div>
				</div>

				<!-- Prepended text-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="finishTime">Finish
						Time:</label>
					<div class="col-md-6">

						<form:input path="finishTime" name="finishTime"
							class="form-control" placeholder="finishTime"/>
					</div>
				</div>

				<!-- Prepended text-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="comment">comment:</label>
					<div class="col-md-6">

						<form:textarea path="comment" name="comment" class="form-control"
							placeholder="comment" />
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-info">Submit</button>
					</div>
				</div>

			</fieldset>
		</form:form>
	</div>
</body>
<c:import url="templates/javascripts.jsp"></c:import>
</html>