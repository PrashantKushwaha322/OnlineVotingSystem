<%@page import="java.sql.*" %>
<%@page import="com.util.ConnectionDb" %>

<%
  Connection con=ConnectionDb.getConn();
  String command="select * from registration_details";
  PreparedStatement stmt=con.prepareStatement(command);
  ResultSet rs=stmt.executeQuery();
 %><html>
 <style>
body{
background-image:url(mbg.jpg);
background-size:cover;
color:white;
font-family:Lucida Console;
    font-color:black;

}
a{
 background-color: #f44336;
    color: white;
    font-size:15px;
font-family: Helvetica;
    color:black;
    }
  a:hover {
     background-color: red;
    color: white;
    }
.form-submit-button {

background: #0066A2;

color: white;
}
input[type=submit] {
background-color: white; 
    color: black; 
    border: 2px solid #f44336;
    font-size: 15px;}
    input[type=submit]:hover {
        background-color: #f44336;
    color: white;}
        table{
 border-bottom: 4px solid red;
    background-color: black;
     font-color:black;
border-radius: 5px;
font-size:25px;
font-family: Helvetica;
}
</style><body>
 <a href="adminAction.jsp">click for home</a>
 	<div align='right'>
 		<font color='white'>
			<b>
			<%="Welcome, "+(String)session.getAttribute("name")%>
			</b>
		</font><br>
		<a href='logoutSrv'><font size='2pxl'>logout</font></a>
	</div>
 	<div align='center'><table>
 		<tr><th bgcolor='megenta'>First Name </th><th bgcolor='megenta'>Last Name</th><th bgcolor='megenta'>Gender</th><th bgcolor='megenta'>Country</th><th bgcolor='megenta'>Interest</th><th bgcolor='megenta'>Delete</th></tr>

 <%
  while(rs.next()){
	out.println("<tr bgcolor='fff##'>");
	out.println("<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getString(6)+"</td>");
	out.println("<td><a href='deleteSrv?id="+rs.getString(1)+"'>delete"+"</a></td>");
	out.println("</tr>");
  }
%>
</table></div></body>
</html>