/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.guy.guysstore;

/**
 * @author 罗宇森
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

@ServerEndpoint("/sendEmail")
public class sendEmail {
    private Scanner in;
    private String from = "arcturus9z@163.com";
    private PrintWriter out;
    private String returnString, destAddress, title, body;

    @OnMessage
    public String echo(String message) throws SQLException, IOException {
        String str[] = message.split("\n");
        destAddress = str[2];
        body = str[1];
        title = str[0];
        String username = str[3];
        
        /*
        try {
            Socket s = new Socket("Smtp.163.com", 25);
            try {
                in = new Scanner(s.getInputStream());
                out = new PrintWriter(s.getOutputStream(), true );//表示自动刷新
                String hostName = InetAddress.getLocalHost().getHostName();
                receive();
                send("HELO " + hostName);// 握手，成功返回220表示服务就绪
                receive();
                authentication();
                send("MAIL FROM:<"+ from +'>');//发件人邮箱
                receive();
                send("RCPT TO: <"+ destAddress +'>');//收件人邮箱
                receive();
                sendMessage(from,destAddress,"We aim to response you within 5 days");
                send("QUIT");
                receive();
            } finally {
                s.close();
                
            }

        } catch (IOException e) {
            return("Error: " + e);
        }
        DatabaseConnection databaseConnection = new DatabaseConnection();
        int r = databaseConnection.InsertUpdateFromSqlQuery("INSERT INTO FEEDBACKS VALUES(\"" + username + "\",\"" + body + "\",\"" + title + "\",\"" + destAddress + "\")" );
        databaseConnection.CloseConnection();

         */

        body = "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"color:#337fe5;\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">Your feedback:</span></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"color:#337fe5;\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"color:#337fe5;\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<br />\n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<strong><span style=\"font-size:24px;color:#337FE5;\" class=\"ke-content-forecolor\">"+ title + "</span></strong> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><em>\"</em></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><em>&nbsp;&nbsp;&nbsp;&nbsp;</em><em>&nbsp;&nbsp;&nbsp;&nbsp;</em><em>"+ body +"</em></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><em>\"</em><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><span style=\"font-family:Arial;\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">w</span><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">ill be replied within 5 days.</span></span></span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:16px;color:#337FE5;\" class=\"ke-content-forecolor\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\"></span><br />\n" +
                "</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">Best regards,</span> \n" +
                "</p>\n" +
                "<p style=\"font-family:Arial;\">\n" +
                "\t<span style=\"color:#337fe5;\"><span style=\"font-size:16px;\"><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">Team </span><span style=\"font-size:13px;color:#000000;\" class=\"ke-content-forecolor\">Guy's Store</span></span></span> \n" +
                "</p>";
        SendMailThread sendMailThread = new SendMailThread(destAddress, "Guy's Store: Your feedback will be replied within 5 days.", body, "19726006@bjtu.edu.cn","");
        sendMailThread.sendMail();

        return "ok";
    }

    private void authentication() {
        send("Auth Login");
        receive();
        String username = "arcturus9z@163.com";
        String username_encoded = java.util.Base64.getEncoder().encodeToString(username.getBytes());
        send(username_encoded);
        receive();
        String password = "IVNNZYSVGXNDABUQ";
        String password_encoded = java.util.Base64.getEncoder().encodeToString(password.getBytes());
        send(password_encoded);
        receive();
    }

    private void sendMessage(String from, String to, String message) {
        send("DATA");//表示开始发邮件内容了
        receive();
        send("From:" + from);
        //receive();
        send("To:" + to);
        //receive();
        send("Subject: Your Feedback of [" + title + "]");
        send("Body: " + body);
        //receive();
        send(message);//发送邮件内容
        send(".");
        receive();
    }

    private void send(String s) {

        returnString += (s + '\n');

        out.print(s);

        out.print("\r\n");

        out.flush();

    }


    private void receive() {

        returnString += (in.nextLine() + '\n');

    }

}
