<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
    
<%
	GuestDao guestDao = new GuestDao();

	int count = Integer.parseInt(request.getParameter("no"));

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
	비밀번호 : <input type="text" name="pass.w" value="">
	<input type="hidden" name="no" value="<%=count%>">
	<button type="submit">확인</button>
	<br>
	<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
	
</body>
</html>