<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% int id = Integer.parseInt(request.getParameter("id")); %>
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
		<label>이름(name): </label><input type="text" name="name" value=""> <br>
		<label>핸드폰(hp): </label><input type="text" name="hp" value=""> <br>
		<label>회사(company): </label><input type="text" name="company" value=""> <br>
		<input type="text" name="action" value="update"><br>
		<input type="hidden" name="id" value="<%= id %>">
		<button type="submit">수정</button>
	</form>
	
	<a href="./list.jsp">리스트 바로가기</a>

</body>
</html>