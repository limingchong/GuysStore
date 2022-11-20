<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="javax.xml.ws.Endpoint" %>
<%@ page import="SOAPs.TestService" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.net.Socket" %>
<%@ page import="java.net.InetSocketAddress" %>

<%
    String []addrs = new String[3];
    addrs[0] = "google.com";
    addrs[1] = "google.com";
    addrs[2] = "127.0.0.1";
    for(int i = 0 ;i < addrs.length; i++) {
        Socket server = new Socket();
        InetSocketAddress address = new InetSocketAddress(addrs[i],8080);
        server.connect(address, 300);
        boolean status = server.isConnected();
        server.close();
        if (status) {
            response.sendRedirect("http://" + addrs[i] + ":8080/GuysStore/");
            break;
        }
    }
%>