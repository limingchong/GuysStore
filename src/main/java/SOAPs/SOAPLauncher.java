package SOAPs;

import javax.xml.ws.Endpoint;

public class SOAPLauncher {

    public static void main(String[] args) {
        String [] ops = new String[1];
        ops[0] = "username";

        String [] vs = new String[1];
        vs[0] = "admin";

        System.out.println(SimpleSoapClient.SendSoapRequest("getImages",ops,vs,null));

    }
}
