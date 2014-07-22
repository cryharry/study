<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    Connection con = null;

    try {
        String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
        String dbId = "jspid";
        String dbPass = "jsppas";

        Class.forName("con.mysql.jdbc.Driver");
        con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
        //아래와 같이 작성해도 됨
        //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest?user=jspid&password=jsppass");
    } catch (Exception e) {
        e.printStackTrace();
    }
    out.println("제대로 연결되었습니다.");
%>
