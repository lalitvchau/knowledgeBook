<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String userId = request.getParameter("userId");
    String username = request.getParameter("username");
	if (userId == null||username==null) {
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
    <div class="row">
		<div class="col-md-12"
			style="background-color: #FF0061; height: 35px; padding: 5px 5px 5px 25px;">
			<img src="image/logo.jpg" alt="" style="height: 25px; width: 25px;"><b
				style="color: white; letter-spacing: 2px;">&nbsp KnowledgeBook </b>
			
		</div>
		
	</div>

	<div class="row">
		<div class="col-md-8"
			style="valign: center; align: center; padding: 10px 50px 50px 50px;">
			<a  class="btn btn-danger" href="home.jsp?username=<%=username%>" hidden="hidden">Close</a>
			<div class="row">
				<div class="col-md-12" style="valign: center; align: center;">
					<jsp:include page="publicStatusProfile.jsp?userId=<%=userId%>"></jsp:include>
				</div>

			</div>

		</div>
		<div class="col-md-4" style="valign: center; align: center;">
             <jsp:include page="publicProfileDetail.jsp?userId=<%=userId%>"></jsp:include>
			</div>
	</div>







	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
<%} %>
