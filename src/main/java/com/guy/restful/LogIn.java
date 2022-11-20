package com.guy.restful;

import com.guy.guysstore.CryptoSystemClient;
import com.guy.guysstore.DatabaseConnection;
import com.guy.guysstore.CryptoSystemServer;
import com.guy.guysstore.Redirector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

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
        ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT password FROM USERS WHERE ID=\"" + username + "\"");
        try {
            if (rs.next() && CryptoSystemServer.decry(rs.getString(1)).equals(password)){
                resp.addCookie(new Cookie("username",username));
                Redirector.R(resp,"home.jsp");
            }
            else Redirector.R(resp,"login.jsp?status=wrong");
        } catch (Exception e) {
            Redirector.R(resp,"login.jsp?status=wrong");
            throw new RuntimeException(e);
        }
        databaseConnection.CloseConnection();
    }
}
