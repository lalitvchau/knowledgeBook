<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	} else {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		try {

			//username = request.getParameter("username");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
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
			<div
				style="valign: center; border-radius: 5px; align: center; padding: 15px 15px 15px 15px; box-shadow: 0px 0px 10px #000000; margin: 20px 0px 20px 0px">

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal1" style="width: 120px;">Edit Profile</button>
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal2" style="width: 120px;">Edit
					Password</button>

				<!-- Modal -->

				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">

					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<form method="post" name="edit"
								action="doEdit.jsp?username=<%=username%>">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Edit Profile</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<input type="email" class="form-control" name="name"
											placeholder="Name" value=<%=rs.getString("name")%>>
									</div>
									
									<div class="form-group">
										<input type="text" class="form-control" name="city"
											placeholder="City" value=<%=rs.getString("city")%>>
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password"
											placeholder="Password">
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cancel</button>
									<input type="submit" class="btn btn-default " name="submit"
										value="  Save  " onclick="return validateEdit()">
								</div>
							</form>
						</div>
					</div>




				</div>
				<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">

					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<form method="post" name="editPass"
								action="editPassword.jsp?username=<%=username%>">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Edit Password</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<input type="password" class="form-control" name="password2"
											placeholder="Current Password">
									</div>
									
									<div class="form-group">
										<input type="password" class="form-control" name="password"
											placeholder="Password">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password1"
											placeholder=" Conform Password">
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cancel</button>
									<input type="submit" class="btn btn-default " name="submit"
										value="  Save  " onclick="return validateEditPass()">
								</div>
							</form>
						</div>
					</div>




				</div>

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
