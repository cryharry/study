<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String info = application.getServerInfo();
	int major = application.getMajorVersion();
	int minor = application.getMinorVersion();
	String path = application.getRealPath("/");
	application.log("로그 기록");
%>

<H2>Application내장객체 예제</H2>
웹 컨테이너의 이름과 버전 : <%=info%><P>
서블릿의 버전 : <%=major%>.<%=minor%><P>
웹 어플리케이션 폴더의 로컬 시스템 경로 : <%=path%>