<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<%@ page import="java.util.Hashtable" %>
<html>
<head>
    <title>DBCP를 사용한 테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
    <h3>DBCP를 사용한 member1 테이블의 레코드를 화면에 표시하는 예제</h3>
    <table width="500" border="1">
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
                Context initCtx = new InitialContext();
                Context envCtx = (Context)initCtx.lookup("java:comp/env");
                DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
                conn = ds.getConnection();

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
        <%
                }
            } catch (Exception e) {
                    e.printStackTrace();;
            } finally {
                    if(rs != null) try{rs.close();} catch (SQLException sqle) {}
                    if(pstmt != null) try{pstmt.close();} catch (SQLException sqle) {}
                    if(conn != null) try{conn.close();} catch (SQLException sqle) {}
            }
        %>
    </table>
</body>
</html>
