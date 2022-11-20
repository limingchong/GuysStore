package SOAPs;

import javax.xml.ws.Endpoint;
import java.sql.SQLException;

public class SOAPLauncher {

    public static void main(String[] args) {
        String [] ops = new String[1];
        ops[0] = "param";

        String [] vs = new String[1];
        vs[0] = "admin";

        Endpoint.publish("http://localhost:8081/GuysStore/testsoap?wsdl",new RandomPic());
        //System.out.println(SimpleSoapClient.SendSoapRequest("RandomPic",ops,vs,"http://localhost:8081/GuysStore/testsoap"));
        try {
            System.out.println(new RandomPic().RandomPic(""));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
