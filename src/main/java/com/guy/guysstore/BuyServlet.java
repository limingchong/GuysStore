package com.guy.guysstore;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/buy")
public class BuyServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("userpwd");
        if("abc".equals(username)&&"123".equals(password)){
            //使用响应对象，重定向到成功页面
            //resp.sendRedirect("success.html");
            //请求转发
            req.getRequestDispatcher("success.html").forward(req, resp);;
        }else{
            //使用响应对象，重定向到注册页面
            resp.sendRedirect("register.html");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.sendRedirect("login.html");
        /*
        String username = req.getParameter("username");
        String password = req.getParameter("userpwd");
        if("abc".equals(username)&&"123".equals(password)){
            resp.sendRedirect("success.html");
        }else{
            resp.sendRedirect("register.html");
        }*/
    }
}
