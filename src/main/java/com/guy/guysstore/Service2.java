package com.guy.guysstore;


import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService()
public class Service2 {
    @WebMethod
    public String say(String str){
        System.out.println("rcv " +str);
        return "say " + str;
    }
}
