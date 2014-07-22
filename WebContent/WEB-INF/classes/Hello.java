import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Hello extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException {
		res.setContentType("text/html;charset=euc-kr");
		try	{
			PrintWriter out = res.getWriter();
			//String name=java.net.URLDecoder.decode(req.getParameter("name"));
			String name=HangulConversion.toKor(req.getParameter("name"));
			out.println("<HTML>");
			out.println("<HEAD><TITLE>form&sevlet</TITLE></HEAD>");
			out.println("<BODY>");
			out.println(name+"님의 방문을 환영합니다.");
			out.println("</BODY>");
			out.println("</HTML>");
			out.close();
		} catch (Exception e){
			getServletContext().log("Error in HelloServlet:",e);
		}		
	}
}
