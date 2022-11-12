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
<%@ page import="com.guy.guysstore.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
    <title>get 和 set 属性实例</title>
</head>
<body>

<%
    DatabaseConnection dc = new DatabaseConnection();
    ResultSet rs = dc.GetResultFromSqlQuery("SELECT * FROM goods");
    dc.CloseConnection();
%>
<c:forEach var="id" begin="1" end="5">

    <jsp:useBean id="good_${id}"
                 class="com.guy.guysstore.Good">
        <jsp:setProperty name="good_${id}" property="id"
                         value="${id}"/>
    </jsp:useBean>
    <p>name
        <jsp:getProperty name="good_${id}" property="name"/>
    </p>
    <p>reserve
        <jsp:getProperty name="good_${id}" property="reserve"/>
    </p>
    <p>description
        <jsp:getProperty name="good_${id}" property="description"/>
    </p>
    <p>price
        <jsp:getProperty name="good_${id}" property="price"/>
    </p>
</c:forEach>

</body>
</html>