<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오후 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>레코드 삽입(추가)예제</title>
</head>
<body>
    <h2>member1 테이블에 레코드삽입(추가)예제</h2>
    <form method="post" action="insertTest.jsp">
        아이디 : <input type="text" name="id"><p>
        패스워드 : <input type="password" name="passwd"><p>
        이름 : <input type="text" name="name"><p>
        <input type="submit" value="보내기">
    </form>
</body>
</html>
