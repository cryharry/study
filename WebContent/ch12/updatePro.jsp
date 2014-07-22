<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ch12.board.BoardDBBean" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="ch12.board.BoardDataBean" %>

<%
    request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
    <jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
    String pageNum = request.getParameter("pageNum");

    BoardDBBean dbPro = BoardDBBean.getInstance();
    int check = dbPro.updateArticle(article);

    if(check == 1) {
%>
        <meta http-equiv="refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>">
<%
    } else {
%>
        <script language="JavaScript">
            <!--
                alert("비밀번호가 맞지 않습니다.");
                history.go(-1);
            -->
        </script>
<%
    }
%>