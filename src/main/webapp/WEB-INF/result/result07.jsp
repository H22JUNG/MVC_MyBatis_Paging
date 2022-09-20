<%@page import="com.goodee.vo.BBSInputPageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div class="container">
		<main>
			<table>
				<thead>
					<tr>
						<th>id</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>내용</th>
						<th>글쓴이</th>
						<th>작성일/작성시간</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vo" items="${list}">
					<tr>
						<td>${vo.id}</td>
						<td>${vo.category}</td>
						<td>${vo.title}</td>
						<td>${vo.content}</td>
						<td>${vo.owner}</td>
						<td>${vo.createDate}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</main>
	</div>
	<fieldset>
		<% int nowpage = (Integer)request.getAttribute("page"); 
		BBSInputPageVO vo = (BBSInputPageVO)request.getAttribute("vo"); %>
		
		<% if(vo.getStartPage()==1) {%>
			<a><<</a>
		<% } else { %>
		<a href="${pageContext.request.contextPath}/Controller7?page=<%=vo.getStartPage()-10%>"><<</a>
		<%} %>
		
		<% if(nowpage==1) {%>
			<a>◀</a>
		<% } else { %>
		<a href="${pageContext.request.contextPath}/Controller7?page=<%=nowpage-1%>">◀</a>
		<%} %>
		
		<c:forEach var="i" begin="${vo.startPage}" end="${vo.endPage}">
			<c:choose>
				<c:when test="${i==page}"><span>${i}</span></c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath}/Controller7?page=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		
		<c:choose>
			<c:when test="${page>=vo.totalPage}"><a>▶</a></c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/Controller7?page=${page+1}">▶</a>
			</c:otherwise>
		</c:choose>
		<%-- <% if(nowpage>=vo.getTotalPage()) {%>
			<a>▶</a> 
		<% } else { %>
			<a href="${pageContext.request.contextPath}/Controller7?page=<%=nowpage+1%>">▶</a>
		<%} %>
		 --%>
		<% if(vo.getStartPage()+9>=vo.getTotalPage()) {%>
			<a>>></a>
		<% } else { %>
		<a href="${pageContext.request.contextPath}/Controller7?page=<%=vo.getStartPage()+10%>">>></a>
		<%} %>
		

		
		
	</fieldset>
</body>
</html>