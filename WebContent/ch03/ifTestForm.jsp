<%@ page contentType="text/html;charset=euc-kr" %>
<H2>If-else문 예제 - 좋아하는 색 선택</H2>
<FORM METHOD="post" ACTION="ifTest.jsp">
이름 입력: <INPUT TYPE="text" NAME="name"><P>
색 선택:
<SELECT NAME="color">
	<OPTION VALUE="blue" SELECTED>파랑색</OPTION>
	<OPTION VALUE="green">초록색</OPTION>
	<OPTION VALUE="red">빨강색</OPTION>
	<OPTION VALUE="yellow">기타</OPTION>
</SELECT><P>
<INPUT TYPE="SUBMIT" VALUE="확인">
</FORM>