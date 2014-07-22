<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
    ch14.Thumbnail, java.util.*, java.io.*" %>

<%
    String realFolder = ""; //웹 어플리케이션의 절대 경로

    //파일이 업로드되는 폴더를 지정한다.
    String saveFolder = "thumnail"; //원본 이미지와 썸네일 이미지가 저장될 폴더
    String encType = "UTF-8"; //인코딩 타입
    int maxSize = 5*1024*1024; //최대 업로드될 파일크기 5Mb

    ServletContext context = pageContext.getServletContext();
    //현재 JSP 페이지의 웹 어플리케이션상의 절대 경로를 구한다.
    realFolder = context.getRealPath(saveFolder);

    try {
        MultipartRequest multi = null;

        /*전송을 담당할 콤포넌트를 생성하고 파일을 전송한다.
        전송할 파일명을 가지고 있는 객체, 서바상의 절대 경로, 최대 업로드될 파일 크기, 문자 코드, 기본 보안 적용 */
        multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

        Enumeration files = multi.getFileNames();
        int zoom = 5;
        //파일 정보가 있다면
        while(files.hasMoreElements()) {
            //input 태그의 속성이 file인 태그의 name 속성값 : 파라미터 이름
            String name = (String)files.nextElement();

            //서버에 저장된 파일 이름
            String filename = multi.getFilesystemName(name);

            String orgFileName = realFolder+ "\\" +filename; //경로를 포함한 원래 이미지 파일명
            String thumbFileName = realFolder+ "\\small" +filename; //경로를 포함한 썸네일 이미지 파일명
            Thumbnail.createImage(orgFileName, thumbFileName, zoom); //createImage() 메소드 호출해서 썸네일 이미지 생성
%>
            원본 파일 저장 경로 및 파일명 : <%=orgFileName%>
            <img src="<%=orgFileName%>" border="0"><br><br><br>
            "썸네일 이미지 저장 경로 및 파일명 : <%=thumbFileName%>
            <img src="<%=thumbFileName%>" border="0">
<%
        }
    } catch (IOException ioe) {
        ioe.printStackTrace();
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
