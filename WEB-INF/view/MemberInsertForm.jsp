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
<title>MemberInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
</head>
<body>

<div>
	<h1>입력 페이지</h1>
	<hr>
</div>

<div>
	<form action ="memberinsert" method="post">
	<table class="table">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<tr>
			<td>아이디 <input type="text" name="id"></td>
			<td>비밀번호 <input type="text" name="password"></td>
			<td>이름 <input type="text" name="name"></td>
			<td>전화번호 <input type="text" name="tel"></td>
			<td>이메일 <input type="text" name="email"></td>
		</tr>
	</table>
	<button type="submit">submit</button>
	<input type="button" value="목록으로" onclick="javascript:location.href='<%=cp %>/memberlists'">
	</form>
</div>

</body>
</html>