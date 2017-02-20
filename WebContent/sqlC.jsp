<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");

	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	}else{

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KnowledgeBook</title>
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="row"></div>
	<div class="row">
		<div class="col-md-8" style="valign: center; align: center;">
			<br />
			<form name="qry" method="post"
				action="executeQry.jsp?username=<%=username%>">
				<div class="form-group">
					<textarea class="form-control" rows="20" name="qryArea"
						placeholder="Enter Your Querry here ... !"></textarea>
				</div>
				<div class="form-group">
					<input type="submit" value="Compile" onclick="return validateQry()"
						class="btn btn-default">
				</div>

			</form>
		</div>


		<div class="col-md-4">
			<br />
			<div class="form-control" style="background-color: #ffefa;">
				Your Querries History
				<hr />


			</div>
			<jsp:include page="sqlStore.jsp?username<%=username%>"></jsp:include>
		</div>
	</div>










	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
<%}%>