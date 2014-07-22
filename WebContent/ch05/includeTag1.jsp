<%@ page contentType="text/html;charset=euc-kr" %>
<H1>포함하는 페이지includeTag1.jsp 입니다.</H1>
<% request.setCharacterEncoding("euc-kr"); %>
<HR>
<jsp:include page="includeTagTop1.jsp" flush="false" />
includeTag1.jsp의 나머지 내용입니다.