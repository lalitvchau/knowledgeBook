<%@page import="java.sql.*"%>
<%
	String username = null;
	Connection con = null;
	PreparedStatement ps = null;
	try {

		username = request.getParameter("username");
		String password = request.getParameter("pass");

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
		ps = con.prepareStatement("select * from users where username=? and password=? ");

		//ps.setInt(1,2);
		ps.setString(1, username);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();
		boolean flag = rs.next();
		//System.out.println(rs.getString("username"));
		if (!flag) {
%><jsp:forward
	page="index.jsp?err1=Username or password wrong ! Try Again "></jsp:forward>
<%
	}
	} catch (SQLException e2) {
%><jsp:forward
	page="index.jsp?err1=Username or password wrong ! Try Again "></jsp:forward>
<%
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}
	}

%>
<jsp:forward page="home.jsp?username=<%=username %>"></jsp:forward>