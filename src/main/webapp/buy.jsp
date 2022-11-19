<%@ page import="javax.xml.ws.Endpoint" %>
<%@ page import="SOAPs.TestService" %>
<%@ page import="SOAPs.SimpleSoapClient" %><%--
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
    vs[0] = "admin";

    String images = SimpleSoapClient.SendSoapRequest("getImages",ops,vs,"http://localhost:8080/GuysStore/TestService");
    String []strs = images.split("<return>");
    String []imgs = new String[strs.length - 1];
    for (int i = 1; i < strs.length; i++)imgs[i - 1] = strs[i].substring(0,strs[i].indexOf("</return>") - 1);

    out.print("\n");
    for (String img : imgs) out.print("<image src=\""+ img +"\"\\>\n");
%>>
</body>
</html>
