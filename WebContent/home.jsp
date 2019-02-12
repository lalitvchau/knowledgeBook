<%@page import="knowledgeBook.DBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	} else {
		String name = null;
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DBo.getConnection();
			ps = con.prepareStatement("select name from users where username=? ");

			//ps.setInt(1,2);
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();
			boolean flag = rs.next();
			//System.out.println(rs.getString("username"));
			if (!flag) {
				response.sendRedirect("index.jsp?err=User already exist ! Try Again");
			}

			name = rs.getString("name");
		} catch (SQLException e2) {
			response.sendRedirect("index.jsp?err=User already exist ! Try Again");
		} finally {
			if (con != null) {
				con.close();
			}
			if (ps != null) {
				ps.close();
			}
		}
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
		<div class="col-md-12" style="valign: center; align: center;">

			<div>
				<h4>
					<%
						out.println("<h2>" + name + "<small> <small>@" + username + "</small></small></h2>");
					%>
				</h4>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
					<li role="presentation"><a href="#java" aria-controls="java"
						role="tab" data-toggle="tab">Java DOCs</a></li>
					<li role="presentation"><a href="#javaC" aria-controls="javaC"
						role="tab" data-toggle="tab">Java Compiler</a></li>
					<li role="presentation"><a href="#sql" aria-controls="sql"
						role="tab" data-toggle="tab">SQL DOCs</a></li>
					<li role="presentation"><a href="#sqlC" aria-controls="sqlC"
						role="tab" data-toggle="tab">SQL Compiler</a></li>
					<li role="presentation"><a href="index.jsp"
						aria-controls="logout">Log Out</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">
						<jsp:include page="userHome.jsp" />

					</div>
					<div role="tabpanel" class="tab-pane" id="profile"><jsp:include
							page="profile.jsp?username=<%=username%>" /></div>
					<div role="tabpanel" class="tab-pane" id="java"><jsp:include
							page="java.jsp?username=<%=username%>" /></div>
					<div role="tabpanel" class="tab-pane" id="javaC"><jsp:include
							page="javac.jsp?username=<%=username%>" /></div>
					<div role="tabpanel" class="tab-pane" id="sql"><jsp:include
							page="sql.jsp?username=<%=username%>" /></div>
					<div role="tabpanel" class="tab-pane" id="sqlC"><jsp:include
							page="sqlC.jsp?username=<%=username%>" /></div>

				</div>

			</div>



		</div>
	</div>







	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
<%
	}
%>
