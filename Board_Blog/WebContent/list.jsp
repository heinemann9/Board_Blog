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
		<style type="text/css">
		    html, body{height:100%;margin:0 auto;}
		    div#content{margin:0 auto; width:800px;}
		    .mw_layer{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%}
			.mw_layer.open{display:block}
			.mw_layer .bg{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}
			#layer{position:absolute;top:25%;left:40%;width:600px;height:500px;margin:-150px 0 0 -194px;padding:28px 28px 0 28px;border:2px solid #555;background:#fff;font-size:12px;font-family:Tahoma, Geneva, sans-serif;color:#767676;line-height:normal;white-space:normal}
			@media screen and (max-width:500px){
				table .no,table .day,table .count{
					display:none;
				}
				
				section #tb_lst{
					width:280 px;
				}
				
				.table_bottom{
					width:280 px;
				}
			}
		</style>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/layout.css"/>"/>
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/table.css"/>"/>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		function openContent(idx){
			$('.mw_layer').addClass('open');
			$.ajax({
				type:'post',
				url:'count.do',
				data:({idx:idx}),
				success:function(data){
					$('#layer').html(data);
				}
			});
		}
		
		function closeContent(){
			$('.mw_layer').removeClass('open');
		}
		
		jQuery(function($){
			var layerWindow = $('.mw_layer');
			
			$(document).keydown(function(event){
				if(event.keyCode !=27) return true;
				if(layerWindow.hasClass('open')){
					layerWindow.removeClass('open');
				}
				return false;
			});
			
			layerWindow.find('>.bg').mousedown(function(event){
				layerWindow.removeClass('open');
				return false;
			});
		});
		
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
		<section id="table">
			<table id="tb_lst" style="margin:0 auto;">
				<caption style="cursor:pointer">자유 게시판</caption>
				<thead>
					<tr>
						<th width="7%" class="no">번호</th>
						<th width="50%" class="title">제목</th>
						<th width="16%" class="writer">작성자</th>
						<th width="14%" class="day">날짜</th>
						<th width="7%" class="count">조회수</th>
					</tr>
				</thead> 
				<c:forEach items="${articleList}" var="article">
				<tbody>
					<tr>
						<td class="no">${article.idx}</td>
						<td class="title"><a href="#layer" onclick="openContent('${article.idx}')">${article.title}</a></td>
						<td class="writer">${article.writer}</td>
						<td class="day">${article.regdate}</td>
						<td class="count">${article.count}</td>
					</tr>
				</tbody>
				</c:forEach>
			</table>
			<c:if test="${fn:length(articleList) == 10 }">
				<input type="hidden" name="page" id="page" value="${page}">
				
			</c:if>
			<div class="table_bottom">
				<a href="#" style="cursor:pointer;text-decoration:none;" onclick="loadNextPage()">더보기</a>
				<a style="text-decoration:none;float:right;" href="write.jsp">글쓰기</a>
			</div>
				
			<script>
			function loadNextPage(){
				var page = $('#page').val();
				page = parseInt(page);
				page += 10;
				$.ajax({
					type:'post',
					url:'ajaxList.do',
					data:({page:page}),
					success:function(data){
						if(data.trim()=="")
							alert("더 이상 게시글이 없습니다.");
						else{
							$('table').append(data);
							$('#page').val(page);
						}
					}
				});
			}
			</script>
			
			<!-- light box -->
			<div class="mw_layer">
				<div class="bg"></div>
				<div id="layer"></div>
			</div>
			
		</section>
		<footer class="footer">
			<p>Made by Kang Sin-An</p>
		</footer>
	</body>
</html>