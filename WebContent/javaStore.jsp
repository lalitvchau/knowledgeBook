<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");

	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	} else {
		//session.setAttribute("username", username);
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;

		try {

			username = request.getParameter("username");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
			ps = con.prepareStatement("select id, qry,rslt from javaStore where username=? order by id desc");

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
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="row">
		<div class="col-md-12" style="valign: center; align: center;">

			<%
				while (rs.next()) {

							session.setAttribute("rslt", rs.getString("rslt"));
			%>

			<div
				style="border-style: hidden; box-shadow: 0px 0px 20px #888888; margin: 5px; border-color: #000; border-radius: 5px; padding: 10px 10px 10px 10px; border-width: 0.1px; background-color: #FFF; color: #FF0061;">
				<%=rs.getString("qry")%>
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

