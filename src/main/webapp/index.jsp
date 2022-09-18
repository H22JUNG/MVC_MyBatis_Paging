<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시작페이지</h1>
<hr />
<h2>첫번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller1">이동</a>
<hr />
<h2>두번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller2">이동</a>
<hr />
<h2>세번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller3">이동</a>
<hr />
<h2>네번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller4">이동</a>
<hr />
<h2>다섯번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller5?page=1">이동</a>
<hr />
<h2>여섯번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller6?page=1">이동</a>
<hr />
<h2>일곱번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller7">이동</a>
<hr />
<h2>여덟번째 bbs</h2>
<a href="${pageContext.request.contextPath}/Controller8">이동</a>

<!-- push가 왜 안돼 -->
</body>
</html>