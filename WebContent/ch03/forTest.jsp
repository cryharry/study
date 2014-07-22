<%@ page contentType="text/html;charset=euc-kr" %>
<H2>For 예제 - 1~10까지 합 구하기</H2>

<%
	int sum = 0;
	String str = "";

	for(int i=0; i<=10; i++) {
		if(i<10) {//i가 10보다 작으면
			str += i+ "+";
		} else {//i가 10이면
			str += i+ "=";
		}
		sum += i; //i가 1~10까지 sum에 i를 반복 더하기한다.
	}//여기까지가 for문 영역
%>
<%=str%><%=sum%>