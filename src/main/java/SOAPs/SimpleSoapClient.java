package SOAPs;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class SimpleSoapClient {

    public static String SendSoapRequest(String operation,String[] paramNames, String[] paramValues){

        String params = "";
        for (int i = 0; i < paramNames.length; i++) params += "            <" + paramNames[i] + ">"+paramValues[i]+"</" + paramNames[i] + ">\r\n";


        String xml="<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n" +
                "   <soapenv:Header/>\r\n" +
                "   <soapenv:Body xmlns:ns2=\"http://SOAPs/\">\r\n" +
                "        <ns2:"+ operation + ">\r\n" +
                params +
                "        </ns2:" + operation + ">\r\n" +
                "    </soapenv:Body>\r\n" +
                "</soapenv:Envelope>";
        return callSoapService(xml);
    }

    static String callSoapService(String soapRequest) {
        try {
            String url = "http://localhost:8081/GuysStore/testsoap"; // replace your URL here
            URL obj = new URL(url);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

            // change these values as per soapui request on top left of request, click on RAW, you will find all the headers
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type","text/xml; charset=utf-8");
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(soapRequest);
            wr.flush();
            wr.close();
            String responseStatus = con.getResponseMessage();
            System.out.println(responseStatus);
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            return response.toString();
        }
        catch (Exception e) {
            return e.getMessage();
        }
    }
}