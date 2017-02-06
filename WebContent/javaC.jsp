<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	if (username == null) {
%><jsp:forward page="index.jsp?err1=Sorry! Please Login First ! "></jsp:forward>
<%
	}
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
			<form name="cd" method="post" action="executeJava.jsp">
				<div class="form-group">
					<textarea class="form-control" rows="25" name="cdArea"
					placeholder="Enter Your Code here ... !">
public class Main{
			public static void main(String[] args){
			         //call your class or Code here
			
			}
}
//Write your class or Code here
						</textarea>
				</div>
				<div class="form-group">
					<input type="submit" value="Compile" onclick="return validateCode()"
						class="btn btn-default">
				</div>
				<div class="form-group">
					<label class="form-control">Code Result : </label>
				</div>
			</form>
		</div>


		<div class="col-md-4">
		    <br/>
			<div class="form-control">
			    Your Codes History
				<hr/>
				<jsp:include page="javaStore.jsp?username<%=username %>"></jsp:include>

			</div>
		</div>
	</div>










	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
