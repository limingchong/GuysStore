package com.guy.guysstore;

import javax.ws.rs.*;
import javax.jws.*;
import javax.xml.soap.*;
import javax.xml.ws.*;


@WebService
public class TestService {
    @WebMethod
    public String hello() {
        return "test1";
    }

}