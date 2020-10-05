import java.io.IOException;
import java.io.PrintWriter;

public class AjaxServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        // TODO Auto-generated method stub
        response.setContentType("text/html;charset=UTF-8");
        String str = "{\"id\":1,\"name\":\"张三\",\"pwd\":123}";
        PrintWriter out = response.getWriter();
        out.print(str);
        out.flush();
        out.close();
    }
}
