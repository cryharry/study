<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form method="post" action="insertPro.jsp">
        아이디 : <input type="text" name="id" maxlength="12"><p>
        패스워드 : <input type="password" name="passwd" maxlength="12"><p>
        이름 : <input type="text" name="name" maxlength="10"><p>
        주민번호 : <input type="text" name="jumin1" maxlength="6"> - <input type="text" name="jumin2" maxlength="7"><p>
        E-Mail : <input type="text" name="email" maxlength="30"><p>
        Blog : <input type="text" name="blog" maxlength="50"><p>
        <input type="submit" value="보내기">
    </form>
</body>
</html>
