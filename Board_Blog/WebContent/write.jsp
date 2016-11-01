<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/style/table.css"/>"/>
		<title>Write</title>
		<script>
		function formCheck(){
			var title = document.forms[0].title;        // 사용하기 쉽도록 변수를 선언하여 담아주고,
		    var writer = document.forms[0].writer;
		    var regdate = document.forms[0].regdate;
		    var content = document.forms[0].content;  // 추가됨 - 쓰레파스님 감사합니다. :)
		 
		    if (title.value == null || title.value == ""){                                    // null인지 비교한 뒤
		        alert('제목을 입력하세요');                                   // 경고창을 띄우고
		        document.forms[0].title.focus();                           // 해당태그에 포커스를 준뒤
		        return false;                                                     // false를 리턴합니다.
		    }
		 
		    if (writer.value == null ||  writer.value  == ""){          
		        alert('작성자를 입력하세요'); 
		        document.forms[0].writer.focus();                      
		        return false;               
		    }else if(writer.value.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null){
		        alert('이메일 형식으로 입력하세요'); 
		        document.forms[0].writer.focus();                      
		        return false; 
		    }
		    if (content.value == null || content.value == ""){                                   
				alert('insert content.');                                  
				document.forms[0].content.focus();                          
				return false;                                                     
			}
		    /*
		    if (regdate == null || regdate == "" ){                            
		 
		        alert('날짜를 입력하세요');   
		        document.forms[0].regdate.focus();                      
		        return false;            
		 
		    }else if(regdate.match(/^\d\d\d\d\d\d+$/ig)   == null){
		        alert('숫자 형식(6자리)으로 입력하세요'); 
		        document.forms[0].regdate.focus();                      
		        return false; 
		    }
		    */
		}
		</script>
	</head>
	<body>
		
		<form action="insert.do" method="post" onsubmit="return formCheck();">
			<table style="width:400px;margin:0 auto;">
				<caption>게시글 쓰기</caption>
				<tbody>
					<tr>
						<td>제목:</td>
						<td><input type="text" name="title"/></td>
					</tr>
					<tr>
						<td>작성자:</td>
						<td><input type="text" name="writer"/></td>
					</tr>
					<tr>
						<td>Content:</td> 
						<td><textarea rows="10" cols="30" name="content"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" style="float:right" value="등록"/></td>
					</tr>
				</tbody>				
			</table>
		</form>
		
	</body>
</html>