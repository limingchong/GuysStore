<%--
  Created by IntelliJ IDEA.
  User: 10134
  Date: 2022/11/12
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.guy.guysstore.DatabaseConnection" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
    <title>get 和 set 属性实例</title>
</head>
<body>

<%
    com.guy.guysstore.DatabaseConnection databaseConnection = new DatabaseConnection();
    out.print(request.getParameter("username"));
%>

<form method="POST">
    Username<input type="text" name="username">
    <br />
    Password<input type="text" name="password" />
    <input type="submit" value="submit" />
</form>
</body>
</html>