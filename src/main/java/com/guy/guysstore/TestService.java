package com.guy.guysstore;

import javax.ws.rs.*;

@Path("/test")
public class TestService {
    @GET
    @Produces("text/plain")
    public String hello() {
        return "test Hello, World!";
    }
}