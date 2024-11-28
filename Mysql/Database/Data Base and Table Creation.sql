CREATE DATABASE Ecommerce;

Use Ecommerce;

CREATE TABLE Customers (
    User_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(225),
    Email VARCHAR(225),
    Address VARCHAR(225)new_columnName
);



CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
   Customer_ID int FOREIGN KEY REFERENCES Customer(Customer_ID) ,
    Order_Date DATE
    Order_Amount DECIMAL(8, 2),
);


CREATE TABLE Products (
    P_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(8, 2),
    Description TEXT
);
