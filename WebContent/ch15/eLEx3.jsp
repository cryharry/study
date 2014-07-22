<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="test" uri="/WEB-INF/tlds/el-functions.tld" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <title>표현 언어에서 메소드 사용하기</title>
</head>
<body>

    <h3>표현 언어에서 메소드 사용하기 - 두 숫자의 덧셈</h3>
    <p>
    <form action="eLEx3.jsp" method="post">
        X : <input type="text" name="x" value="${param['x']}">
        <br>
        Y : <input type="text" name="y" value="${param['y']}">
        <input type="submit" value="덧 셈">
    </form>

    <p>
    합은 : ${test:add(param["x"], param["y"] )} 입니다.
</body>
</html>