<%@ page contentType="text/html;charset=euc-kr" %>

<H2>선언문 예제2 - 멤버변수와 메소드</H2>
<%!
	double var1;
	int var2 = 1;

	public double sum() {
		return var1 + var2;
	}


	String str = "하하하..";
	int var3 = 10;
%>

변수var1과 변수var2의 합: <%= sum() %><P>
변수str의 내용: <%= str %><P>
변수var3의 값: <%= var3 %>