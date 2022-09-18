<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.goodee.conf.SqlSessionManager"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="com.goodee.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	padding: 50px;
}

table {
	padding: 0;
	border-collapse: collapse;
}

thead {
	background-color: royalblue;
	color: white;
}

tbody tr:nth-child(even) {
	background-color: #eee;
}

th {
	text-align: left;
	padding: 10px 5px 10px 5px;
	border: 1px solid #ddd;
}

td {
	text-align: left;
	padding: 8px 5px 8px 5px;
	border: 1px solid #ddd;
}

tbody>tr:hover {
	background-color: #aaa;
}
p {
	display : inline;
	font-size : 15px;
}
</style>
</head>
<body>

	<table>
		<thead>
			<th>id</th>
			<th>카테고리</th>
			<th>제목</th>
			<th>내용</th>			
			<th>글쓴이</th>
			<th>작성일/작성시간</th>
		</thead>
		<tbody>
			<c:forEach var="item" items="${list}">
				<tr>
					<td>${item.id}</td>
					<td>${item.category}</td>
					<td>${item.title}</td>
					<td>${item.content}</td>
					<td>${item.owner}</td>
					<td>${item.createDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<fieldset>
		<!-- 첫페이지 일때는 prev 비활성화 -->
		<c:choose>
			<c:when test="${1==page.nowPage}"><span>◀</span></c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/Controller6?page=${page.nowPage-1}">◀</a>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
			<c:choose>
				<c:when test="${page.nowPage eq i}">
					<span>${i}</span>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/Controller6?page=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${page.totalPage == page.nowPage}"><span>▶</span></c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/Controller6?page=${page.nowPage+1}">▶</a>
			</c:otherwise>
		</c:choose>
	</fieldset>
	
</body>
</html>