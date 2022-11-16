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
                    ResultSet rs = databaseConnection.GetResultFromSqlQuery("SELECT RESERVE,ID FROM GOODS WHERE NAME=\"" + str[1] + "\"");
                    ResultSetMetaData rsmd = rs.getMetaData();
                    while(rs.next())
                    {
                        int reserve = rs.getInt(rsmd.getColumnName(1));
                        int id = rs.getInt(rsmd.getColumnName(2));
                        if(number<=reserve)
                        {
                            int updatedReserve = reserve - number;
                            int n = databaseConnection.InsertUpdateFromSqlQuery("UPDATE GOODS SET RESERVE = " + Integer.toString(updatedReserve) + " WHERE NAME=\"" + str[1] + "\"");
                            if(checkDuplicate(databaseConnection,str[2],id)) 
                            {
                                int p = databaseConnection.InsertUpdateFromSqlQuery("UPDATE CARTS SET COUNT = COUNT + "+ Integer.toString(number)+" WHERE user_id = "+"\""+str[2]+"\"" + " and good_id= "+id);
                            }
                            else 
                            {
                                int j = databaseConnection.InsertUpdateFromSqlQuery("INSERT INTO CARTS VALUES(\"" + str[2] + "\",\"" + Integer.toString(id) + "\"," + number + ")");
                            }                              
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
    public boolean checkDuplicate(DatabaseConnection databaseConnection,String userID,int goodID) throws SQLException{
        ResultSet rs1 = databaseConnection.GetResultFromSqlQuery("SELECT * FROM CARTS WHERE user_id =\"" + userID + "\"" + " and " +"good_id = " + Integer.toString(goodID));
        return rs1.next();
    }
        
        
        
        
    
}