<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>

<%
	GuestDao guestDao = new GuestDao();

	int count = Integer.parseInt(request.getParameter("no"));
	
	String password = request.getParameter("pass.w");
	
	guestDao.guestDelete(count, password);
	
	
	response.sendRedirect("./addList.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>