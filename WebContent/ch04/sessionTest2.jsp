<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>Session내장객체 예제</H2>
<%
	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
	String id = (String)session.getAttribute("id"); //session속성 id의 값을 얻어옴
	String sessionId = session.getId(); //웹 브라우저에 할당된 세션ID를 얻어옴

	if(id != null) {
%>
<B><%=id%></B> 님 접속해주셔서 감사합니다.<BR>
<%=id%> 님 좋아하는 스포츠는 <%=sports%> 이고, <BR>
좋아하는 게임은 <%=game%> 입니다.<P>
현재 웹브라우저의 세션ID = <%=sessionId%><P>

<%
	session.invalidate(); //세션의 무효화
	} else {
		out.println("로그인을 하시기 바랍니다.");
	}
%>