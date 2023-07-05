<%--	file name : index.jsp
		used for providing login option to user as well as
		an administrator.!
 --%>
<html>
<style>
body{
background-image:url(bg.jpg);
background-size:cover;
color:white;
font-family:Lucida Console;
font-size:40px;
}
font{
font-family:Lucida Console;
font-size:40px;
}
input[type=submit] {
background-color: white; 
    color: black; 
    border: 2px solid #f44336;
    font-size: 15px;}
    input[type=submit]:hover {
        background-color: #f44336;
    color: white;}
    </style>
	<head>
		<title>Management Application</title>
	</head>
	
		<div align="center">
			<font color='cyan' size='5pxl'>Employee Management</font><br>
			<hr><br>
			<form action="loginAction" method="post">
				<table>
					<tr>
						<td>Enter User name :</td>
						<td><input type="text" name='uname'></td>
					</tr>
					<tr>
						<td>Enter Password :</td>
						<td><input type="password" name='pwd'></td>
					</tr>
					<tr>
						<td>Select role :</td>
						<td><select name='role'>
							<option value='-1'>-select role-</option>
							<option value='admin'>HR</option>
							<option value='user'>Employee</option>
							</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Login"></td>
					</tr>
				</table>
			</form>
		</div>
		<%--code to display error message --%>
		<div align="center">
			<font color='red' size='1pxl'>
			<%
				String msg=request.getParameter("errMessage");
				if(msg!=null){
					//login credentials validation
					if(msg.equals("adminError"))
						out.println("Invalid Admin login credentials.!");
					if(msg.equals("userError"))
						out.println("Seems Your are new here,<br> please contact admin for login credentials.!");
					//input validation
					if(msg.equals("emptyR"))
						out.println("please provide details to proceed login..!");
					if(msg.equals("emptyU"))
						out.println("please provide user name");
					if(msg.equals("emptyP"))
						out.println("please provide password");
					if(msg.equals("emptyT"))
						out.println("please select authentication role.!");
				}
			%>
			</font>
		</div>
	</body>
</html>

