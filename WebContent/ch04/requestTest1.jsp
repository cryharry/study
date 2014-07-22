<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>Request내장객체 예제1</H2>
<% //form으로부터 넘어온 파라미터값을 처리
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	if(gender.equals("m")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>
<%=name%> 님의 정보는 다음과 같습니다.<P>
나이 : <%=age%><P>
성별 : <%=gender%><P>
취미 : <%=hobby%>