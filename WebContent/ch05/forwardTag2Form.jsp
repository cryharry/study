<%@ page contentType="text/html;charset=euc-kr" %>
<H2>포워딩 될 페이지에 파라미터값 전달하기 예제</H2>
<FORM METHOD="post" ACTION="forwardTagFrom2.jsp">
	이름 입력 : <INPUT TYPE="text" NAME="name"><BR>
	색 선택 : <BR>
	<INPUT TYPE="radio" NAME="color" VALUE="yellow">노랑색<BR>
	<INPUT TYPE="radio" NAME="color" VALUE="green">초록색<BR>
	<INPUT TYPE="radio" NAME="color" VALUE="blue">파랑색<BR>
	<INPUT TYPE="radio" NAME="color" VALUE="red">빨강색<P>
	<INPUT TYPE="submit" VALUE="확인">
</FORM>