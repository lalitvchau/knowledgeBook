<%@page import="knowledgeBook.DBo"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
	String rslt = null;
	String username = request.getParameter("username");
	String qry = request.getParameter("cdArea");

	String fileName = "Main.java";
	String fileNam = "Main";
	File file = new File(fileName);
	file.createNewFile();
	BufferedWriter fout = new BufferedWriter(new FileWriter(file));
	fout.write(request.getParameter("cdArea"));
	fout.flush();
	fout.close();
	rslt = "<p style=\"text-align:left;\">Querry : " + qry + "";
	//Excuting File
	Process pC = Runtime.getRuntime().exec("javac  " + fileName);
	BufferedReader inputC = new BufferedReader(new InputStreamReader(pC.getErrorStream()));
	String lineC = inputC.readLine();
	//if (lineC != null)
	//	rslt += "<br>Compiletation Error =<br>" + lineC;
	inputC.close();

	// wait for the command complete
	pC.waitFor();
	int retC = pC.exitValue();
	if (retC <= 0) {

		Process p = Runtime.getRuntime().exec("java  " + fileNam);
		BufferedReader input = new BufferedReader(new InputStreamReader(p.getInputStream()));
		String line = input.readLine();
		rslt += "<br>Execution Result =";
		BufferedReader inputCI = new BufferedReader(new InputStreamReader(p.getErrorStream()));
		String lineCI = inputCI.readLine();	
		inputCI.close();
		input.close();
		// wait for the command complete
		p.waitFor();
		int ret = p.exitValue();
	    if(ret<=0){
	    	if (line != null)
				rslt += "<br><br>" + line;
	    }else{
	    	rslt += "<br><br>Exception " + lineCI;
	    }
	}else{
		rslt += "<br>Compiletation Error =<br>" + lineC;
	}


	Connection con = null;

	PreparedStatement ps1 = null;
	//inserting data to qryStore table
	try {
		con = DBo.getConnection();
		ps1 = con.prepareStatement("insert into javaStore(qry,rslt,username) values(?,?,?)");
		ps1.setString(1, qry);
		ps1.setString(2, rslt);
		ps1.setString(3, username);
		int a = ps1.executeUpdate();

	} catch (SQLException e2) {
		rslt = e2.getLocalizedMessage();
	} finally {
		if (con != null) {
			con.close();
		}
		if (ps1 != null) {
			ps1.close();
		}
	}
	session.setAttribute("rslt", rslt);
	response.sendRedirect("rslt.jsp?username=" + username);
%>
