<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<HTML>
	<BODY>
		<%
			Date nowDate = new Date();
			//날짜형식을 yyyy년MM월dd일 형태로 사용하기 위해 SimpleDateFormat 객체 생성
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년MM월dd일");
			//현재의 날자와 시간에 yyyy년MM월dd일 형식을 format() 메소드를 사용해서 적용
			String formatDate = dateFormat.format(nowDate);
		%>
		일반적인 JSP 페이지의 형태로 아래와 같이 현재 날짜를 제공합니다.<br>
		현재 날짜는 <%= formatDate %> 입니다.
	</BODY>
</HTML>