<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>list</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/table.css"/>"/>
	</head>
	<body>
		<table style="width:580px;">
			<caption>게시글 조회</caption>
			<tbody>
				<tr>
					<th>번호</th>                    
		            <td>${article.idx}</td>
		            <th>작성자</th>
		            <td>${article.writer}</td>
		            <th>등록일</th>
		          	<td>${article.regdate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3">${article.title}</td>
					<th>조회수</th>
		            <td>${article.count}</td>
				</tr>
		        <tr>
		            <th height="300px;">내용</th>                    
		            <td colspan="5"><pre>${article.content}</pre></td>
		        </tr>
	        </tbody>
		</table>
		<a href="delete.do?idx=${article.idx}">게시글삭제</a>
		<a href="#" onclick="closeContent()">목록으로</a>
	</body>
</html>