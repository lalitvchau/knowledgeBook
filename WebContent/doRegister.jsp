<%@page import="java.sql.*"%>

<%
	String username = null;
	String password = null;
	Connection con = null;
	PreparedStatement ps = null;
	try {

		username = request.getParameter("email");
		password = request.getParameter("password");

		String name = request.getParameter("name");
		String gender = request.getParameter("gender");

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
		ps = con.prepareStatement("insert into users(username,password,name,gender) values(?,?,?,?)");

		//ps.setInt(1,2);
		ps.setString(1, username);
		ps.setString(2, password);
		ps.setString(3, name);
		ps.setString(4, gender);

		int s = ps.executeUpdate();

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
	response.sendRedirect("succes.jsp");
%>
