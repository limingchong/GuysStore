package SOAPs;


import com.guy.guysstore.DatabaseConnection;

import javax.jws.soap.SOAPBinding;
import javax.ws.rs.*;
import javax.jws.*;
import javax.xml.soap.*;
import javax.xml.ws.*;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebService(serviceName = "TestService")
public class TestService {
    @WebMethod(operationName = "say", action = "action0")
    public String say(@WebParam(name = "name") String txt) {
        return "hi " + txt;
    }

    @WebMethod(operationName = "getImages", action = "action1")
    public String[] getImages(@WebParam(name = "username") String username) throws SQLException {
        com.guy.guysstore.DatabaseConnection databaseConnection = new DatabaseConnection();
        ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT SUM(`count`) FROM goods LEFT JOIN (SELECT * FROM carts WHERE user_id = \"" + username + "\")a on goods.id=a.good_id where count is not null");
        Images images = null;
        if (rs.next()) images = new Images(rs.getInt(1));
        ResultSet resultSet = databaseConnection.GetResultFromSqlQuery("SELECT image, count FROM goods LEFT JOIN (SELECT * FROM carts WHERE user_id = \"" + username + "\")a on goods.id=a.good_id where count is not null");
        while (resultSet.next()) for (int i = 0; i < resultSet.getInt(2); i++) images.addImage(resultSet.getString(1));
        databaseConnection.CloseConnection();
        return images.getUrls();
    }
}