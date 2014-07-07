<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="templates/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="templates/head.jsp" />
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/jquery-ui.css" />' >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="templates/navbar.jsp" />
<form:form>
<input type="text" id="iniDate" name="iniDate">



</form:form>


</body>
<c:import url="templates/javascripts.jsp" />
<script type="text/javascript" src='<c:url value="/resources/javascript/jquery-ui.js"/>'></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(function() {
	    $( "#iniDate" ).datepicker({ dateFormat: "dd-mm-yy", firstDay: 1, changeYear: true });
	   // $( "#endDate" ).datepicker({ dateFormat: "dd-mm-yy", firstDay: 1, changeYear: true });
	});
	
});

</script>
</html>