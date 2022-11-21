package com.guy.guysstore;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

public class Redirector {
    public static void R(HttpServletResponse response,String to){
        String[] addrs = new String[3];
        int[] ports = new int[3];

        addrs[0] = "8.141.158.243";
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
                    response.sendRedirect("http://" + addrs[i] + ":" + ports[i] + "/GuysStore/" + to);
                    break;
                }
            } catch (IOException e) {

            }
        }
    }
}
