<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.board2.beans.Board" %> 
<%@ page import="java.util.ArrayList" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>list</title>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/layout.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/table.css"/>"/>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('.outer-menu-item').hover(function(){
				$(this).find('.inner-menu').show();
			}, function(){
				$(this).find('.inner-menu').hide();
			});
		});
		</script>
	</head>
	<body>
		<header id="hd">
			<div>
				<h1><a href="/Board_Blog/index.jsp" class="home">Kang's Blog</a></h1>
			</div>
			<nav id="main-navigation" style="position:static; width: auto; top: 0px;">
				<ul class="outer-menu">
					<li class="outer-menu-item">
						<a href="#" class="menu-title">Blog</a>
						<ul class="inner-menu">
							<li class="inner-menu-item"><a class = "profile_link" href="profile.jsp">Profile</a></li>
						</ul>
					</li>
					<li class="outer-menu-item">
						<a href="/Board_Blog/board.jsp" class="menu-title">자유게시판</a>
					</li>
					<li class="outer-menu-item">
						<a href="/Board_Blog/link.jsp" class="menu-title">링크</a>
					</li>
				</ul>
			</nav>
		</header>
		<section>
			<canvas id="myCanvas" width="500px" height="500px">				
			</canvas>
			<script>
			var c=document.getElementById("myCanvas");
			var ctx=c.getContext("2d");
			
			ctx.rect(150,150,200,200);
			ctx.strokeStyle="#cb60b3";
			ctx.stroke();
			
			ctx.beginPath();
			ctx.lineWidth = "10";
			ctx.moveTo(0,300);
			ctx.lineTo(300,500);
			ctx.strokeStyle="rgb(197,222,234)";
			ctx.stroke();
			
			ctx.beginPath();
			ctx.lineWidth = "10";
			ctx.moveTo(250,500);
			ctx.lineTo(500,200);
			ctx.strokeStyle="rgb(241,231,103)";
			ctx.stroke();
			
			ctx.beginPath();
			ctx.lineWidth="2";
			ctx.arc(250,250,100,0,2*Math.PI);
			ctx.strokeStyle="#cb60b3"; 
			ctx.stroke();
			
			ctx.beginPath();
			ctx.arc(180,180,9,0,2*Math.PI);
			ctx.strokeStyle="rgb(125,126,125)";
			ctx.lineWidth="2";
			ctx.stroke();
			ctx.fillStyle = "rgb(125,126,125)";
			ctx.fill();
			
			ctx.beginPath();
			ctx.arc(320,180,9,0,2*Math.PI);
			ctx.strokeStyle="rgb(125,126,125)";
			ctx.lineWidth="2";
			ctx.stroke();
			ctx.fillStyle = "rgb(125,126,125)"; 
			ctx.fill();
			
			ctx.beginPath();
			ctx.arc(180,320,9,0,2*Math.PI);
			ctx.strokeStyle="rgb(125,126,125)";
			ctx.lineWidth="2";
			ctx.stroke();
			ctx.fillStyle="rgb(125,126,125)";
			ctx.fill();
			
			ctx.beginPath();
			ctx.arc(320,320,9,0,2*Math.PI);
			ctx.strokeStyle="rgb(125,126,125)";
			ctx.lineWidth="2";
			ctx.stroke();
			ctx.fillStyle="rgb(125,126,125)";
			ctx.fill();
			
			ctx.beginPath();
			ctx.font = "30px Arial";
			ctx.strokeStyle="rgb(249,198,103)";
			ctx.strokeText("Welcome!",185,260);
			
			ctx.beginPath();
			ctx.font = "30px Arial";
			ctx.fillStyle="#000000";
			ctx.fillText("Kang's Blog",175,400);
			
			ctx.beginPath();
			ctx.font = "30px Arial";
			ctx.fillText("using MVC pattern & ibatis !",75,450);
			</script>
		</section>
		<footer class="footer">
			<p>Made by Kang Sin-An</p>
		</footer>
	</body>
</html>