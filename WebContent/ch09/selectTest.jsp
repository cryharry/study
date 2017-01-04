<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2014-06-23
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
    <h2>테이블의 레코드를 화면에 표시하는 예제</h2>
    <table width="1000" border="1">
        <tr>
            <td width="300">회사명</td>
            <td width="300">우편번호</td>
            <td width="300">주소</td>
        </tr>
        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                String jdbcUrl = "jdbc:mysql://202.68.231.19:3306/sinyoung?useUnicode=true&characterEncoding=UTF-8";
                String dbId = "sinyoung";
                String dbPass = "sin817";

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

                String sql = "select ycName, zipCode, addr1 from scs02001";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    String ycName = rs.getString("ycName");
                    ycName = new String(ycName.getBytes("8859_1"), "KSC5601");
                    String zipCode = rs.getString("zipCode");
                    String addr1 = rs.getString("addr1");
                    addr1 = new String(addr1.getBytes("8859_1"), "KSC5601");
        %>
                <tr>
                    <td width="300"><%=ycName%></td>
                    <td width="300"><%=zipCode%></td>
                    <td width="300"><%=addr1%></td>
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
