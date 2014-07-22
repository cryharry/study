<%@ page contentType="text/html;charset=euc-kr" %>
<H2>포워딩하는 페이지: forwardTagFrom1.jsp<H2>
<% request.setCharacterEncoding("euc-kr"); %>

<HTML>
 <BODY>
  forwardTagFrom1.jsp의 내용입니다.<BR>
  화면에 절대 표시 안 됩니다.
  <jsp:forward page="forwardTagTo1.jsp" />
 </BODY>
</HTML>