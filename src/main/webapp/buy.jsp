<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="javax.xml.ws.Endpoint" %>
<%@ page import="SOAPs.TestService" %>
<%@ page import="SOAPs.SimpleSoapClient" %>
<%@ page import="com.guy.guysstore.DatabaseConnection" %><%--
  Created by IntelliJ IDEA.
  User: 10134
  Date: 2022/11/18
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>s</title>
</head>
<body>
<%
    String [] ops = new String[1];
    ops[0] = "username";

    String [] vs = new String[1];
    vs[0] = request.getParameter("username");

    String images = SimpleSoapClient.SendSoapRequest("getImages",ops,vs,"http://localhost:8080/GuysStore/TestService");
    String []strs = images.split("<return>");
    String []imgs = new String[strs.length - 1];
    for (int i = 1; i < strs.length; i++)imgs[i - 1] = strs[i].substring(0,strs[i].indexOf("</return>") - 1);

    out.print("\n");
    for (String img : imgs) out.print("<image src=\""+ img +"\"\\>\n");
    com.guy.guysstore.DatabaseConnection databaseConnection = new DatabaseConnection();
    ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT ifnull(ROUND(SUM(COUNT*PRICE),1),0) as S, ifnull(SUM(COUNT),0) as C, ifnull(100-ROUND(SUM(COUNT*PRICE),1),0) as B from goods INNER JOIN carts on goods.id= good_id Where user_id =" +"\""+ request.getParameter("username") +"\"");
    ResultSetMetaData rsmd = rs.getMetaData();
    float number =0;
    while(rs.next()) 
            {
                number = rs.getFloat(rsmd.getColumnName(1));
                out.print(number);
            }
    int p = databaseConnection.InsertUpdateFromSqlQuery("DELETE FROM CARTS WHERE user_id ="+"\""+ request.getParameter("username") +"\"" );
    int n = databaseConnection.InsertUpdateFromSqlQuery("UPDATE USERS SET BALANCE = BALANCE - "+ Float.toString(number) +" WHERE id = "+"\""+ request.getParameter("username") +"\"" );
    out.print(p);
    out.print(n);
    
%>
</body>
</html>
