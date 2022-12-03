<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher Choice Filling</title>
</head>
<body align="center">
<%String email=(session.getAttribute("email").toString());%>
	<form action="teacherprocess.jsp" method="post">
		<h3>Teacher Choice Filling</h3>
		
				<input type="hidden" id="email" name="email" value="<%=email%>"></input><br>
		<table align="center">
			<tr>
				<th>
					<p>Enter Choice 1
					<p>
						<select name="subject1" id="subject1">
							<option value="INFO3101">Advanced Java & Web Technology</option>
							<option value="INFO3102">Operating Systems</option>
							<option value="INFO3103">Design & Analysis of Algorithms</option>
							<option value="INFO3104">Software Engineering</option>
							<option value="INFO3131">Computer Graphics</option>
							<option value="INFO3132">Distributed Database Management
								Systems</option>
							<option value="INCO3016">Indian Constitution And Civil
								Society</option>

						</select>
				</th>
			</tr>
			<tr>
				<th>
					<p>Enter Choice 2
					<p>
						<select name="subject2" id="subject2">
							<option value="INFO3101">Advanced Java & Web Technology</option>
							<option value="INFO3102">Operating Systems</option>
							<option value="INFO3103">Design & Analysis of Algorithms</option>
							<option value="INFO3104">Software Engineering</option>
							<option value="INFO3131">Computer Graphics</option>
							<option value="INFO3132">Distributed Database Management
								Systems</option>
							<option value="INCO3016">Indian Constitution And Civil
								Society</option>

						</select>
				</th>
			</tr>
			<tr>
				<th>
					<p>Enter Choice 1
					<p>
						<select name="subject3" id="subject3">
							<option value="INFO3101">Advanced Java & Web Technology</option>
							<option value="INFO3102">Operating Systems</option>
							<option value="INFO3103">Design & Analysis of Algorithms</option>
							<option value="INFO3104">Software Engineering</option>
							<option value="INFO3131">Computer Graphics</option>
							<option value="INFO3132">Distributed Database Management
								Systems</option>
							<option value="INCO3016">Indian Constitution And Civil
								Society</option>

						</select>
				</th>
			</tr>
			<tr>
				<th>
					<p>Enter Choice 4
					<p>
						<select name="subject4" id="subject4">
							<option value="INFO3101">Advanced Java & Web Technology</option>
							<option value="INFO3102">Operating Systems</option>
							<option value="INFO3103">Design & Analysis of Algorithms</option>
							<option value="INFO3104">Software Engineering</option>
							<option value="INFO3131">Computer Graphics</option>
							<option value="INFO3132">Distributed Database Management
								Systems</option>
							<option value="INCO3016">Indian Constitution And Civil
								Society</option>

						</select>
				</th>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
