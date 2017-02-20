<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String err = null;
	try {
		err = request.getParameter("err");
	} catch (Exception e) {
		err = null;
	}
	String err1 = null;
	try {
		err1 = request.getParameter("err1");
	} catch (Exception e) {
		err1 = null;
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" type="image/x-icon" href="image/logo.ico" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KnowledgeBook</title>
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
			style="background-color: #ffcad6; height: 600px; valign:center; align:center;">

            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			<img src="image/logo.jpg" alt="" style=" height: 150px; width: 150px;valign:center; align:center;"><b
				style="color: white;; letter-spacing: 2px;">&nbsp KnowledgeBook </b>

			<div class="modal-footer">
				<b style="align:center;color: white; letter-spacing: 2px;">&nbsp Share your
					Knowledge and get new knowledge ! </b>
			</div>
       
		</div>


		<div class="col-md-4"
			style="background-color: #FFE9F1; height: 600px;">
			<center>
				<br />
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal" style="width: 120px;">Sign Up</button>
				<%
					if (err != null) {
				%>
				<br />
				<lablel><%=err%></lablel>
				<%
					}
				%>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">

					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<form method="post" name="signUp" action="doRegister.jsp">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Sign Up</h4>
								</div>
								<div class="modal-body">
									<div>
										 <input type="text"
											class="form-control" name="name" placeholder="Name">
									</div>
									<br>
									<div>
										<input
											type="email" class="form-control" name="email"
											placeholder="Email or Username">
									</div>
									<br>
									<div class="form-group">
										<input type="password"
											class="form-control" name="password"
											placeholder="Password">
									</div>
									
									<div class="form-group">
										 <input
											type="password" class="form-control" name="password1"
											placeholder=" Conform Password">
									</div>
									<div class="radio">
										<label> <input type="radio" name="gender" value="male"
											checked> Male&nbsp&nbsp
										</label><label> <input type="radio" name="gender"
											value="female"> Female&nbsp&nbsp
										</label><label> <input type="radio" name="gender"
											value="other"> Other

										</label>


									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cancel</button>
									<input type="submit" class="btn btn-default" name="submit"
										value="Sign Up" onclick="return validate()">
								</div>
							</form>
						</div>
					</div>


				</div>
				
                 <hr/>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal1" style="width: 120px;">Sign In</button>
				<%
					if (err1 != null) {
				%>
				<br />
				<lablel><%=err1%></lablel>
				<%
					}
				%>
				<!-- Modal -->

				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">

					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<form method="post" name="signIn" action="doLogin.jsp">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Sign In</h4>
								</div>
								<div class="modal-body">
									<div>
										 <input
											type="email" class="form-control" name="username"
											placeholder="Email or Username">
									</div>
									<br>
									<div class="form-group">
										<input type="password"
											class="form-control" name="pass" placeholder="Password">
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Cancel</button>
									<input type="submit" class="btn btn-default " name="submit"
										value="Sign In" onclick="return validateSign()">
								</div>
							</form>
						</div>
					</div>

				</div>
			</center>
		</div>


		<div class="row">
			<div class="col-md-12"
				style="background-color: #FF0061; height: 35px; padding: 5px 5px 5px 25px; text-align: center;">
				Copyright of <img src="image/logo.jpg" alt=""
					style="height: 25px; width: 25px;"><b
					style="color: white; letter-spacing: 2px;">&nbsp KnowledgeBook
				</b>
			</div>
		</div>





		<script src="resource/jquery/jquery-3.1.1.min.js"></script>
		<script src="resource/bootstrap/js/bootstrap.min.js"></script>
		<script src="otherResource/validation.js"></script>


</body>
</html>