package SOAPs;

import javax.xml.ws.Endpoint;

public class SOAPLauncher {

    public static void main(String[] args) {
        Endpoint.publish("http://localhost:8081/GuysStore/testsoap?wsdl",new TestService());
    }
}
