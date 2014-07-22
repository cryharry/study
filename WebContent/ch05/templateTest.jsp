<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<HTML>
 <HEAD><TITLE>Template 페이지 연습</TITLE></HEAD>
 <BODY>
  <TABLE WIDTH="500" BORDER="1" CELLPADDING="2" CELLSPACING="0">
	<TR>
		<TD COLSPAN = "2">
			<jsp:include page="top.jsp" flush="false" />
		</TD>
	</TR>
	<TR>
		<TD WIDTH="150" VALIGN="top">
			<jsp:include page="left.jsp" flush="false" />
		</TD>
		<TD WIDTH="350" VALIGN="top">
			<jsp:include page="<%=contentPage%>" flush="false" />
		</TD>
	</TR>
	<TR>
		<TD COLSPAN="2">
			<jsp:include page="bottom.jsp" flush="false" />
		</TD>
	</TR>
  </TABLE>
 </BODY>
</HTML>