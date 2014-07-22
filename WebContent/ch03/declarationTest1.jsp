<%@ page contentType="text/html;charset=euc-kr" %>

<H2>선언문 예제1 - 멤버변수와 지역변수</H2>
<%
	String var1 = var2+ " web programming"; //지역변수 var1의 선언 및 초기값 할당
%>
<%!
	String var2 = "JSP"; //멤버변수var2의 선언 및 초기값 할당
%>
출력 결과: <%= var1 %>