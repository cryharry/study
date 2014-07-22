<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>JSTL core 예제 - forTokens</title>
</head>
<body>
    <c:forTokens var="car" items="Sprinter Trueno AE86,RX-7 Savana FC3S,Lancer Evolution 3,RX-7 Efini FD3S" delims=",">
        자동차 이름: <c:out value="${car}" /><br>
    </c:forTokens>
</body>
</html>
