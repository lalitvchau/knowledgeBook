<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
    
	String rslt = (String)session.getAttribute("rslt");
	if(rslt==null) rslt="Someting Wrong !";
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
		<div class="col-md-12" style="valign: center; align: center;">
			<br />
			<form name="qry" method="post"
				action="home.jsp?username=<%=username%>">
				<div class="form-group">
					<input type="submit" value="Close" class="btn btn-default">
				</div>
				<div class="form-control" style="background-color: #FF0061;color:white;">
				    Result
					<div class="table-responsive"
						style="background-color: #FFE9F1; color: #FF0061;text-align: center;"
						><br/> <%=rslt %></div>
				
				</div>
				
				
  
			</form>
		</div>

	</div>










	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
