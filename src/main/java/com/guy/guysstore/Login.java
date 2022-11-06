package com.guy.guysstore;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/login")
public class Login {
    @OnMessage
    public String echo(String message) {
        String str[] = message.split("\n");
        System.out.println(str[0] +" "+ str[1]);
        if (str[0].equals("g") && str[1].equals("g")) return "0";
        else return str[0];
    }
}
