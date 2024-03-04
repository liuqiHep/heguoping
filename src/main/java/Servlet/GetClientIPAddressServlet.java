package Servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetClientIPAddressServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {




        // 获取客户端的IP地址
        String clientIP = request.getRemoteAddr();

        // 将客户端的IP地址作为响应的内容返回给客户端
        System.out.println("客户端的IP地址:"+clientIP);

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(clientIP);
    }
}
