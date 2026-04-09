package com.ecommerce.model;

import java.sql.Timestamp;

public class Order {
    private int orderId;
    private String userEmail;
    private String productName;
    private double price;
    private String status;

    // Generate Getters and Setters (Right-click > Source > Generate Getters and Setters)
    public String getUserEmail() { return userEmail; }
    public void setUserEmail(String userEmail) { this.userEmail = userEmail; }
    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}