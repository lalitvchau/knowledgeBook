<%@page import="java.sql.*"%>
<%
	String username = null;
	Connection con = null;
	PreparedStatement ps = null;
	boolean flag=false;
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
		 flag = rs.next();
		//System.out.println(rs.getString("username"));
		
	  } catch (SQLException e2) {
		response.sendRedirect("index.jsp?err1=Username or password wrong ! Try Again");
	  } finally {
		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}
	}
	if (!flag) {
		response.sendRedirect("index.jsp?err1=Username or password wrong ! Try Again");

	}else{response.sendRedirect("home.jsp?username=" + username);}
	
%>

