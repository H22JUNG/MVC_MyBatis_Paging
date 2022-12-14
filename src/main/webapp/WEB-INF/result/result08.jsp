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

		<% if(nowpage < 5) {%>
			<a><<</a>
		<% } else {
			if(nowpage-7 >= 0) {%>
		<a href="${pageContext.request.contextPath}/Controller8?page=${page-7}"><<</a>
		<%} else { %>
		<a href="${pageContext.request.contextPath}/Controller8?page=1"><<</a>
		<%} } %>
	
		
		<% if(nowpage==1) {%>
			<a>◀</a>
		<% } else { %>
		<a href="${pageContext.request.contextPath}/Controller8?page=<%=nowpage-1%>">◀</a>
		<%} %>
		
		<c:choose>
			<c:when test="${page<4 }">
				<c:forEach var="i" begin="1" end="${page-1}">
					<a href="${pageContext.request.contextPath}/Controller8?page=${i}">${i}</a>
				</c:forEach>
				<a>${page}</a>
				<c:forEach var="i" begin="${page+1}" end="${vo.endPage}">
					<a href="${pageContext.request.contextPath}/Controller8?page=${i}">${i}</a>
				</c:forEach>
			</c:when>
			
			<c:when test="${page+3 >= vo.totalPage}">
				<c:forEach var="i" begin="${vo.totalPage-6}" end="${vo.totalPage}">
					<c:choose>
						<c:when test="${i==page}"><span>${i}</span></c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/Controller8?page=${i}">${i}</a>	
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach var="i" begin="${page-3}" end="${page-1}">
					<a href="${pageContext.request.contextPath}/Controller8?page=${i}">${i}</a>
				</c:forEach>
				<a>${page}</a>
				<c:forEach var="i" begin="${page+1}" end="${page+3}">
					<a href="${pageContext.request.contextPath}/Controller8?page=${i}">${i}</a>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		

		<c:choose>
			<c:when test="${page>=vo.totalPage}"><a>▶</a></c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/Controller8?page=${page+1}">▶</a>
			</c:otherwise>
		</c:choose>

		<!-- 27부터 >> 비활성화 -->
		<% if(nowpage+3>=vo.getTotalPage()) {%>
			<a>>></a>
		<% } else { %>
		<!-- 26부터는 활성화, 단 nowpage+7가 totalPage보다 넘어가면 마지막으로 이동  -->
			<%if(nowpage+7>= vo.getTotalPage()) {%>
				<a href="${pageContext.request.contextPath}/Controller8?page=<%=vo.getTotalPage()%>">>></a>
			<%} else {%>
				<a href="${pageContext.request.contextPath}/Controller8?page=<%=nowpage+7%>">>></a>
			<%} %>
		<%} %>

	</fieldset>
</body>
</html>