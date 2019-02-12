<%@page import="knowledgeBook.DBo"%>
<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	if (username == null&& !"".equals(username.trim())) {
         response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	}else{

	String status = null;
	Connection con = null;
	PreparedStatement ps = null;
	try {

		status = request.getParameter("status");
		if (status != null && !"".equals(status.trim())) {
			con = DBo.getConnection();
			ps = con.prepareStatement("insert into  status(sText , username) value(?,?)");

			//ps.setInt(1,2);
			ps.setString(2, username);
			ps.setString(1, status);

			int s = ps.executeUpdate();
		}

	} catch (SQLException e2) {

		response.sendRedirect("index.jsp?err=User already exist ! Try Again");

	} finally {
		status = null;

		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}

	}
	response.sendRedirect("home.jsp?username=" + username);
	}
%>

