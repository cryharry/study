<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="simpleBean" class="ch08.simpleBean.SimpleBean" />
<jsp:setProperty name="simpleBean" property="msg" />

<HTML>
	<BODY>
		<H1>간단한 자바빈 프로그래밍</H1>
		<BR>
		메세지 : <jsp:getProperty name="simpleBean" property="msg" />
	</BODY>
</HTML>