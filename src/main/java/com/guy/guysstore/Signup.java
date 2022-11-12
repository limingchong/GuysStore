package com.guy.guysstore;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;
import java.sql.ResultSet;
import java.sql.SQLException;

@ServerEndpoint("/signup")
public class Signup {
    @OnMessage
    public String echo(String message) throws SQLException {
        String str[] = message.split("\n");
        String id = str[0], password = str[1];
        DatabaseConnection databaseConnection = new DatabaseConnection();
        int r = databaseConnection.InsertUpdateFromSqlQuery("INSERT INTO USERS VALUES(\"" + str[0] + "\",\"" + str[1] + "\"," + "1000" + ")");
        databaseConnection.CloseConnection();

        // 0 means failed
        return r == 2 ? "0" : "1";
    }
}
