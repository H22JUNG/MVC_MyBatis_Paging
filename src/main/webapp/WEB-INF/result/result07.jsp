<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: grid;
	grid-template-columns: 200px 1fr 200px;
	grid-template-rows: 50px 1fr 50px 100px;
	gap: 0px 0px;
	grid-auto-flow: row;
	grid-template-areas: ". . ." ". main ." ". . ." ". pannel .";
}

main {
	grid-area: main;
}

table {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

table td, table th {
	border: 1px solid #ddd;
	padding: 8px;
}

table tr:nth-child(even) {
	background-color: #f2f2f2;
}

table tr:hover {
	background-color: #ddd;
}

table th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #0335fc;
	color: white;
}

#pannel {
	grid-area: pannel;
	border : 1px solid black;
	display: grid;
	grid-template-columns: 30px 1fr 30px;
	grid-template-rows: 20px 1fr 20px;
	grid-auto-flow: row;
	grid-template-areas: ". . ." ". paging ." ". . .";
}

#paging {
	display : flex;
	grid-area : paging;
	justify-content : center;
	align-items : center;
}

#paging a{
	display : inline-block;
	padding : 5px;
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
		<div id="pannel">
			<div id="paging">
				<c:choose>
					<c:when test="${1 == page.startPage}">
						<span>◀◀</span>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/Controller7?page=${page.startPage - 1}">◀◀</a>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${1 == page.nowPage}">
						<span>◀</span>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/Controller7?page=${page.nowPage - 1}">◀</a>
					</c:otherwise>
				</c:choose>
				
				
				
				<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
					<c:choose>
						<c:when test="${page.nowPage eq i}">
							<span>${i}</span>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/Controller7?page=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				
				
				<c:choose>
					<c:when test="${page.totalPage == page.nowPage}">
						<span>▶</span>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/Controller7?page=${page.nowPage + 1}">▶</a>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page.totalPage < page.endPage+page.cntPerBlock}">
						<span>▶▶</span>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/Controller7?page=${page.endPage + 1}">▶▶</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>