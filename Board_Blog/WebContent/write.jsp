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
			var title = document.forms[0].title;        // ����ϱ� ������ ������ �����Ͽ� ����ְ�,
		    var writer = document.forms[0].writer;
		    var regdate = document.forms[0].regdate;
		    var content = document.forms[0].content;  // �߰��� - �����Ľ��� �����մϴ�. :)
		 
		    if (title.value == null || title.value == ""){                                    // null���� ���� ��
		        alert('������ �Է��ϼ���');                                   // ���â�� ����
		        document.forms[0].title.focus();                           // �ش��±׿� ��Ŀ���� �ص�
		        return false;                                                     // false�� �����մϴ�.
		    }
		 
		    if (writer.value == null ||  writer.value  == ""){          
		        alert('�ۼ��ڸ� �Է��ϼ���'); 
		        document.forms[0].writer.focus();                      
		        return false;               
		    }else if(writer.value.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null){
		        alert('�̸��� �������� �Է��ϼ���'); 
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
		 
		        alert('��¥�� �Է��ϼ���');   
		        document.forms[0].regdate.focus();                      
		        return false;            
		 
		    }else if(regdate.match(/^\d\d\d\d\d\d+$/ig)   == null){
		        alert('���� ����(6�ڸ�)���� �Է��ϼ���'); 
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
				<caption>�Խñ� ����</caption>
				<tbody>
					<tr>
						<td>����:</td>
						<td><input type="text" name="title"/></td>
					</tr>
					<tr>
						<td>�ۼ���:</td>
						<td><input type="text" name="writer"/></td>
					</tr>
					<tr>
						<td>Content:</td> 
						<td><textarea rows="10" cols="30" name="content"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" style="float:right" value="���"/></td>
					</tr>
				</tbody>				
			</table>
		</form>
		
	</body>
</html>