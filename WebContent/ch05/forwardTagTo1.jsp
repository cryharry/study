<%@ page contentType="text/html;charset=euc-kr" %>
<H2>포워딩되는 페이지: forwardTagTo1.jsp</H2>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
<B><%=id%></B>님의<P>
패스워드는 <B><%=passwd%></B>입니다.