<%@ page contentType="text/html;charset=euc-kr" %>

<H2>표현식 예제1 - 배열의 내용 출력</H2>
<%!
	String str[] = {"JSP가","정말","재미","있다"};
%>
<TABLE BORDER="1" WIDTH="250">
 <TR><TD>배열의 첨자</TD><TD>배열의 내용</TD></TR>
 <%
	for(int i=0; i<str.length; i++) {
%>
		<TR><TD><%=i%></TD><TD><%=str[i]%></TD></TR>
	<%}%>
</TABLE>