<%@ page contentType="text/html;charset=euc-kr" %>
<HTML>
 <BODY>
  <H2>Request내장객체 예제1</H2>
  <FORM METHOD="post" ACTION="requestTest1.jsp">
  이름 : <INPUT TYPE="text" NAME="name"><BR>
  나이 : <INPUT TYPE="text" NAME="age"><BR>
  성별 : 남자 <INPUT TYPE="radio" NAME="gender" VALUE="m" CHECKED>
		 여자 <INPUT TYPE="radio" NAME="gender" VALUE="f"><BR>
  취미 : <SELECT NAME="hobby">
			<OPTION SELECTED VALUE="잠자기">잠자기</OPTION>
			<OPTION VALUE="TV시청">TV시청</OPTION>
			<OPTION VALUE="만화보기">만화보기</OPTION>
			<OPTION VALUE="게임">게임</OPTION>
			<OPTION VALUE="등산">등산</OPTION>
		</SELECT><BR>
   <INPUT TYPE="submit" VALUE="보내기">
   </FORM>
  </BODY>
 </HTML>