<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin</title>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js">
			</script>
		<script src="jspdf.plugin.autotable.min.js"></script>
		<script language="javascript">
		function generatePDF()
		  {
		   let specialElementHandlers={"#table":function(element,renderer)
		    {
		    return true;
		    }
		   }
		   var doc =new jsPDF();
		   doc.fromHTML(document.getElementById('table').innerHTML,15,15,{
		   "width":170,
		   "elementHandlers":specialElementHandlers
		   });
		   doc.save("teacherPreferences.pdf");
		   
		  }
		</script>
	</head>
<%
ResultSet result=null;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Anjali", "orcl1");
	Statement stmt = conn1.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	
%>
<body align="center">
	<% 
		result = stmt.executeQuery("select * from teacher");
} catch (Exception e) {
out.println(e);
}
   %>
   <h2>Teacher Subject Preferences</h2>
   <div id="table" align="center">
   <table border="1" align="center">
   <tr>
   <th> INITIAL</th>
   <th> NAME</th>
   <th> CHOICE1</th>
   <th> CHOICE2</th>
   <th> CHOICE3</th>
   <th> CHOICE4</th>

   <% while(result.next()){ %>
   
    <tr><td> <%= result.getString(1) %></td> 
        <td> <%= result.getString(2) %> </td>
        <td> <%= result.getString(6) %> </td>
     <td> <%= result.getString(7) %> </td>
     <td> <%= result.getString(8) %> </td>
     <td> <%= result.getString(9) %> </td>
    </tr>
   <%}%>
   </table>
   </div>
   <br>
   <button onclick="generatePDF()">Generate PDF</button>
</body>
</html>

