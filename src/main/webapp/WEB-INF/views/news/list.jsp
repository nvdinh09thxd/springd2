<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News - List</title>
</head>
<body>
	<div>
		<h3 style="color: red; background-color: yellow; text-align: center">${msg}</h3>
	</div>
	<h1>List</h1>
	<%-- <c:if test="${datas ne null}">
		<ul>
			<c:forEach items="${datas}" var="news">
				<li><a href="${pageContext.request.contextPath}/news/detail?id=${news.id}"> ${news.title}- ${news.author}</a></li>
			</c:forEach>
		</ul>
	</c:if> --%>
	<c:choose>
		<c:when test="${datas ne null}">
			<ul>
				<c:forEach items="${datas}" var="news">
					<li><a
						<%-- href="${pageContext.request.contextPath}/news/detail?id=${news.id}" --%>
						href="${pageContext.request.contextPath}/news/detail/${news.id}/${news.author}">
							${news.title}- ${news.author}</a></li>
				</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<div>
				<p>Data empty</p>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>