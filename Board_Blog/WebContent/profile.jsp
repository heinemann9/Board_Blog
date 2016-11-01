<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/layout.css"/>"/>
	<title>Kang's Blog</title>
	<script>
		$(document).ready(function(){
			$('.outer-menu-item').hover(function(){
				$(this).find('.inner-menu').show();
			}, function(){
				$(this).find('.inner-menu').hide();
			});
			
			$('profile_link').click(function(){
				$('.profile').css('display','block');
				$('.profile').fadeIn(slow);
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
		<br><br><br>
		<div class="img_profile">
			<img width="430" src="/Board_Blog/resources/style/profile.gif"/>
		</div>
		<article id="profile">
			
			<table class="profile_info">
				
				<theader>
					<tr>
						<td colspan="4"><h1>Profile</h1></td>
					</tr>
				</theader>
				<tbody>
					<tr>
						<th><span>이름</span></th>
						<td><span>강신안</span></td>
						<th><span>성별</span></th>
						<td><span>남자</span></td>
					</tr>
					<tr>
						<th><span>별명</span></th>
						<td><span>신한카드(?)</span></td>
						<th><span>지역</span></th>
						<td><span>전북</span></td>
					</tr>
					<tr>
						<th><span>취미</span></th>
						<td><span>롤</span></td>
						<th><span>특기</span></th>
						<td><span>컴퓨터프로그래밍</span></td>
					</tr>
				</tbody>
			</table>
		</article>
	</section>
	<br><br><br><br><br><br>
	<footer class="footer">
		<p>Made by Kang Sin-An</p>
	</footer>
	
</body>
</html>