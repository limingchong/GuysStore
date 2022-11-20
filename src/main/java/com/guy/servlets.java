package com.guy;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;

public class servlets {
    public static void main(String[] args){
        Socket server = new Socket();
        InetSocketAddress address = new InetSocketAddress("127.0.0.1",8080);
        try {
            server.connect(address, 300);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        server.isConnected();
        try {
            server.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
