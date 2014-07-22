<%@ page contentType="text/html;charset=euc-kr" errorPage = "error.jsp" %>

<H2> Directive 예제3 - errorPage, isErrorPage 속성 </H2>
<%
	int a = 1;
	int b = 0;
%>
a과 b의 사칙연산<P>
a+b = <%= a+b %><P>
a-b = <%= a-b %><P>
a*b = <%= a*b %><P>
a/b = <%= a/b %><P>