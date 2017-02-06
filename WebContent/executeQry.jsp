<%@page import="java.sql.*"%>

<%
	String rslt = null;
	String username = null;
	String qry = null;
	Connection con = null;
	Statement ps = null;
	ResultSet rs = null;
	ResultSetMetaData rsm = null;
	String file="";
	try {

		username = request.getParameter("username");
		qry = request.getParameter("qryArea");
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userDb?user=kdbuser&password=kdbuser");
		ps = con.createStatement();
		boolean flag = ps.execute(qry);
		if (flag == true) {
			rs = ps.getResultSet();
			rsm = rs.getMetaData();
			rslt ="<p style=\"text-align:left;\">Querry : "+qry+ "</p><hr style=\"color:black;\"/><table class=\"table table-hover\" ><tr>";
			int coutCols = rsm.getColumnCount();
			String colLables[] = new String[coutCols + 1];
			for (int i = 1; i <= coutCols; i++) {
				colLables[i] = rsm.getColumnLabel(i);
				file+=colLables[i]+"\t";
				rslt += "<th style=\"text-align:center;\">" + colLables[i] + "</th>";
			}
			file+="\n";
			rslt += "</tr>";
			if (rs.next()) {
				do {
					rslt += "<tr>";
					for (int i = 1; i <= coutCols; i++) {
						rslt += "<td>" + rs.getString(colLables[i]) + "</td>";
						file+=rs.getString(colLables[i])+"\t";
					}
					file+="\n";
					rslt += "</tr>";
				} while (rs.next());
				rslt += "</table>";
			} else {
				rslt = "Data not found !";
				file=rslt;
			}

		} else {
			int count = ps.getUpdateCount();
			rslt = "The Number row " + count + " impacted !";
			file=rslt;
		}

	} catch (SQLException e2) {
		rslt = e2.getLocalizedMessage();
		file=rslt;
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps != null) {
			ps.close();
		}
		session.setAttribute("rslt", rslt);
	}
	  PreparedStatement ps1=null;
	//inserting data to qryStore table
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kdb?user=kdbuser&password=kdbuser");
		ps1 = con.prepareStatement("insert into kdb.qrystore(qry,qrslt,username) values(?,?,?)");
		ps1.setString(1,qry);
		ps1.setString(2,file);
		ps1.setString(3,username);
		int a=ps1.executeUpdate();
		

	} catch (SQLException e2) {
		rslt = e2.getLocalizedMessage();
		file=rslt;
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps1 != null) {
			ps1.close();
		}
	}
%>
<jsp:forward page="rslt.jsp?username=<%=username%>>"></jsp:forward>