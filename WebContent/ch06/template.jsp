<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String control = request.getParameter("CONTROL");
	String pageTitle = request.getParameter("PAGETITLE");
	String content = request.getParameter("CONTENTPAGE");
	String left = control+"Left.jsp";
%>
<HTML>
 <HEAD><TITLE><%=pageTitle%></TITLE></HEAD>
  <BODY>
   <TABLE WIDTH="500" BORDER="1" CELLPADDING="2" CELLSPACING="0">
	<TR>
		<TD COLSPAN="2">
			<jsp:include page="top.jsp" flush="false" />
		</TD>
	</TR>
	<TR>
		<TD WIDTH="150" VALIGN="TOP">
			<jsp:include page="<%=left%>" flush="false" />
		</TD>
		<TD WIDTH="350" VALIGN="TOP">
			<jsp:include page="<%=content%>" flush="false" />
		</TD>
	</TR>
	<TR>
		<TD COLSPAN="2">
			<jsp:include page="bottom.jsp" flush="false" />
		</TD>
	</TR>
  </BODY>
</HTML>