package com.guy.guysstore;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;
import java.sql.ResultSet;
import java.sql.SQLException;

@ServerEndpoint("/login")
public class Login {
    @OnMessage
    public String echo(String message) throws SQLException {
        String str[] = message.split("\n");
        String id = str[0], password = str[1];
        DatabaseConnection databaseConnection = new DatabaseConnection();
        ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT * FROM USERS WHERE ID=\"" + str[0] + "\" AND PASSWORD=\"" + str[1] + "\"");
        String r = rs.next() ? str[0] : "0";
        databaseConnection.CloseConnection();
        return r;
    }
}
