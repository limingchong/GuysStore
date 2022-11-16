package com.guy.guysstore;

import javax.xml.ws.Endpoint;

public class SOAPLauncher {

    public static void main(String[] args) {
        Endpoint.publish("http://localhost:8080/GuysStore-1.0-SNAPSHOT/testsoap?wsdl",new TestService());
        Endpoint.publish("http://localhost:8080/GuysStore-1.0-SNAPSHOT/srevice2",new Service2());
    }
}
