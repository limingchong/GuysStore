package com.guy.guysstore;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Good implements Serializable {
    private int id;
    private String name;
    private int reserve;
    private float price;
    private String description;
    private String image;

    public Good() {
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReserve() {
        return reserve;
    }

    public void setReserve(int reserve) {
        this.reserve = reserve;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) throws SQLException {
        this.id = id;
        DatabaseConnection dc = new DatabaseConnection();
        ResultSet rs = dc.GetResultFromSqlQuery("SELECT * FROM goods WHERE id=" + id);
        if (rs.next()) {
            int i = 2;
            name = rs.getString(i++);
            reserve = rs.getInt(i++);
            price = rs.getFloat(i++);
            description = rs.getString(i++);
            image = rs.getString(i++);
        }
        dc.CloseConnection();
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
