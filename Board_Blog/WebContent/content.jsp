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
			<caption>�Խñ� ��ȸ</caption>
			<tbody>
				<tr>
					<th>��ȣ</th>                    
		            <td>${article.idx}</td>
		            <th>�ۼ���</th>
		            <td>${article.writer}</td>
		            <th>�����</th>
		          	<td>${article.regdate}</td>
				</tr>
				<tr>
					<th>����</th>
					<td colspan="3">${article.title}</td>
					<th>��ȸ��</th>
		            <td>${article.count}</td>
				</tr>
		        <tr>
		            <th height="300px;">����</th>                    
		            <td colspan="5"><pre>${article.content}</pre></td>
		        </tr>
	        </tbody>
		</table>
		<a href="delete.do?idx=${article.idx}">�Խñۻ���</a>
		<a href="#" onclick="closeContent()">�������</a>
	</body>
</html>