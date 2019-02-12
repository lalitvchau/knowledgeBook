<%@page import="knowledgeBook.DBo"%>
<%@page import="java.sql.*"%>
<%
	String username = null;
	Connection con = null;
	PreparedStatement ps = null;
	boolean flag = false;
	String password = request.getParameter("password2").trim();
	try {

		username = request.getParameter("username").trim();

		con = DBo.getConnection();
		ps = con.prepareStatement("select * from users where username=? and password=? ");

		//ps.setInt(1,2);
		ps.setString(1, username);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();
		flag = rs.next();
		//System.out.println(rs.getString("password"));

	} catch (SQLException e2) {
		response.sendRedirect("index.jsp?err1= Current Password wrong ! Try Again");
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}
	}
	if (flag == false) {
		response.sendRedirect("index.jsp?err1= Current Password wrong ! Try Again");

	} else {
		password = request.getParameter("password").trim();
		con = null;
		ps = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
			ps = con.prepareStatement("update  users set password=? where username=?");

			ps.setString(1, password);
			ps.setString(2, username);

			int s = ps.executeUpdate();

		} catch (SQLException e2) {
			e2.printStackTrace();
			response.sendRedirect("index.jsp?err=Cuurent Password Wrong");
		} finally {
			if (con != null) {
				con.close();
			}
			if (ps != null) {
				ps.close();
			}
			response.sendRedirect("index.jsp?err=Password Changed");
		}
	}
%>

