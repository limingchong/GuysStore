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

@WebServlet(urlPatterns = "/signup")
public class SignUp extends HttpServlet {
    private static final long serialVersionUID = 3L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        DatabaseConnection databaseConnection = new DatabaseConnection();
        int r = databaseConnection.InsertUpdateFromSqlQuery("INSERT INTO USERS VALUES(\"" + username + "\",\"" + password + "\"," + "1000" + ")");
        databaseConnection.CloseConnection();

        if (r == 2) resp.sendRedirect("login.jsp?status=wrong_signup");
        else resp.sendRedirect("login.jsp?status=success_signup");
    }
}
