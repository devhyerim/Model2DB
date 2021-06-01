<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
</head>
<body>
<div>
	<h1>목록 페이지</h1>
	<hr>
</div>
<br><br><br>
<div>
	전체 인원 : ${count } 명
	<table class="table">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		
		<c:forEach var="dto" items="${lists }">
		<tr>
			<td style="text-align: center;">${dto.id}</td>
			<td style="text-align: center;">${dto.pw}</td>
			<td style="text-align: center;">${dto.name}</td>
			<td style="text-align: center;">${dto.tel}</td>
			<td style="text-align: center;">${dto.email}</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<input type="button" value="입력란으로" onclick="javascript:location.href='<%=cp %>/memberlist'">
</div>


</body>
</html>