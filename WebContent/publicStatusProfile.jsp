<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("userId");
	if (username == null) {
response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	}else{
	PreparedStatement ps = null;
	Connection con = null;
	ResultSet rs = null;
	try {

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
		ps = con.prepareStatement("select users.name, status.stext from status,users where status.username=? and users.username=status.username order by status.id desc");

		//ps.setInt(1,2);
		ps.setString(1, username);
		rs = ps.executeQuery();
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
			style="valign: center; ">

			<%
				while (rs.next()) {
			%>
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #bfbfbf; margin: 20px 0px 50px 0px">
				
				<%=rs.getString("stext")%><hr/><h3><p align="right">@<%=username%></p></h3>
			</div>
			<%
				}
			%>
		</div>
	</div>

	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
<%
	} catch (SQLException e2) {
		e2.printStackTrace();
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}
	}
	}
%>
