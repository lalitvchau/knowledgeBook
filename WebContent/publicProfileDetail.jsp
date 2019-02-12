<%@page import="knowledgeBook.DBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("userId");
	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	} else {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		try {

			//username = request.getParameter("username");
			con = DBo.getConnection();
			ps = con.prepareStatement("select *  from users where username=?");

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
		<div class="col-md-12" style="valign: center;">

			<%
				while (rs.next()) {
			%>
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #000000; margin: 20px 0px 20px 0px">

				Your Name
				<hr />
				<h3>
					<p align="left;" style="color: #FF4500;"><%=rs.getString("name")%></p>
				</h3>
			</div>
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #000000; margin: 20px 0px 20px 0px">

				Username or Email
				<hr />
				<h3>
					<p align="left;" style="color: #0000CD;">@<%=rs.getString("username")%></p>
				</h3>
			</div>
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #000000; margin: 20px 0px 20px 0px">

				Gender
				<hr />
				<h3>
					<p align="left;" style="color: #008000;"><%=rs.getString("gender")%></p>
				</h3>
			</div>
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #000000; margin: 20px 0px 20px 0px">

				City
				<hr />
				<h3>
					<p align="left;" style="color: #BA55D3;"><%=rs.getString("city")%></p>
				</h3>
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
