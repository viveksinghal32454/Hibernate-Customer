<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Data</title>
<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">

</head>
<body style="background-color: #FAEBD7;">
	<h1 style="font-weight: bold;font-size:50px;border:5px solid aqua; border-radius:25px;text-align:center;margin:0 250px;padding:20px;">
		All Customer Data
	</h1>
	<div style="text-align:center;margin-left:250px;margin-right:250px;margin-top:30px;">
		<table class="table">
  <thead class="table-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">User Name</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  <% 
  	Connection conn=null;
  	Statement stmt=null;
  	ResultSet rs=null;
  	try
  	{
  		Class.forName("com.mysql.jdbc.Driver");
  		conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/customers","root","Vivek@6464");
  		stmt=conn.createStatement();
  		
  		String qry="select * from users";
  		rs=stmt.executeQuery(qry);
  		while(rs.next())
  		{
  			%>
  			<tr>
  				<td><%= rs.getString(1) %></td>
  				<td><%= rs.getString(2) %></td>
  				<td><%= rs.getString(3) %></td>
  				<td><%= rs.getString(5) %></td>
  				<td><%= rs.getString(4) %></td>
  			</tr>
  			<%
  		}
  	}catch(Exception ex){}
  %>
    
  </tbody>
</table>
	</div>
</body>
</html>