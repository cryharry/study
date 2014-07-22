<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>While문 예제 - 임의의 값을 임의의 횟수로 곱하기</H2>
<%
	int number = Integer.parseInt(request.getParameter("number"));
	int num = Integer.parseInt(request.getParameter("num"));
	long multiply = 1;
	int count = 0;

	while(count<num) { //count가 num보다 커질때까지 반복한다
		multiply *= number; //number값을 multiply에 곱해서 저장한다.
		count++; //count를 1씩 증가시킨다.
	}
%>
결과: <%=multiply%>