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
		   doc.fromHTML(document.getElementById('table').innerHTML,10,10,{
		   "elementHandlers":specialElementHandlers
		   });
		   doc.save("output.pdf");
		   
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
		result = stmt.executeQuery("select * from preference");
} catch (Exception e) {
out.println(e);
}
   %>
   <h2>Student Subject Choice</h2>
   <div id="table" align="center">
   <table border="1" style ="width:100%">
   <tr>
   <th> Roll</th>
   <th> Elective Type</th>
   <th> Num</th>
   <th> Preference 1</th>
   <th> Preference 2</th>
   <th> Preference 3</th>
   <th> Semester </th>
   <% while(result.next()){ %>
   
    <tr><td> <%= result.getString(1) %></td> 
        <td> <%= result.getString(2) %> </td>
        <td> <%= result.getString(3) %> </td>
     <td> <%= result.getString(4) %> </td>
     <td> <%= result.getString(5) %> </td>
     <td> <%= result.getString(6) %> </td>
     <td> <%= result.getString(7) %> </td>
    </tr>
   <%}%>
   </table>
   </div>
   <br>
   <button onclick="generatePDF()">Generate PDF</button>
</body>
</html>

