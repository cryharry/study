<%@ page contentType="text/html;charset=euc-kr" %>

<H2>If-else문 예제 - 좋아하는 색 선택</H2>

<%
	String name = request.getParameter("name"); //폼으로부터 넘어온 이름 파라미터
	String color = request.getParameter("color"); //폼으로부터 넘어온 색깔 파라미터
	String selectColor = "";

	if(color.equals("blue")) {
		selectColor = "파랑색";
	} else if(color.equals("green")) {
		selectColor = "초록색";
	} else if(color.equals("red")) {
		selectColor = "빨강색";
	} else {
		selectColor = "기타색";
	}
%>

<%=name%>님이 선택한 색은 <%=selectColor%>입니다.<P>
선택한 색:<BR>
<img src=" <%=color+ ".jpg"%> BORDER=0"" ">