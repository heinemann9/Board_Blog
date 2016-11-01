<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${articleList}" var="article">
	<tr>
		<td class="no">${article.idx}</td>
		<td class="title"><a href="#layer" onclick="openContent('${article.idx}')">${article.title}</a></td>
		<td class="writer">${article.writer}</td>
		<td class="day">${article.regdate}</td>
		<td class="count">${article.count}</td>
	</tr>
</c:forEach>
