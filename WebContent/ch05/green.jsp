<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("selectedColor");
%>
<H2>포워딩 되는 페이지 - <%=selectedColor+".jsp"%></H2>
<B><%=name%></B> 님의 좋아하는 색은 "<%=selectedColor%>"이고
기분의 안정과 온화함을 상징하는 색입니다.<BR>
<img src="<%=selectedColor+".jsp"%>" border="0" width="70" height="30">