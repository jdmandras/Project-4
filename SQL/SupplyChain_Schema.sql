-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dK2y4Z
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "customers" (
    "Customer_Id" float(5)   NOT NULL,
    "Customer_City" varchar(20)   NOT NULL,
    "Customer_Country" varchar(11)   NOT NULL,
    "Customer_Fname" varchar(11)   NOT NULL,
    "Customer_Lname" varchar(12),
    "Customer_Segment" varchar(11)   NOT NULL,
    "Customer_State" varchar(5)   NOT NULL,
    "Customer_Street" varchar(33)   NOT NULL,
    "Customer_Zipcode" float(5),
    "Latitude" float(12)   NOT NULL,
    "Longitude" float(12)   NOT NULL,
    CONSTRAINT "pk_customers" PRIMARY KEY (
        "Customer_Id"
     )
);

CREATE TABLE "orders" (
    "Order_Id" float(5)   NOT NULL,
    "Order_Customer_Id" float(5)   NOT NULL,
    "Type" varchar(8)   NOT NULL,
    "Days_for_shipping_real" float(1)   NOT NULL,
    "Days_for_shipment_scheduled" float(1)   NOT NULL,
    "Delivery_Status" varchar(17)   NOT NULL,
    "Order_Status" varchar(15)   NOT NULL,
    "shipping_date_DateOrders" timestamp   NOT NULL,
    "Shipping_Mode" varchar(14)   NOT NULL,
    "Market" varchar(12)   NOT NULL,
    "Order_City" varchar(35)   NOT NULL,
    "Order_State" varchar(36)   NOT NULL,
    "Order_Region" varchar(15)   NOT NULL,
    "Order_Country" varchar(31)   NOT NULL,
    "order_date_DateOrders" timestamp   NOT NULL,
    CONSTRAINT "pk_orders" PRIMARY KEY (
        "Order_Id"
     )
);

CREATE TABLE "departments" (
    "Department_Id" float(2)   NOT NULL,
    "Department_name" varchar(18)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "Department_Id"
     )
);

CREATE TABLE "product_categories" (
    "Category_Id" float(2)   NOT NULL,
    "Category_Name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_product_categories" PRIMARY KEY (
        "Category_Id"
     )
);

CREATE TABLE "product" (
    "Product_Card_Id" float(4)   NOT NULL,
    "Product_Image" varchar(96)   NOT NULL,
    "Product_Name" varchar(45)   NOT NULL,
    "Category_Id" float(2)   NOT NULL,
    "Department_Id" float(2)   NOT NULL,
    "Order_Item_Product_Price" float(11)   NOT NULL,
    CONSTRAINT "pk_product" PRIMARY KEY (
        "Product_Card_Id"
     )
);

CREATE TABLE "Product_per_order" (
    "Order_Item_Id" float(6)   NOT NULL,
    "Order_Id" float(5)   NOT NULL,
    "Product_Card_Id" float(4)   NOT NULL,
    "Sales_per_customer" float(11)   NOT NULL,
    "Order_Profit_Per_Order" float(12)   NOT NULL,
    "Order_Item_Discount_Rate" float(11)   NOT NULL,
    "Order_Item_Quantity" float(1)   NOT NULL,
    CONSTRAINT "pk_Product_per_order" PRIMARY KEY (
        "Order_Item_Id"
     )
);

ALTER TABLE "orders" ADD CONSTRAINT "fk_orders_Order_Customer_Id" FOREIGN KEY("Order_Customer_Id")
REFERENCES "customers" ("Customer_Id");

ALTER TABLE "product" ADD CONSTRAINT "fk_product_Category_Id" FOREIGN KEY("Category_Id")
REFERENCES "product_categories" ("Category_Id");

ALTER TABLE "product" ADD CONSTRAINT "fk_product_Department_Id" FOREIGN KEY("Department_Id")
REFERENCES "departments" ("Department_Id");

ALTER TABLE "Product_per_order" ADD CONSTRAINT "fk_Product_per_order_Order_Id" FOREIGN KEY("Order_Id")
REFERENCES "orders" ("Order_Id");

ALTER TABLE "Product_per_order" ADD CONSTRAINT "fk_Product_per_order_Product_Card_Id" FOREIGN KEY("Product_Card_Id")
REFERENCES "product" ("Product_Card_Id");

