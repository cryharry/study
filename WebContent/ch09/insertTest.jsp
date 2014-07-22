<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%
    //폼으로부터 넘어오는 파라미터
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    String name = request.getParameter("name");
    Timestamp register = new Timestamp(System.currentTimeMillis()); //현재 시간(현재 날짜 포함)

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";//사용하려는 데이터베이스명을 포함한 URL
        String dbId = "jspid";
        String dbPass = "jsppass";

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

        String sql = "insert into member1 values (?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,id);
        pstmt.setString(2,passwd);
        pstmt.setString(3,name);
        pstmt.setTimestamp(4,register);
        pstmt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
        if(conn != null) try{conn.close();}catch(SQLException sqle){}
    }
%>
<html>
<head>
    <title>레코드 삽입(추가)예제</title>
</head>
<body>
    member1 테이블에 새로운 레코드를 삽입(추가)했습니다.
</body>
</html>
