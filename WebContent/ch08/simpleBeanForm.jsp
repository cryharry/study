<%@ page contentType="text/html;charset=euc-kr" %>
<html>
 <body>
  
  <H1>간단한 자바빈 프로그래밍</H1>
  <BR>
  <FORM METHOD="post" ACTION="simpleBean.jsp">
	<TABLE WIDTH="500" BORDER="0" CELLSPACING="0" CELLPADDING="3" ALIGN="left">
		<TR>
			<TD WIDTH="100">메세지</TD>
			<TD WIDTH="400">
				<INPUT TYPE="text" NAME="msg" SIZE="20" MAXLENGTH="30">
				<INPUT TYPE="submit" NAME="send" VALUE="보내기">
			</TD>
		</TR>
	</TABLE>
  </FORM>