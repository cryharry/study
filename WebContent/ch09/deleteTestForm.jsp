<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오후 6:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>레코드 삭제예제</title>
</head>
<body>
    <h2>member1 테이블의 레코드 삭제예제</h2>
    <form method="post" action="deleteTest.jsp">
        아이디 : <input type="text" name="id"><p>
        패스워드 : <input type="password" name="passwd"><P>
        <input type="submit" value="삭제하기">
    </form>
</body>
</html>
