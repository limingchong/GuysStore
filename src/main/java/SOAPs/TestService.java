package SOAPs;

import com.sun.org.glassfish.gmbal.ParameterNames;

import javax.jws.soap.SOAPBinding;
import javax.ws.rs.*;
import javax.jws.*;
import javax.xml.soap.*;
import javax.xml.ws.*;


@WebService(serviceName = "TestService")
public class TestService {
    @WebMethod(operationName = "say",action = "action0")
    public String say(@WebParam(name = "name") String txt) {
        return "hi " + txt;
    }

}