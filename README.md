# Board_Blog

1. 주제
	나만의 블로그 게시판 만들기
	(실제볼 수 있는 주소 http://121.190.28.35:8080/Board_Blog/index.jsp)
2. 목적
	JSP, HTML, CSS, Jquery, MVC패턴, IBATIS, JSTL 라이브러리를 이용해서 나만의 	게시판 및 페이지 만들기

3. 구현 Point !
	-JSP에서 유용하게 쓰이는 패턴인 MVC (Model View Controller)를 이용해 게시판	을 구축
	-ibatis는 커넥션 생성부터 관리까지의 일련의 db연결과정을 정형화시켜놓은 라이브	러리로써 xml파일에 맵핑정보와 쿼리들을 기술하고, 데이터베이스의 테이블과 자바	객체를 맵핑하여 코딩의 단순화와 jdbc를 사용할 때 불편했던 작업들을 대신 수행할 	수 있도록 구현 ( cafe24의 호스팅 서버를 이용해 데이터베이스 이용 )
	-canvas 그림 형식 구현
	-jquery를 이용한 게시판 content를 볼 때 lightbox로써 볼 수 있도록 구현
	-jquery를 이용한 게시판 list 더보기 기능 구현
	-시맨틱 태그를 이용한 웹페이지 구현
  
4. 실제적 구현부분
패키지
-action			//페이지에서 필요한 기능 action 후 페이지로 넘김
  AjaxListAction.java
  ContentAction.java
  CountAction.java
  DeleteAction.java
  InsertAction.java
  ListAction.java
-beans			//Entity beans
  Board.java		//getter setter 
-controller				//컨트롤러 구성
  CommandAction.java
  ControllerAction.java	    //get방식과 post방식을 requestPro방식으로 처리
-dao					
  BoardDao.java
  CommonDao.java
-sqlconfig
  IBatisDBConnector.java	//jdbc 드라이버, url, 이름, 패스워드
  SqlMapConfig.properties
  SqlMapConfig.xml
-sqlmaps
  Board.xml			//sql 쿼리
-properties
  Command.properties	    // Action을 실행할 수 있도록 mapping
WebContent
-resource
  -style
    img파일들
    layout.css
    table.css
WEB-INF
  web.xml
ajaxList.jsp				//페이지 레이아웃 구현 위한 jsp파일
board.jsp
content.jsp
delete.jsp
index.jsp
insert.jsp
list.jsp
profile.jsp
redirect.jsp
redirect2.jsp
write.jsp




5. 소감
jsp를 이용한 기능을 이용하고자 mvc패턴과 ibatis기능을 이용해 구성해 보았으나,
기존에 공부했던 거에 비하면 높은 이해가 필요한 기능인지라 참고했던 웹사이트나 	벤치마킹했던 웹사이트에 비해 아쉬웠던 점이 많았지만, 요즘에 주로 많이 쓰이는 	mvc패턴을 익힐 수 있게 되어 좋았고, 나만의 웹페이지를 구현할 수 있어서 좋았습	니다. 다음에는 spring까지 이용하여 더욱 효율적인 웹페이지를 구현할 수 있도록 	노력해보겠습니다. 이런 프로젝트를 할 수 있게 해주셔서 감사합니다.

6. 참고사이트
http://xe.sketchbooks.co.kr/webzine_default
http://cusmaker.tistory.com/
http://blog.naver.com/PostView.nhn?blogId=musasin84&logNo=60194666889&parentCategoryNo=&categoryNo=&viewDate=&isShowPopularPosts=false&from=postView
http://www.codecademy.com/
http://www.cmsfactory.net/
