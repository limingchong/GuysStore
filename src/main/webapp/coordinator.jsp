<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="javax.xml.ws.Endpoint" %>
<%@ page import="SOAPs.TestService" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.net.Socket" %>
<%@ page import="java.net.InetSocketAddress" %>
<%@ page import="java.io.IOException" %>

<%
    String[] addrs = new String[3];
    int[] ports = new int[3];

    addrs[0] = "google.com";
    addrs[1] = "192.168.43.26";
    addrs[2] = "127.0.0.1";

    ports[0] = 8080;
    ports[1] = 1995;
    ports[2] = 8080;

    for (int i = 0; i < addrs.length; i++) {
        Socket server = new Socket();
        InetSocketAddress address = new InetSocketAddress(addrs[i], ports[i]);

        try {
            server.connect(address, 300);

            boolean status = server.isConnected();
            server.close();
            if (status) {
                response.sendRedirect("http://" + addrs[i] + ":" + ports[i] + "/GuysStore/");
                break;
            }
        } catch (IOException e) {

        }
    }
%>