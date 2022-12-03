<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body align="center">
	<form action="r1process.jsp" method="post">
		<h3>Login Page</h3>
		<br>
		<table align="center">
			<tr>
				<label>Choose Role : </label>
				<select name="user" id="user">
					<option value="teacher">Teacher</option>
					<option value="student">Student</option>
					<option value="admin">Admin</option>
				</select>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="uemail" value="Email ID..."
					onclick="this.value=''" /></td>

			</tr>

			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="upass" value="Password..."
					onclick="this.value=''" /></td>

			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
