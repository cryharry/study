<%@ page contentType="text/html;charset=euc-kr" %>
<HTML>
 <HEAD><TITLE>JSP스크립트 예제</TITLE></HEAD>
  <BODY>
   <H2>JSP스크립트 예제</H2>
    <%!
		String declaration = "선언문 연습입니다";
	%>
	<%!
		public String declarationMethod() {
			return declaration;
		}
	%>
	<%
		String scriptlet = "스크립트릿 연습";
		String comment = "주석문 연습";
		out.println("내장객체를 이용한 내용 출력: " +declaration+ "<P>");
	%>

	선언문 출력하기(변수): <%= declaration %><P>
	선언문 출력하기(메소드): <%= declarationMethod() %><P>
	스크립트릿 출력하기: <%= scriptlet %><P>
	<!--JSP에서 사용하는 HTML 주석부분-->
	<!--HTML주석: <%= comment %> --><P>
	<%--JSP주석: <%= comment %> --%>
	<% /*자바주석
	(여러 줄 주석)
	*/
	%>
	<%// 자바 주석(한줄 주석)%>
   </BODY>
 </HTML>