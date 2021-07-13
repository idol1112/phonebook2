<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	PersonVo personVo = (PersonVo)request.getAttribute("pVo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정</h1>
	<p>
		전화번호 수정 화면입니다. <br>
		아래 항목을 기입하고 "수정" 버튼을 클릭하세요.
	</p>
	
	<form action="/phonebook2/pbc" method="get">
		이름: <input type="text" name="name" value="<%=personVo.getName()%>"> <br>
		핸드폰: <input type="text" name="hp" value="<%=personVo.getHp()%>"> <br>
		회사: <input type="text" name="company" value="<%=personVo.getCompany()%>"> <br>
		<input type="text" name="id" value="<%=personVo.getPersonId() %>"> <br>
		<input type="hidden" name="action" value="update"> <br>
		<button type="submit">수정</button>
	</form>
	
	<a href="./list.jsp">리스트 바로가기</a>

</body>
</html>