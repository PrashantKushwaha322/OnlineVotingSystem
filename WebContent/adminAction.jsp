<%--
	file name : adminAction.jsp
	@description : this jsp page is to show success page of admin.
--%>
<html>
<style>
body{
background-image:url(abg.jpg);
background-size:cover;
color:white;
font-family:Lucida Console;
font-size:40px;
}
table{
 border-bottom: 6px solid red;
    background-color: lightgrey;
     
border-radius: 5px;
font-size:30px;
font-family: Helvetica;
}
font{
font-family:Lucida Console;
font-size:20px;
}
a{
 background-color: #f44336;
    color: white;
    font-size:25px;
font-family: Helvetica;
    color:black;
    }
    a:hover {
     background-color: red;
    color: white;
}
</style>


	<head>
		<title>Management Application</title>
	</head>
	<body>
		<div align='center'>
			<table border="1" style="width:800">
			<tr>
				<td><div align='right'>
						<font color='blue'>
							<b>
								<%="Welcome, "+(String)session.getAttribute("name")%>
							</b>
						</font><br>
						<a href='logoutSrv'><font size='2pxl'>logout</font></a>
					</div>
					<div align="center">
						<font size='2pxl'>
							<br>
								<a href="register.jsp">Register New Employee</a>
								<br>
								<a href="view.jsp">View All Employee Information</a>
								<br>
								<a href="update_ref.jsp">Update Employee Information</a>
						</font>
					</div>
				</td>
					
			</tr>
		</table>
		</div>
		
	</body>
</html>