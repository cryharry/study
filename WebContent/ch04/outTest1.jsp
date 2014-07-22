<%@ page contentType="text/html;charset=euc-kr" %>
<%
	int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int usedSize = bufferSize - remainSize;
%>
<H2>Out내장객체 예제</H2>
<B>현재 페이지에서의 버퍼의 사용현황</B><P>
출력 버퍼의 전체 크기 : <%=bufferSize%>byte<P>
현재 사용한 버퍼의 크기 : <%=usedSize%>byte<P>
남은 버퍼의 크기 : <%out.println(remainSize);%>byte<P>