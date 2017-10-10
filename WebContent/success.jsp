<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="formHandler" class="foo.beans.FormBean" scope="request" />
<html>
<body>
	<center>
		<table cellpadding=4 cellspacing=2 border=0>
			<th bgcolor="#CCCCFF" colspan=2><font size=5>USER
					REGISTRATION SUCCESSFUL!</font></th>
			<font size=4>
				<tr bgcolor="#c8d8f8">
					<td valign=top><b>First Name</b> <br> <jsp:getProperty
							name="formHandler" property="firstName" /></td>
					<td valign=top><b>Last Name</b> <br> <jsp:getProperty
							name="formHandler" property="lastName" /></td>
				</tr>
				<tr bgcolor="#c8d8f8">
					<td valign=top><b>E-Mail</b> <br> <jsp:getProperty
							name="formHandler" property="email" /> <br></td>
					<td valign=top><b>Zip Code</b> <br> <jsp:getProperty
							name="formHandler" property="zip" /></td>
				</tr>
				<tr bgcolor="#c8d8f8">
					<td valign=top colspan=2><b>User Name</b> <br> <jsp:getProperty
							name="formHandler" property="userName" /></td>
				</tr>
				<tr bgcolor="#c8d8f8">
					<td colspan=2 valign=top><b>What music are you interested
							in?</b> <br> <%
 	String[] faveMusic = formHandler.getFaveMusic();
 	if (!faveMusic[0].equals("1")) {
 		out.println("<ul>");
 		for (int i = 0; i < faveMusic.length; i++)
 			out.println("<li>" + faveMusic[i]);
 		out.println("</ul>");
 	} else
 		out.println("Nothing was selected");
 %></td>
				</tr>
				<tr bgcolor="#c8d8f8">
					<td colspan=2 valign=top><b>Would you like to receive
							e-mail notifications on our special sales?</b> <br> <jsp:getProperty
							name="formHandler" property="notify" /></td>
				</tr>
			</font>
		</table>
	</center>
</body>
</html>