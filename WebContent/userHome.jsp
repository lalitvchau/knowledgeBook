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
<link rel="shortcut icon" type="image/x-icon" href="image/logo.ico" />
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


	<div class="row" style="padding: 20px 150px 50px 150px;">
		<div class="col-md-12"
			style="valign: center; align: center; padding: 10px 50px 50px 50px;">

			<div class="row">
				<div class="col-md-12"
					style="valign: center; border-radius: 5px; align: center; padding: 25px 25px 25px 25px; box-shadow: 0px 0px 10px #FF0061; margin: 12px 12px 12px 12px">
					<form method="post"
						action="updateStatus.jsp?username=<%=username%>" name="statusForm">
						<div class="form-group">

							<textarea class="form-control" rows="6" name="status"
								placeholder="Share your knowledge !"></textarea>

						</div>
						<button type="submit" class="btn btn-default"
							onclick="return validateStatus()">Share Knowledge</button>
					</form>

				</div>

			</div>
			<br>
			<div class="row">
				<div class="col-md-12"
					style="valign: center; align: center; padding: 20px 20px 20px 20px;">
					<jsp:include page="statusHome.jsp"></jsp:include>
				</div>

			</div>

		</div>

	</div>







	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
<%} %>
