package com.guy.restful;

import com.guy.guysstore.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/login")
public class LogIn extends HttpServlet {
    private static final long serialVersionUID = 2L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        DatabaseConnection databaseConnection = new DatabaseConnection();
        ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT * FROM USERS WHERE ID=\"" + username + "\" AND PASSWORD=\"" + password + "\"");
        try {
            if (rs.next()){
                resp.addCookie(new Cookie("username",username));
                resp.sendRedirect("home.jsp");
            }
            else resp.sendRedirect("login.jsp");
        } catch (SQLException e) {
            resp.sendRedirect("login.jsp?status=wrong");
            throw new RuntimeException(e);
        }
        databaseConnection.CloseConnection();
    }
}
