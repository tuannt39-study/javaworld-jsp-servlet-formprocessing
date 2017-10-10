<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*"%>
<%!ResourceBundle bundle = null;

	public void jspInit() {
		bundle = ResourceBundle.getBundle("forms");
	}%>
<jsp:useBean id="formHandler" class="foo.beans.FormBean" scope="request">
	<jsp:setProperty name="formHandler" property="*" />
</jsp:useBean>
<%
	if (formHandler.validate()) {
%>
<jsp:forward page="<%=bundle.getString(\"process.success\")%>" />
<%
	} else {
%>
<jsp:forward page="<%=bundle.getString(\"process.retry\")%>" />
<%
	}
%>