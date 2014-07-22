<%@ page contentType="text/html;charset=euc-kr" %>
<H2>페이지 흐름제어: pageModuleControl.jsp</H2>
<%
	request.setCharacterEncoding("euc-kr");

	String product = request.getParameter("product");
	String CONTROL = null;
	String CONTENTPAGE = null;
	String PAGETITLE = null;
	if(product.equals("a")) {//product의 값이 "a"일 경우
		CONTROL = "dc";
		CONTENTPAGE = "dc.jsp";
		PAGETITLE = "디지털 카메라";
	} else { //product의 값이 "b"일 경우
		CONTROL = "pmp";
		CONTENTPAGE = "pmp.jsp";
		PAGETITLE = "PMP";
	}
%>
<jsp:forward page="template.jsp">
	<jsp:param name="CONTROL" value="<%=CONTROL%>" />
	<jsp:param name="CONTENTPAGE" value="<%=CONTENTPAGE%>" />
	<jsp:param name="PAGETITLE" value="<%=PAGETITLE%>" />
</jsp:forward>