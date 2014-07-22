<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>쿠키를 생성하는 예제</title>
</head>
<body>
    <%
        String cookieName = "id";
        Cookie cookie = new Cookie(cookieName, "hongkd");
        cookie.setMaxAge(60*2);
        cookie.setValue("kimkd");
        response.addCookie(cookie);
    %>
    <h2>쿠키를 생성하는 예제</h2>
    <p>
        "<%=cookieName%> 쿠키가 생성되었습니다.<br>
        <input type="button" value="쿠키의 내용확인" onclick="javascript:window.location='useCookie.jsp'">
    </p>
</body>
</html>
