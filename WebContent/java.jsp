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



			<div class="panel-group" id="accordion" role="tablist"
				aria-multiselectable="true">


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne"> Introduction to Java </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">
								Java programming language was originally developed by <b>Sun
									Microsystems</b> which was initiated by James Gosling and released
								in 1995 as core component of Sun Microsystems' Java platform
								(Java 1.0 [J2SE]). The latest release of the Java Standard
								Edition is Java SE 8. With the advancement of Java and its
								widespread popularity, multiple configurations were built to
								suit various types of platforms. For example: J2EE for
								Enterprise Applications, J2ME for Mobile Applications. The new
								J2 versions were renamed as Java SE, Java EE, and Java ME
								respectively. Java is guaranteed to be <b>Write Once, Run
									Anywhere.</b>
							</p>
						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"> Java
								Features </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676">
								<b>Object Oriented</b> − In Java, everything is an Object. Java
								can be easily extended since it is based on the Object model.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Platform Independent </b> − Unlike many other programming
								languages including C and C++, when Java is compiled, it is not
								compiled into platform specific machine, rather into platform
								independent byte code. This byte code is distributed over the
								web and interpreted by the Virtual Machine (JVM) on whichever
								platform it is being run on.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Simple</b> − Java is designed to be easy to learn. If you
								understand the basic concept of OOP Java, it would be easy to
								master.
							</p>

							<p style="text-align: justify; color: #767676">
								<b>Secure</b> − With Java's secure feature it enables to develop
								virus-free, tamper-free systems. Authentication techniques are
								based on public-key encryption.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Architecture-neutral</b> − Java compiler generates an
								architecture-neutral object file format, which makes the
								compiled code executable on many processors, with the presence
								of Java runtime system.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Portable</b> − Being architecture-neutral and having no
								implementation dependent aspects of the specification makes Java
								portable. Compiler in Java is written in ANSI C with a clean
								portability boundary, which is a POSIX subset.
							</p>



							<p style="text-align: justify; color: #767676">
								<b>Robust</b> − Java makes an effort to eliminate error prone
								situations by emphasizing mainly on compile time error checking
								and runtime checking.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Multithreaded </b> − With Java's multithreaded feature it is
								possible to write programs that can perform many tasks
								simultaneously. This design feature allows the developers to
								construct interactive applications that can run smoothly.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Interpreted</b> − Java byte code is translated on the fly to
								native machine instructions and is not stored anywhere. The
								development process is more rapid and analytical since the
								linking is an incremental and light-weight process.
							</p>

							<p style="text-align: justify; color: #767676">
								<b>High Performance</b> − With the use of Just-In-Time
								compilers, Java enables high performance.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Distributed</b> − Java is designed for the distributed
								environment of the Internet.
							</p>
							<p style="text-align: justify; color: #767676">
								<b>Dynamic</b> − Java is considered to be more dynamic than C or
								C++ since it is designed to adapt to an evolving environment.
								Java programs can carry extensive amount of run-time information
								that can be used to verify and resolve accesses to objects on
								run-time.
							</p>


						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree"> History
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">
								<b>James Gosling, Mike Sheridan, and Patrick Naughton </b>initiated
								the Java language project in June 1991.Java was originally
								designed for interactive television, but it was too advanced for
								the digital cable television industry at the time. The language
								was initially called Oak after an oak tree that stood outside
								Gosling's office. Later the project went by the name Green and
								was finally renamed Java, from Java coffee.Gosling designed Java
								with a C/C++-style syntax that system and application
								programmers would find familiar.
							</p>

							<p style="text-align: justify; color: #767676;">Sun
								Microsystems released the first public implementation as Java
								1.0 in 1995.[26] It promised "Write Once, Run Anywhere" (WORA),
								providing no-cost run-times on popular platforms. Fairly secure
								and featuring configurable security, it allowed network- and
								file-access restrictions. Major web browsers soon incorporated
								the ability to run Java applets within web pages, and Java
								quickly became popular, while mostly outside of browsers, that
								wasn't the original plan. In January 2016, Oracle announced that
								Java runtime environments based on JDK 9 will discontinue the
								browser plugin.The Java 1.0 compiler was re-written in Java by
								Arthur van Hoff to comply strictly with the Java 1.0 language
								specification.With the advent of Java 2 (released initially as
								J2SE 1.2 in December 1998 – 1999), new versions had multiple
								configurations built for different types of platforms. J2EE
								included technologies and APIs for enterprise applications
								typically run in server environments, while J2ME featured APIs
								optimized for mobile applications. The desktop version was
								renamed J2SE. In 2006, for marketing purposes, Sun renamed new
								J2 versions as Java EE, Java ME, and Java SE, respectively.</p>
							<p style="text-align: justify; color: #767676;">In 1997, Sun
								Microsystems approached the ISO/IEC JTC 1 standards body and
								later the Ecma International to formalize Java, but it soon
								withdrew from the process.Java remains a de facto standard,
								controlled through the Java Community Process.At one time, Sun
								made most of its Java implementations available without charge,
								despite their proprietary software status. Sun generated revenue
								from Java through the selling of licenses for specialized
								products such as the Java Enterprise System.</p>

							<p style="text-align: justify; color: #767676;">On November
								13, 2006, Sun released much of its Java virtual machine (JVM) as
								free and open-source software, (FOSS), under the terms of the
								GNU General Public License (GPL). On May 8, 2007, Sun finished
								the process, making all of its JVM's core code available under
								free software/open-source distribution terms, aside from a small
								portion of code to which Sun did not hold the copyright. Sun's
								vice-president Rich Green said that Sun's ideal role with regard
								to Java was as an "evangelist". Following Oracle Corporation's
								acquisition of Sun Microsystems in 2009–10, Oracle has described
								itself as the "steward of Java technology with a relentless
								commitment to fostering a community of participation and
								transparency". This did not prevent Oracle from filing a lawsuit
								against Google shortly after that for using Java inside the
								Android SDK (see Google section below). Java software runs on
								everything from laptops to data centers, game consoles to
								scientific supercomputers. On April 2, 2010, James Gosling
								resigned from Oracle.</p>

						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour"> Versions
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">As of 2015,
								only Java 8 is officially supported. Major release versions of
								Java, along with their release dates:</p>
							<p style="text-align: justify; color: #767676;">JDK 1.0
								(January 23, 1996)</p>
							<p style="text-align: justify; color: #767676;">JDK 1.1
								(February 19, 1997)</p>
							<p style="text-align: justify; color: #767676;">J2SE 1.2
								(December 8, 1998)</p>
							<p style="text-align: justify; color: #767676;">J2SE 1.3 (May
								8, 2000)</p>
							<p style="text-align: justify; color: #767676;">J2SE 1.4
								(February 6, 2002)</p>
							<p style="text-align: justify; color: #767676;">J2SE 5.0
								(September 30, 2004)</p>
							<p style="text-align: justify; color: #767676;">Java SE 6
								(December 11, 2006)</p>
							<p style="text-align: justify; color: #767676;">Java SE 7
								(July 28, 2011)</p>
							<p style="text-align: justify; color: #767676;">Java SE 8
								(March 18, 2014)</p>


						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFive"
								aria-expanded="false" aria-controls="collapseFive">
								Environment Setup </a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFive">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">
								<b>Local Environment Setup - </b> If you are still willing to
								set up your environment for Java programming language, then this
								section guides you on how to download and set up Java on your
								machine. Following are the steps to set up the environment. Java
								SE is freely available from the link Download Java. You can
								download a version based on your operating system. Follow the
								instructions to download Java and run the .exe to install Java
								on your machine. Once you installed Java on your machine, you
								will need to set environment variables to point to correct
								installation directories −
							</p>
							<b><h4 style="text-align: justify; color: #767676;">Setting
									Up the Path for Windows</h4></b>
							<p style="text-align: justify; color: #767676;">Assuming you
								have installed Java in c:\Program Files\java\jdk directory −</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Right-click on 'My Computer' and select 'Properties'.</li>
								<li>Click the 'Environment variables' button under the
									'Advanced' tab.</li>
								<li>Now, alter the 'Path' variable so that it also contains
									the path to the Java executable. Example, if the path is
									currently set to 'C:\WINDOWS\SYSTEM32', then change your path
									to read 'C:\WINDOWS\SYSTEM32;c:\Program Files\java\jdk\bin'.</li>
							</ul>
							<b>
								<h5 style="text-align: justify; color: #767676;">Setting Up
									the Path for Linux, UNIX, Solaris, FreeBSD-</h5>
							</b>
							<p style="text-align: justify; color: #767676;">Environment
								variable PATH should be set to point to where the Java binaries
								have been installed. Refer to your shell documentation, if you
								have trouble doing this.</p>
							<p style="text-align: justify; color: #767676;">Example, if
								you use bash as your shell, then you would add the following
								line to the end of your '.bashrc: export PATH =
								/path/to/java:$PATH'</p>
							<h5 style="text-align: justify; color: #767676;">Popular
								Java Editors</h5>
							<p style="text-align: justify; color: #767676;">To write your
								Java programs, you will need a text editor. There are even more
								sophisticated IDEs available in the market. But for now, you can
								consider one of the following −</p>
							<p style="text-align: justify; color: #767676;">
								<b>Notepad −</b> On Windows machine, you can use any simple text
								editor like Notepad (Recommended for this tutorial), TextPad.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Netbeans −</b> A Java IDE that is open-source and free which
								can be downloaded from https://www.netbeans.org/index.html.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Eclipse</b>− A Java IDE developed by the eclipse open-source
								community and can be downloaded from https://www.eclipse.org/.
							</p>


						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading6">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse6" aria-expanded="false"
								aria-controls="collapse6"> Basic Definitions </a>
						</h4>
					</div>
					<div id="collapse6" class="panel-collapse collapse" role="tabpanel"
						aria-labelledby="heading6">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">When we
								consider a Java program, it can be defined as a collection of
								objects that communicate via invoking each other's methods. Let
								us now briefly look into what do class, object, methods, and
								instance variables mean.</p>
							<p style="text-align: justify; color: #767676;">
								<b>Object −</b> Objects have states and behaviors. Example: A
								dog has states - color, name, breed as well as behavior such as
								wagging their tail, barking, eating. An object is an instance of
								a class.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Class −</b> A class can be defined as a template/blueprint
								that describes the behavior/state that the object of its type
								supports.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Methods −</b> A method is basically a behavior. A class can
								contain many methods. It is in methods where the logics are
								written, data is manipulated and all the actions are executed.
							</p>

						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading7">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse7" aria-expanded="false"
								aria-controls="collapse7"> First Java Program </a>
						</h4>
					</div>
					<div id="collapse7" class="panel-collapse collapse" role="tabpanel"
						aria-labelledby="heading7">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">Let us look
								at a simple code that will print the words Hello World.</p>



							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class Main {

   /* This is my first java program.
    * This will print 'Hello World' as the output
    */

   public static void main(String []args) {
      System.out.println("Hello World"); // prints Hello World
   }
}</textarea>
								<button type="button" class="btn btn-default"
									data-toggle="modal" data-target="#prg1">Run</button>

								<div class="modal " tabindex="-1" role="dialog"
									aria-labelledby="mySmallModalLabel" id="prg1">
									<div class="modal-dialog modal-sm" role="document">
										<div class="modal-content">
											C:\> javac Main.java<br /> C:\> java Main<br /> Hello World
										</div>
									</div>
								</div>
							</div>


							<p style="text-align: justify; color: #767676;">
								<b>Object −</b> Let's look at how to save the file, compile, and
								run the program. Please follow the subsequent steps −
							</p>

							<ul style="text-align: justify; color: #767676;">
								<li>Open notepad and add the code as above.</li>
								<li>Save the file as: MyFirstJavaProgram.java..</li>
								<li>Open a command prompt window and go to the directory
									where you saved the class. Assume it's C:\.</li>
								<li>Type 'javac MyFirstJavaProgram.java' and press enter to
									compile your code. If there are no errors in your code, the
									command prompt will take you to the next line (Assumption : The
									path variable is set).</li>
								<li>Now, type ' java MyFirstJavaProgram ' to run your
									program.</li>
								<li>You will be able to see ' Hello World ' printed on the
									window</li>
							</ul>

						</div>
					</div>
				</div>



				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading8">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse8" aria-expanded="false"
								aria-controls="collapse8"> Basic Syntax </a>
						</h4>
					</div>
					<div id="collapse8" class="panel-collapse collapse" role="tabpanel"
						aria-labelledby="heading8">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">
								<b>Case Sensitivity − </b>Java is case sensitive, which means
								identifier Hello and hello would have different meaning in Java.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b> Class Names −</b> For all class names the first letter
								should be in Upper Case. If several words are used to form a
								name of the class, each inner word's first letter should be in
								Upper Case.<b> Example: class MyFirstJavaClass</b>
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Method Names −</b> All method names should start with a Lower
								Case letter. If several words are used to form the name of the
								method, then each inner word's first letter should be in Upper
								Case.<b> Example: public void myMethodName()</b>
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Program File Name −</b> Name of the program file should
								exactly match the class name. When saving the file, you should
								save it using the class name (Remember Java is case sensitive)
								and append '.java' to the end of the name (if the file name and
								the class name do not match, your program will not compile).<b>
									Example: Assume 'MyFirstJavaProgram' is the class name. Then
									the file should be saved as 'MyFirstJavaProgram.java'</b>
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>public static void main(String args[]) −</b> Java program
								processing starts from the main() method which is a mandatory
								part of every Java program.
							</p>

						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading9">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse9" aria-expanded="false"
								aria-controls="collapse9"> Identifiers </a>
						</h4>
					</div>
					<div id="collapse9" class="panel-collapse collapse" role="tabpanel"
						aria-labelledby="heading9">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">All Java
								components require names. Names used for classes, variables, and
								methods are called identifiers. In Java, there are several
								points to remember about identifiers. They are as follows −</p>
							<ul style="text-align: justify; color: #767676;">
								<li>All identifiers should begin with a letter (A to Z or a
									to z), currency character ($) or an underscore ( _ ).</li>
								<li>After the first character, identifiers can have any
									combination of characters..</li>
								<li>A key word cannot be used as an identifier.</li>
								<li>Most importantly, identifiers are case sensitive.</li>
								<li>Examples of legal identifiers: age, $salary, _value,
									__1_value.</li>
								<li>Examples of illegal identifiers: 123abc, -salary.</li>
							</ul>

						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading10">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse10"
								aria-expanded="false" aria-controls="collapse10"> Keywords </a>
						</h4>
					</div>
					<div id="collapse10" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading10">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">The following
								list shows the reserved words in Java. These reserved words may
								not be used as constant or variable or any other identifier
								names. −</p>
							<table class="table table-striped"
								style="text-align: justify; color: #767676;">
								<tr class="active">
									<td>abstract</td>
									<td>assert</td>
									<td>boolean</td>
									<td>break</td>
									<td>byte</td>
									<td>case</td>
									<td>catch</td>
								</tr>
								<tr class="success">
									<td>char</td>
									<td>class</td>
									<td>const</td>
									<td>continue</td>
									<td>default</td>
									<td>do</td>
									<td>double</td>

								</tr>
								<tr class="warning">
									<td>else</td>
									<td>enum</td>
									<td>extends</td>
									<td>final</td>
									<td>finally</td>
									<td>float</td>
									<td>for</td>
								</tr>
								<tr class="danger">
									<td>goto</td>
									<td>if</td>
									<td>implements</td>
									<td>import</td>
									<td>instanceof</td>
									<td>int</td>
									<td>interface</td>
								</tr>
								<tr class="info">
									<td>long</td>
									<td>native</td>
									<td>new</td>
									<td>package</td>
									<td>private</td>
									<td>protected</td>
									<td>public</td>
								</tr>
								<tr class="active">
									<td>return</td>
									<td>short</td>
									<td>static</td>
									<td>strictfp</td>
									<td>super</td>
									<td>switch</td>
									<td>synchronized</td>
								</tr>
								<tr class="success">
									<td>this</td>
									<td>throw</td>
									<td>throws</td>
									<td>transient</td>
									<td>try</td>
									<td>void</td>
									<td>volatile</td>

								</tr>
								<tr class="warning">
									<td>while</td>

								</tr>

							</table>

						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading11">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse11"
								aria-expanded="false" aria-controls="collapse11"> Comments </a>
						</h4>
					</div>
					<div id="collapse11" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading11">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">Java supports
								single-line and multi-line comments very similar to C and C++.
								All characters available inside any comment are ignored by Java
								compiler.</p>
							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class Main {

  public class MyFirstJavaProgram {

   /* This is my first java program.
    * This will print 'Hello World' as the output
    * This is an example of multi-line comments.
    */

   public static void main(String []args) {
      // This is an example of single line comment
      /* This is also an example of single line comment. */
      System.out.println("Hello World");
   }
}</textarea>
								<button type="button" class="btn btn-default"
									data-toggle="modal" data-target="#prg2">Run</button>

								<div class="modal " tabindex="-1" role="dialog"
									aria-labelledby="mySmallModalLabel" id="prg2">
									<div class="modal-dialog modal-sm" role="document">
										<div class="modal-content">Hello World</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading12">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse12"
								aria-expanded="false" aria-controls="collapse12"> Object and
								Class </a>
						</h4>
					</div>
					<div id="collapse12" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading12">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">
								<b>Objects in Java</b> Let us now look deep into what are
								objects. If we consider the real-world, we can find many objects
								around us, cars, dogs, humans, etc. All these objects have a
								state and a behavior. If we consider a dog, then its state is -
								name, breed, color, and the behavior is - barking, wagging the
								tail, running. If you compare the software object with a
								real-world object, they have very similar characteristics.
								Software objects also have a state and a behavior. A software
								object's state is stored in fields and behavior is shown via
								methods. So in software development, methods operate on the
								internal state of an object and the object-to-object
								communication is done via methods.
							</p>
							<p style="text-align: justify; color: #767676;">
								<b>Classes in Java</b> A class can be defined as a
								template/blueprint that describes the behavior/state that the
								object of its type support.
							</p>
							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class Main {

  public class MyFirstJavaProgram {

   /* This is my first java program.
    * This will print 'Hello World' as the output
    * This is an example of multi-line comments.
    */

   public static void main(String []args) {
      // This is an example of single line comment
      /* This is also an example of single line comment. */
      System.out.println("Hello World");
   }
}</textarea>



								<p style="text-align: justify; color: #767676;">
									<b>A class can contain any of the following variable types.</b>
								</p>
								<p style="text-align: justify; color: #767676;">
									<b>Local variables −</b> Variables defined inside methods,
									constructors or blocks are called local variables. The variable
									will be declared and initialized within the method and the
									variable will be destroyed when the method has completed.
								</p>
								<p style="text-align: justify; color: #767676;">

									<b>Instance variables −</b> Instance variables are variables
									within a class but outside any method. These variables are
									initialized when the class is instantiated. Instance variables
									can be accessed from inside any method, constructor or blocks
									of that particular class.
								</p>
								<p style="text-align: justify; color: #767676;">
									<b> Class variables − </b>Class variables are variables
									declared within a class, outside any method, with the static
									keyword.
								</p>
							</div>
							<p style="text-align: justify; color: #767676;">A class can
								have any number of methods to access the value of various kinds
								of methods. In the above example, barking(), hungry() and
								sleeping() are methods. Following are some of the important
								topics that need to be discussed when looking into classes of
								the Java Language.</p>



						</div>
					</div>
				</div>



				<!--  Data -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading13">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse13"
								aria-expanded="false" aria-controls="collapse13"> Creating
								an Object </a>
						</h4>
					</div>
					<div id="collapse13" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading13">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">As mentioned
								previously, a class provides the blueprints for objects. So
								basically, an object is created from a class. In Java, the new
								keyword is used to create new objects.</p>
							<p style="text-align: justify; color: #767676;">
								<strong>Declaration −</strong> A variable declaration with a
								variable name with an object type.
							</p>
							<p style="text-align: justify; color: #767676;">
								<strong>Instantiation −</strong>The 'new' keyword is used to
								create the object.
							</p>
							<p style="text-align: justify; color: #767676;">
								<strong>Initialization −</strong> The 'new' keyword is followed
								by a call to a constructor. This call initializes the new
								object.
							</p>

							<!-- pg -->
							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class Puppy {
   public Puppy(String name) {
      // This constructor has one parameter, name.
      System.out.println("Passed Name is :" + name );
   }

   public static void main(String []args) {
      // Following statement would create an object myPuppy
      Puppy myPuppy = new Puppy( "tommy" );
   }
}</textarea>
								<button type="button" class="btn btn-default"
									data-toggle="modal" data-target="#prg3">Run</button>

								<div class="modal " tabindex="-1" role="dialog"
									aria-labelledby="mySmallModalLabel" id="prg3">
									<div class="modal-dialog modal-sm" role="document">
										<div class="modal-content">Passed Name is :tommy</div>
									</div>
								</div>
							</div>
							<!-- pg -->
							<p style="text-align: justify; color: #767676;">
								<strong>Accessing Instance Variables and Methods −</strong>
								nstance variables and methods are accessed via created objects.
								To access an instance variable, following is the fully qualified
								path −
							</p>
							<p style="text-align: justify; color: #767676;">
								/* First create an object */<br> ObjectReference = new
								Constructor();<br> ObjectReference = new Constructor();<br>
								/* Now call a variable as follows */<br>
								ObjectReference.variableName;<br> /* Now you can call a
								class method as follows */<br>
								ObjectReference.MethodName();<br>
							</p>

							<!-- pg -->
							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class Puppy {
   public Puppy(String name) {
      // This constructor has one parameter, name.
      System.out.println("Passed Name is :" + name );
   }

   public static void main(String []args) {
      // Following statement would create an object myPuppy
      Puppy myPuppy = new Puppy( "tommy" );
   }
}</textarea>
								<button type="button" class="btn btn-default"
									data-toggle="modal" data-target="#prg4">Run</button>

								<div class="modal " tabindex="-1" role="dialog"
									aria-labelledby="mySmallModalLabel" id="prg4">
									<div class="modal-dialog modal-sm" role="document">
										<div class="modal-content">
											Name chosen is :tommy<br> Puppy's age is :2<br>
											Variable Value :2
										</div>
									</div>
								</div>
							</div>
							<!-- pg -->



						</div>
					</div>
				</div>

				<!--  Data -->
				<!--  Data -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading14">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse14"
								aria-expanded="false" aria-controls="collapse14"> Java Basic
								Datatypes </a>
						</h4>
					</div>
					<div id="collapse14" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading14">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">Variables are
								nothing but reserved memory locations to store values. This
								means that when you create a variable you reserve some space in
								the memory.</p>
							<p style="text-align: justify; color: #767676;">Based on the
								data type of a variable, the operating system allocates memory
								and decides what can be stored in the reserved memory.
								Therefore, by assigning different data types to variables, you
								can store integers, decimals, or characters in these variables.
							</p>
							<p style="text-align: justify; color: #767676;">
								There are two data types available in Java − <br>1.
								Primitive Data Types <br>2. Reference/Object Data Types
							</p>
							<p style="text-align: justify; color: #767676;">
								<strong>Primitive Data Types −</strong> There are eight
								primitive datatypes supported by Java. Primitive datatypes are
								predefined by the language and named by a keyword. Let us now
								look into the eight primitive data types in detail.
							</p>
							<p style="text-align: justify; color: #767676;">
								<strong>byte−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Byte data type is an 8-bit signed two's complement
									integer</li>
								<li>Minimum value is -128 (-2^7)</li>
								<li>Maximum value is 127 (inclusive)(2^7 -1)</li>
								<li>Default value is 0</li>
								<li>Byte data type is used to save space in large arrays,
									mainly in place of integers, since a byte is four times smaller
									than an integer.</li>
								<li>Example: byte a = 100, byte b = -50</li>
							</ul>

							<p style="text-align: justify; color: #767676;">
								<strong>short−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Short data type is a 16-bit signed two's complement
									integer</li>
								<li>Minimum value is -32,768 (-2^15)</li>
								<li>Maximum value is 32,767 (inclusive) (2^15 -1)</li>
								<li>Default value is 0</li>
								<li>Short data type can also be used to save memory as byte
									data type. A short is 2 times smaller than an integer</li>
								<li>Example: short s = 10000, short r = -20000</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>int−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Int data type is a 32-bit signed two's complement
									integer.</li>
								<li>Minimum value is - 2,147,483,648 (-2^31)</li>
								<li>Maximum value is 2,147,483,647(inclusive) (2^31 -1)</li>
								<li>Default value is 0</li>
								<li>Integer is generally used as the default data type for
									integral values unless there is a concern about memory.</li>
								<li>Example: int a = 100000, int b = -200000</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>long−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Long data type is a 64-bit signed two's complement
									integer.</li>
								<li>Minimum value is -9,223,372,036,854,775,808(-2^63)</li>
								<li>Maximum value is 9,223,372,036,854,775,807
									(inclusive)(2^63 -1)</li>
								<li>Default value is 0L</li>
								<li>This type is used when a wider range than int is needed</li>
								<li>Example: long a = 100000L, long b = -200000L</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>float−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Float data type is a single-precision 32-bit IEEE 754
									floating point.</li>
								<li>Minimum value is -9,223,372,036,854,775,808(-2^63)</li>
								<li>Default value is 0.0f</li>
								<li>Float is mainly used to save memory in large arrays of
									floating point numbers</li>
								<li>Example: float f1 = 234.5f</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>double−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>double data type is a double-precision 64-bit IEEE 754
									floating point</li>
								<li>This data type is generally used as the default data
									type for decimal values, generally the default choice</li>
								<li>Double data type should never be used for precise
									values such as currency</li>
								<li>Default value is 0.0dL</li>
								<li>This type is used when a wider range than int is needed</li>
								<li>Example: double d1 = 123.4</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>boolean−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>boolean data type represents one bit of information</li>
								<li>There are only two possible values: true and false</li>
								<li>This data type is used for simple flags that track
									true/false conditions</li>
								<li>Default value is false</li>
								<li>Example: boolean one = true</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>char−</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>char data type is a single 16-bit Unicode character</li>
								<li>Minimum value is '\u0000' (or 0)</li>
								<li>Maximum value is '\uffff' (or 65,535 inclusive)s</li>
								<li>Char data type is used to store any character</li>
								<li>Example: char letterA = 'A'</li>
							</ul>
							<p style="text-align: justify; color: #767676;">
								<strong>Reference Datatypes −</strong>
							</p>
							<ul style="text-align: justify; color: #767676;">
								<li>Reference variables are created using defined
									constructors of the classes. They are used to access objects.
									These variables are declared to be of a specific type that
									cannot be changed. For example, Employee, Puppy, etc.</li>
								<li>Default value of any reference variable is null.</li>
								<li>Class objects and various type of array variables come
									under reference datatype.</li>
								<li>A reference variable can be used to refer any object of
									the declared type or any compatible type.</li>
								<li>Example: Animal animal = new Animal("giraffe");</li>
							</ul>

						</div>
					</div>
				</div>

				<!--  Data -->

				<!--  Data -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="heading15">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapse15"
								aria-expanded="false" aria-controls="collapse15"> Access
								Modifier </a>
						</h4>
					</div>
					<div id="collapse15" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="heading15">
						<div class="panel-body">
							<p style="text-align: justify; color: #767676;">Modifiers are
								keywords that you add to those definitions to change their
								meanings. Java language has a wide variety of modifiers −</p>
							<p style="text-align: justify; color: #767676;">To use a
								modifier, you include its keyword in the definition of a class,
								method, or variable. The modifier precedes the rest of the
								statement, as in the following example.</p>


							<!-- pg -->
							<div class="form-group">
								<textarea class="form-control" rows=10 disabled="disabled">public class className {
   // ...
}

private boolean myFlag;
static final double weeks = 9.5;
protected static final int BOXWIDTH = 42;

public static void main(String[] arguments) {
   // body of method
}</textarea>
</div>
								<!-- pg -->
								<p style="text-align: justify; color: #767676;">
									<strong>Access Control Modifiers</strong> Java provides a
									number of access modifiers to set access levels for classes,
									variables, methods and constructors. The four access levels are
								
								</p>
								<ul style="text-align: justify; color: #767676;">
									<li>Visible to the package, the default. No modifiers are needed.</li>
									<li>Visible to the class only (private).</li>
									<li>Visible to the world (public</li>
									<li>Visible to the package and all subclasses (protected).</li>
								</ul>
								<p style="text-align: justify; color: #767676;">
									<strong>Non-Access Modifiers</strong> Java provides a number of
									non-access modifiers to achieve many other functionality
								</p>

								<ul style="text-align: justify; color: #767676;">
									<li>The static modifier for creating class methods and
										variables.</li>
									<li>The final modifier for finalizing the implementations
										of classes, methods, and variables.</li>
									<li>Class objects and various type of array variables come
										under reference datatype.</li>
									<li>The abstract modifier for creating abstract classes
										and methods.</li>
									<li>The synchronized and volatile modifiers, which are
										used for threads.</li>
								</ul>

							</div>
						</div>
					</div>

					<!--  Data -->









				</div>




			</div>
		</div>

		<script src="resource/jquery/jquery-3.1.1.min.js"></script>
		<script src="resource/bootstrap/js/bootstrap.min.js"></script>
		<script src="otherResource/validation.js"></script>
</body>
</html>
