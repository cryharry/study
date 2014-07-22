<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>

<html>
<head>
    <title>표현 언어의 사용예제2</title>
</head>
<body>

    <h3>표현 언어의 사용예제2 - 파라미터값 처리</h3>
    <p>
    <form action="eLEx2.jsp" method="post">
        이름 : <input type="text" name="name" value="${param['name']}">
        <input type="submit" value="확 인">
    </form>

    <p>
    이름은 : ${param.name} 입니다.
</body>
</html>
