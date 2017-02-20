<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String username = request.getParameter("username");
	if (username == null) {
		response.sendRedirect("index.jsp?err=User already exist ! Try Again");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="row">
		<div class="col-md-12" style="valign: center; align: center;">



			<div class="panel-group" id="accordion1" role="tablist"
				aria-multiselectable="true">


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingsOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion1"
								href="#collapsesOne" aria-expanded="true"
								aria-controls="collapsesOne"> Introduction to SQL </a>
						</h4>
					</div>
					<div id="collapsesOne" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingsOne">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">SQL is
								Structured Query Language, which is a computer language for
								storing, manipulating and retrieving data stored in relational
								database. SQL is the standard language for Relation Database
								System. All relational database management systems like MySQL,
								MS Access, Oracle, Sybase, Informix, postgres and SQL Server use
								SQL as standard database language.</p>
						</div>
					</div>
				</div>

				<!--  -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingsTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion1" href="#collapsesTwo"
								aria-expanded="false" aria-controls="collapsesTwo"> SQL
								Process </a>
						</h4>
					</div>
					<div id="collapsesTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingsTwo">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676">When you are
								executing an SQL command for any RDBMS, the system determines
								the best way to carry out your request and SQL engine figures
								out how to interpret the task.</p>
							<p style="text-align: justify; color: #767676">
								There are various components included in the process. These
								components are Query Dispatcher, Optimization Engines, Classic
								Query Engine and SQL Query Engine, etc. Classic query engine
								handles all non-SQL queries but SQL query engine won't handle
								logical files. <br>Following is a simple diagram showing
								SQL Architecture:
							</p>
							<img src="image/sql-architecture.jpg" alt="Please Wait"
								class="img-thumbnail">

						</div>
					</div>
				</div>
				<!--  -->

				<!--  -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headings3">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion1" href="#collapses3"
								aria-expanded="false" aria-controls="collapses3"> SQL
								Commands </a>
						</h4>
					</div>
					<div id="collapses3" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headings3">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676">The standard
								SQL commands to interact with relational databases are CREATE,
								SELECT, INSERT, UPDATE, DELETE and DROP. These commands can be
								classified into groups based on their nature:</p>
							<p style="text-align: justify; color: #767676">
								<strong>DDL - Data Definition Language:</strong>
							</p>
							<table class="table table-hover table-responsive">
								<tr class="danger">
									<th>Command</th>
									<th>Description</th>
								</tr>
								<tr class="info">
									<td>CREATE</td>
									<td>Creates a new table, a view of a table, or other
										object in database</td>
								</tr>
								<tr class="info">
									<td>ALTER</td>
									<td>Modifies an existing database object, such as a table.</td>
								</tr>
								<tr class="info">
									<td>DROP</td>
									<td>Deletes an entire table, a view of a table or other
										object in the database.</td>
								</tr>
							</table>
							<p style="text-align: justify; color: #767676">
								<strong>DML - Data Manipulation Language:</strong>
							</p>
							<table class="table table-hover table-responsive">
								<tr class="danger">
									<th>Command</th>
									<th>Description</th>
								</tr>
								<tr class="info">
									<td>SELECT</td>
									<td>Retrieves certain records from one or more tables</td>
								</tr>
								<tr class="info">
									<td>INSERT</td>
									<td>Creates a record</td>
								</tr>
								<tr class="info">
									<td>UPDATE</td>
									<td>Modifies records</td>
								</tr>
								<tr class="info">
									<td>DELETE</td>
									<td>Deletes records</td>
								</tr>
							</table>
							<p style="text-align: justify; color: #767676">
								<strong>DCL - Data Control Language:</strong>
							</p>
							<table class="table table-hover table-responsive">
								<tr class="danger">
									<th>Command</th>
									<th>Description</th>
								</tr>
								<tr class="info">
									<td>GRANT</td>
									<td>Gives a privilege to user</td>
								</tr>
								<tr class="info">
									<td>REVOKE</td>
									<td>Takes back privileges granted from user</td>
								</tr>

							</table>

						</div>
					</div>
				</div>
				<!--  -->


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headings4">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion1" href="#collapses4"
								aria-expanded="false" aria-controls="collapses4"> RDMS
								Concept </a>
						</h4>
					</div>
					<div id="collapses4" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headings4">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676">RDBMS stands
								for Relational Database Management System. RDBMS is the basis
								for SQL, and for all modern database systems like MS SQL Server,
								IBM DB2, Oracle, MySQL, and Microsoft Access. A Relational
								database management system (RDBMS) is a database management
								system (DBMS) that is based on the relational model as
								introduced by E. F. Codd.</p>
							<p style="text-align: justify; color: #767676">
								<strong>Table:</strong>
							</p>
							<p style="text-align: justify; color: #767676">The data in
								RDBMS is stored in database objects called tables. The table is
								a collection of related data entries and it consists of columns
								and rows. Remember, a table is the most common and simplest form
								of data storage in a relational database. Following is the
								example of a Student table:</p>
							<table class="table table-hover table-responsive">
								<tr class="danger">
									<th>Stu_id</th>
									<th>stu_name</th>
								</tr>
								<tr class="info">
									<td>101</td>
									<td>Aksh</td>
								</tr>
								<tr class="info">
									<td>102</td>
									<td>Aksha</td>
								</tr>


							</table>
							<p style="text-align: justify; color: #767676">
								<strong>Fields:</strong>
							</p>
							<p style="text-align: justify; color: #767676">
								Every table is broken up into smaller entities called fields.
								The fields in the student table consist of stu_id,stu_name. <br>A
								field is a column in a table that is designed to maintain
								specific information about every record in the table.
							</p>
							<p style="text-align: justify; color: #767676">
								<strong>Record and Rows:</strong>
							</p>
							<p style="text-align: justify; color: #767676">A record, also
								called a row of data, is each individual entry that exists in a
								table. For example there are 2 records in the above student
								table. Following is a single row of data or record in the
								student table:</p>
							<table class="table table-hover table-responsive">

								<tr class="info">
									<td>102</td>
									<td>Aksha</td>
								</tr>


							</table>
							<p style="text-align: justify; color: #767676">
								<strong>Columns:</strong>
							</p>
							<p style="text-align: justify; color: #767676">
								A column is a vertical entity in a table that contains all
								information associated with a specific field in a table. <br>For
								example, a column in the student table is stu_name, which
								represents location description and would consist of the
								following:
							</p>
							<table class="table table-hover table-responsive">
								<tr class="danger">
									<th>stu_name</th>
								</tr>
								<tr class="info">
									<td>Aksh</td>
								</tr>
								<tr class="info">
									<td>Aksha</td>
								</tr>


							</table>
							<p style="text-align: justify; color: #767676">
								<strong>Null:</strong>
							</p>
							<p style="text-align: justify; color: #767676">
								A NULL value in a table is a value in a field that appears to be
								blank, which means a field with a NULL value is a field with no
								value.<br> It is very important to understand that a NULL
								value is different than a zero value or a field that contains
								spaces. A field with a NULL value is one that has been left
								blank during record creation.
							</p>
							<p style="text-align: justify; color: #767676">
								<strong>SQL Constraints:</strong>
							</p>
							<p style="text-align: justify; color: #767676">Constraints
								are the rules enforced on data columns on table. These are used
								to limit the type of data that can go into a table. This ensures
								the accuracy and reliability of the data in the database.

								Constraints could be column level or table level. Column level
								constraints are applied only to one column where as table level
								constraints are applied to the whole table.</p>
							<p style="text-align: justify; color: #767676">Following are
								commonly used constraints available in SQL:</p>
							<ul style="text-align: justify; color: #767676">
								<li><strong>NOT NULL Constraint:</strong> Ensures that a
									column cannot have NULL value.</li>
								<li><strong>DEFAULT Constraint:</strong> Provides a default
									value for a column when none is specified.</li>
								<li><strong>UNIQUE Constraint:</strong> Ensures that all
									values in a column are different.</li>
								<li><strong>PRIMARY Constraint:</strong> Uniquely
									identified each rows/records in a database table.</li>
								<li><strong>FOREIGN Constraint:</strong> Uniquely
									identified a rows/records in any another database table.</li>
								<li><strong>CHECK Constraint:</strong> The CHECK constraint
									ensures that all values in a column satisfy certain conditions.</li>
								<li><strong>INDEX:</strong> Use to create and retrieve data
									from the database very quickly.</li>
							</ul>
							<p style="text-align: justify; color: #767676">
								<strong>Data Integrity:</strong>
							</p>
							<p style="text-align: justify; color: #767676">The following
								categories of the data integrity exist with each RDBMS:</p>
							<ul style="text-align: justify; color: #767676">
								<li><strong>Entity Integrity:</strong> There are no
									duplicate rows in a table.</li>
								<li><strong>Domain Integrity:</strong> Enforces valid
									entries for a given column by restricting the type, the format,
									or the range of values.</li>
								<li><strong>Referential integrity:</strong> Rows cannot be
									deleted, which are used by other records.</li>
								<li><strong>User-Defined Integrity:</strong> Enforces some
									specific business rules that do not fall into entity, domain or
									referential integrity.</li>
							</ul>
							<p style="text-align: justify; color: #767676">
								<strong>Database Normalization</strong>
							</p>
							<p style="text-align: justify; color: #767676">Database
								normalization is the process of efficiently organizing data in a
								database. There are two reasons of the normalization process:</p>
							<ul style="text-align: justify; color: #767676">
								<li>Eliminating redundant data, for example, storing the
									same data in more than one tables.</li>
								<li>Ensuring data dependencies make sense.</li>
							</ul>
							<p style="text-align: justify; color: #767676">Both of these
								are worthy goals as they reduce the amount of space a database
								consumes and ensure that data is logically stored. Normalization
								consists of a series of guidelines that help guide you in
								creating a good database structure.</p>
							<p style="text-align: justify; color: #767676">Normalization
								guidelines are divided into normal forms; think of form as the
								format or the way a database structure is laid out. The aim of
								normal forms is to organize the database structure so that it
								complies with the rules of first normal form, then second normal
								form, and finally third normal form.</p>
							<p style="text-align: justify; color: #767676">It's your
								choice to take it further and go to fourth normal form, fifth
								normal form, and so on, but generally speaking, third normal
								form is enough</p>
							<ul style="text-align: justify; color: #767676">
								<li>First Normal Form (1NF)</li>
								<li>Second Normal Form (2NF)</li>
								<li>Third Normal Form (3NF)</li>
							</ul>
						</div>
					</div>
				</div>
				<!--  -->
				<!--  -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headings5">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion1" href="#collapses5"
								aria-expanded="false" aria-controls="collapses5"> SQL Basic
								Syntax </a>
						</h4>
					</div>
					<div id="collapses5" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headings5">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676">SQL is
								followed by unique set of rules and guidelines called Syntax.
								This tutorial gives you a quick start with SQL by listing all
								the basic SQL Syntax:</p>
							<p style="text-align: justify; color: #767676">All the SQL
								statements start with any of the keywords like SELECT, INSERT,
								UPDATE, DELETE, ALTER, DROP, CREATE, USE, SHOW and all the
								statements end with a semicolon (;).</p>
							<p style="text-align: justify; color: #767676">Important
								point to be noted is that SQL is case insensitive, which means
								SELECT and select have same meaning in SQL statements, but MySQL
								makes difference in table names. So if you are working with
								MySQL, then you need to give table names as they exist in the
								database.</p>
							<p class="bg-info table-hove "
								style="text-align: justify; color: #767676;">All the
								examples given in this tutorial have been tested with MySQL
								server.</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL SELECT Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DISTINCT Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT DISTINCT column1, column2....columnN <br>FROM
								table_name;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL WHERE Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE CONDITION-1 {AND|OR} CONDITION-2;
							</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL AND/OR Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE column_name IN (val-1, val-2,...val-N);
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL IN Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE column_name IN (val-1, val-2,...val-N);
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL BETWEEN Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE column_name BETWEEN val-1 AND val-2;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL LIKE Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE column_name LIKE { PATTERN };
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL ORDER BY Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE CONDITION<br> ORDER BY column_name {ASC|DESC};
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL GROUP BY Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE CONDITION<br> GROUP BY column_name;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL HAVING Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE CONDITION<br> GROUP BY column_name;<br>HAVING
								(arithematic function condition);
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL COUNT Clause:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								SELECT column1, column2....columnN <br>FROM table_name<br>
								WHERE CONDITION;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL CREATE TABLE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								CREATE TABLE table_name(<br> column1 datatype,<br>
								column2 datatype,<br> column3 datatype,<br> .....<br>
								columnN datatype,<br> PRIMARY KEY( one or more columns )<br>
								);
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DROP TABLE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								DROP TABLE table_name;</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL CREATE INDEX Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								CREATE UNIQUE INDEX index_name<br> ON table_name ( column1,
								column2,...columnN);
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DROP INDEX Statement :</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								ALTER TABLE table_name<br> DROP INDEX index_name;
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DESC Statement :</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								DESC table_name;</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL TRUNCATE TABLE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								TRUNCATE TABLE table_name;</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL ALTER TABLE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								ALTER TABLE table_name {ADD|DROP|MODIFY} column_name {data_ype};</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL ALTER TABLE Statement (Rename) :</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								ALTER TABLE table_name RENAME TO new_table_name;</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL INSERT INTO Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								INSERT INTO table_name( column1, column2....columnN)<br>
								VALUES ( value1, value2....valueN);
							</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL UPDATE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								UPDATE table_name<br> SET column1 = value1, column2 =
								value2....columnN=valueN<br> [ WHERE CONDITION ];
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DELETE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								DELETE FROM table_name<br> WHERE {CONDITION};
							</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL CREATE DATABASE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								CREATE DATABASE database_name;</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL DROP DATABASE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								DROP DATABASE database_name;</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL USE Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								USE database_name;</p>

							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL COMMIT Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								COMMIT;</p>
							<p class="bg-danger table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								<strong>SQL ROLLBACK Statement:</strong>
							</p>
							<p class="bg-info table-hove"
								style="text-align: justify; color: #767676; padding: 10px">
								ROLLBACK;</p>


						</div>
					</div>
				</div>
				<!--  -->





			</div>




		</div>
	</div>

	<script src="resource/jquery/jquery-3.1.1.min.js"></script>
	<script src="resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="otherResource/validation.js"></script>
</body>
</html>
