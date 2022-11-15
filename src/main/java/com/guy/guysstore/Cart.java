/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.guy.guysstore;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;
import java.sql.ResultSet;
import java.sql.*;
import java.sql.SQLException;

@ServerEndpoint("/cart")
public class Cart {
    @OnMessage
    public int echo(String message) throws SQLException {
        String str[] = message.split("\n");
        int number = Integer.parseInt(str[0]);
        if (number>=0)
                {
                    DatabaseConnection databaseConnection = new DatabaseConnection();
                    ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT RESERVE FROM GOODS WHERE NAME=\"" + str[1] + "\"");
                    ResultSetMetaData rsmd = rs.getMetaData();
                    while(rs.next())
                    {
                        int reserve = rs.getInt(rsmd.getColumnName(1));
                        if(number<=reserve)
                        {
                            int updatedReserve = reserve - number;
                            int n = databaseConnection.InsertUpdateFromSqlQuery("UPDATE GOODS SET RESERVE = " + Integer.toString(updatedReserve) + " WHERE NAME=\"" + str[1] + "\"");
                            databaseConnection.CloseConnection();
                            return n == 2 ? 4 : 2;//Succeed
                        }
                        else{
                            return 0;//no enough
                        }  
                    }
                    return 3;//no found
                                                      
                }
        else{
            return 1;//negative number
        }
    }
        
        
        
        
    
}