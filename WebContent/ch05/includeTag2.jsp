<%@ page contentType="text/html;charset=euc-kr" %>
<H2>includeTag2.jsp 페이지입니다.</H2>
<%
	request.setCharacterEncoding("euc-kr");
	String siteName1 = request.getParameter("siteName1");
%>
<HR>
<jsp:include page="includeTagTop2.jsp">
	<jsp:param name="siteName" value="<%=siteName1%>" />
</jsp:include>

includeTag2.jsp 페이지의 나머지 내용입니다.<P>