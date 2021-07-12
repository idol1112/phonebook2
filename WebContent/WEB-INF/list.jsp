<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.javaex.vo.PersonVo" %>

<%
   //rquest 안에 있는 데이터를 사용할려고 한다. --> pList
   List<PersonVo> personList = (List<PersonVo>)request.getAttribute("pList");
   System.out.println(personList);
   
   
   String name = (String)request.getAttribute("name");
   System.out.println(name);
%>
   
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>전화번호 리스트</h1>
   <p>입력한 정보 내역입니다.</p>
	
	<% for(int i=0; i<personList.size(); i++) { %>
   <table border="1">
      <tr>
         <td>이름</td>
         <td><%=personList.get(i).getName() %></td>
      </tr>

      <tr>
         <td>핸드폰</td>
         <td><%=personList.get(i).getHp() %></td>
      </tr>

      <tr>
         <td>회사</td>
         <td><%=personList.get(i).getCompany() %></td>
      </tr>
      <tr>
            <td><a href ="/phonebook2/pbc?action=uform&id=<%= personList.get(i).getPersonId() %>">[수정]</a></td>
            <td><a href ="/phonebook2/pbc?action=delete&id=<%= personList.get(i).getPersonId() %>">[삭제]</a></td>
      </tr>
   </table>
   <br>
   
   <%} %>
   
   <a href="/phonebook2/pbc?action=wform">추가번호 등록</a>

</body>
</html>