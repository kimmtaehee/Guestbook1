<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestDao" %>   
<%@ page import="com.javaex.vo.GuestVo" %>    
    
<%
	request.setCharacterEncoding("UTF-8");
	
	GuestDao guestDao = new GuestDao();
	
	String name = request.getParameter("name");
	String password = request.getParameter("pass.w");
	String content = request.getParameter("content");
	System.out.println(name + "," + password + "," + content);
	
	GuestVo guestVo = new GuestVo(name, password, content);
	
	guestDao.guestbookInsert(guestVo);
	
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