<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
    <h2>member1 테이블의 레코드를 화면에 표시하는 예제</h2>
    <table width="550" border="1">
        <tr>
            <td width="100">아이디</td>
            <td width="100">패스워드</td>
            <td width="100">이름</td>
            <td width="250">가입일자</td>
        </tr>
        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
                String dbId = "jspid";
                String dbPass = "jsppass";

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

                String sql = "select * from member1";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    String id = rs.getString("id");
                    String passwd = rs.getString("passwd");
                    String name = rs.getString("name");
                    Timestamp register = rs.getTimestamp("reg_date");
        %>
                <tr>
                    <td width="100"><%=id%></td>
                    <td width="100"><%=passwd%></td>
                    <td width="100"><%=name%></td>
                    <td width="250"><%=register.toString()%></td>
                </tr>
        <%      }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if(rs != null) try{rs.close();} catch (SQLException sqle){}
                if(pstmt != null) try{pstmt.close();} catch (SQLException sqle){}
                if(conn != null) try{conn.close();} catch (SQLException sqle){}
            }
        %>
    </table>
</body>
</html>
