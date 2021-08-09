--
-- File generated with SQLiteStudio v3.1.1 on Mon Aug 9 21:25:27 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Category
CREATE TABLE Category (Category_id INTEGER PRIMARY KEY NOT NULL, Courier_type VARCHAR);
INSERT INTO Category (Category_id, Courier_type) VALUES (1, 'High');
INSERT INTO Category (Category_id, Courier_type) VALUES (2, 'Medium');
INSERT INTO Category (Category_id, Courier_type) VALUES (3, 'Low');

-- Table: Client
CREATE TABLE Client (Client_id INT PRIMARY KEY NOT NULL, Org_name VARCHAR NOT NULL, Office_address VARCHAR, Phone_no INT, email_id VARCHAR UNIQUE, city VARCHAR, POC_name VARCHAR, Pincode INT);
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (100, 'Walmart Canada', '1940 Argentia Rd, Mississauga', 9789012341, 'walmart.canada@gmail.com', 'Missisauga', 'Atul ', 'L5N 1PN');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (101, 'Costco Ltd', '999 Lake Drive Issaquah,', 9807340912, 'costco.canada@yahoo.com', 'Ottawa', 'Aanad', 'D6O 3TB');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (102, 'Hudson''bay', '8925 Torbram Road Brampton', 9873098145, 'hudsonbay@gmail.com', 'Ontario', 'Priya', 'U7P 5HI');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (103, 'Home Depot', '1 Concorder Gate', 9087654390, 'homedepot@gmail.com', 'Toronto', 'Jiya', 'B7O 0RT');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (104, 'Amazon ', '5 Abibulla Road', 9876045231, 'amazon.canada@gmail.com', 'Ontario', 'Jeevan', 'J9P 7RT');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (105, 'Beautysense', '9 Rue du Petit Champlain,', 9876091239, 'beautysense@yahoo.com', 'Quebec', 'Nitin', 'G9K L0T');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (106, 'Sephora', 'Argyle Street, Halifax, Nova Scotia', 9567123098, 'sephora@yahoo.com', 'Nova Scotia', 'Ananya', 'U9L K8R');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (107, 'Zara', 'Byward Market Square, Ottawa', 9823409762, 'zarastores@hotmail.com', 'Ontario', 'Tina', 'Y7N L6R');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (108, 'Kijiji', '7 Burlington cross street', 9349011227, 'kijiji@gmail.com', 'Ontario', 'Shaurya', 'T6J  I7P');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (109, 'Ebay Canada', '37 Bloor Street ', 9088125508, 'ebaycan@yahoo.com', 'Toronto', 'Kim', 'Y8O 6TU');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (110, 'BestBuy', '5 Yukon Street', 9871122630, 'bestbuy@rediffmail.com', 'British  Columbia', 'Suhas', 'D89 6MU');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (111, 'Canadian Tire', '10, Downtown street', 9438801654, 'canadtire@yahoo.com', 'North York', 'Philips', 'N9T  O7D');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (112, 'Newegg', '67,St.Thomas Street', 9811597142, 'newegg@hotmail.com', 'Scarborough', 'Prithvi', 'S7J    9LT');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (113, 'Apple', '8,Wellington cross street', 9017849329, 'applea@microsoft.com', 'Nunavut', 'Jasmine', 'D6I A3T');
INSERT INTO Client (Client_id, Org_name, Office_address, Phone_no, email_id, city, POC_name, Pincode) VALUES (114, 'Instacart', '65,St.Catherine''s street', 9218809432, 'instacart@yahoo.om', 'Ontario', 'Ashwin', 'J9Y U8O');

-- Table: Delivery
CREATE TABLE Delivery (Truck_no INT REFERENCES TruckDetails (Truck_no), Loading_port VARCHAR, Destination_port VARCHAR, Status_code_delivery INT);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-87765', 'Ontario', 'Chicago', 1);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-98012', 'Montreal', 'Boston', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-78759', 'Toronto', 'San Francisco', 3);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-34780', 'Vancouver', 'Copenhagen', 3);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-78321', 'Ottawa', 'Paris', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-90872', 'Ontario', 'Toulouse', 1);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-78321', 'Montreal', 'Lille', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-90872', 'Chicago', 'Ontario', 3);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-89034', 'Boston', 'Montreal', 3);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-90125', 'San Franciso', 'Toronto', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-65112', 'Copenhagen', 'Vancouver', 1);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-87126', 'Paris', 'Ottawa', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-67123', 'Toulouse', 'Ontario', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-67092', 'Lille', 'Montreal', 1);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-78094', 'Boston', 'Chicago', 2);
INSERT INTO Delivery (Truck_no, Loading_port, Destination_port, Status_code_delivery) VALUES ('C-84365', 'Paris', 'Toulouse', 3);

-- Table: Driver_details
CREATE TABLE Driver_details (Driver_id INT PRIMARY KEY NOT NULL, Driver_name VARCHAR, Driver_Phone_no INTEGER);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (202, 'Kriya', 9086542109);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (205, 'Tarun', 9082311998);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (206, 'Anjali', 9127734091);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (207, 'Aditya', 9811122093);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (200, 'Varun', 9178906589);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (215, 'Adit', 9087546007);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (210, 'Tara', 9871100458);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (201, 'Vimal', 9011227788);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (203, 'Karan', 9811006387);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (204, 'Akshay', 9188263941);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (208, 'Mandeep', 9115207255);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (209, 'Kiran', 9451166990);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (211, 'Dipika', 9002277114);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (212, 'Grover', 9117659988);
INSERT INTO Driver_details (Driver_id, Driver_name, Driver_Phone_no) VALUES (214, 'Deepak', 9081167542);

-- Table: Emp_dept
CREATE TABLE Emp_dept (Dept_id INT PRIMARY KEY NOT NULL, Dept_name VARCHAR);
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (1, 'Warehousing');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (2, 'Inventory Management');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (3, 'Packaging');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (4, 'Billing');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (5, 'Shipping');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (6, 'Packaging');
INSERT INTO Emp_dept (Dept_id, Dept_name) VALUES (7, 'Labeling');

-- Table: Emp_details
CREATE TABLE Emp_details (Emp_id INT PRIMARY KEY NOT NULL, Emp_name VARCHAR, Emp_address VARCHAR, "Emp_contact no" INTEGER, Dept_id INT REFERENCES Emp_dept (Dept_id));
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (200, 'Varun', '12,Rue Saint-Paul', 9178906589, 2);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (201, 'Trisha', '3,Rue Saint-Joseph,', 9340965234, 3);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (202, 'Kriya', '9,South Granville Street, Vancouver', 9086542109, 7);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (203, 'Vipin', '8,Ossington Avenue, Toronto', 9873245091, 6);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (204, 'Venba', '2,Kensington Avenue, Toronto', 9307120789, 4);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (205, 'Tarun', '13,Whyte Avenue, Edmonton', 9082311998, 5);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (206, 'Anjali', '56,Rue de North,Ontario', 9127734091, 1);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (207, 'Aditya', '17th Avenue, Calgary, Alberta', 9811122093, 6);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (210, 'Tara', '18th ,Ampton Street,Toronto', 9800872341, 3);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (208, 'Binay', '70,Waterlamp treet,Quebec', 9760911226, 4);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (209, 'Shanaya', '6, Walstreet, Calgary', 9830001187, 7);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (211, 'Shravya', '79,Timmings Street,Nova Scotia', 9811052879, 3);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (212, 'Sindhuja', '8,Kennedy Street,Quebec', 9100823654, 2);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (213, 'Pooja', '1,Birmington Street,Ontario', 9723007621, 5);
INSERT INTO Emp_details (Emp_id, Emp_name, Emp_address, "Emp_contact no", Dept_id) VALUES (214, 'Ken', '6,Thunderbay Street,Ottawa', 9811067235, 6);

-- Table: Enquiry
CREATE TABLE Enquiry (Enquiry_id INT PRIMARY KEY NOT NULL, Enquiry_title VARCHAR, Enquiry_type VARCHAR, Enquiry_date DATE, Shipment_tracking_id INT REFERENCES Shipments (Shipment_tracking_id), Driver_id INT REFERENCES Driver_details (Driver_id));
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (400, 'Incorrect display of Shipping date', '1', '06-05-2021', 504, 207);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (401, 'Damage in parcel received', '2', '14-05-2021', 506, 215);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (402, 'Delay in Delivery', '3', '04-05-2021', 502, 200);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (403, 'Incorrect calculation of payment', '2', '07-05-2021', 501, 210);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (404, 'EDD is incorrect', '3', '07-05-2021', 505, 205);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (405, 'Mode of Payment is missing', '3', '07-05-2021', 503, 206);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (406, 'Damage in parcel received', '2', '05-05-2021', 507, 202);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (407, 'Incorrect display of Shipping date', '2', '01-05-2021', 508, 204);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (408, 'Delay in Delivery', '1', '15-05-2021', 509, 209);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (409, 'Incorrect calculation of payment', '2', '11-05-2021', 510, 214);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (410, 'EDD is incorrect', '3', '11-05-2021', 511, 203);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (411, 'Mode of Payment is missing', '2', '14-05-2021', 512, 201);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (412, 'Damage in parcel received', '1', '12-05-2021', 513, 211);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (413, 'EDD is incorrect', '2', '09-05-2021', 514, 208);
INSERT INTO Enquiry (Enquiry_id, Enquiry_title, Enquiry_type, Enquiry_date, Shipment_tracking_id, Driver_id) VALUES (414, 'Mode of Payment is missing', '2', '08-05-2021', 515, 212);

-- Table: Invoices
CREATE TABLE Invoices (Invoice_number INT PRIMARY KEY NOT NULL, Order_id INTEGER REFERENCES "Order" (Order_id), Invoice_status_code INT, Invoice_date DATE, Invoice_details VARCHAR);
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (601, 305, 1, '05-05-2021', 'Received');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (602, 308, 2, '01-05-2021', 'Posted');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (603, 304, 3, '02-05-2021', 'Under review');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (605, 301, 4, '08-05-2021', 'Closed');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (606, 307, 5, '02-04-2021', 'Posted');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (607, 303, 4, '02-05-2021', 'Closed');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (608, 302, 2, '10-05-2021', 'Posted');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (609, 306, 1, '11-05-2021', 'Received');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (610, 309, 1, '12-05-2021', 'Received');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (611, 310, 2, '10-05-2021', 'Posted');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (612, 311, 3, '10-05-2021', 'Under review');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (613, 312, 4, '13-05-2021', 'Closed');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (614, 313, 3, '9-05-2021', 'Under review');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (615, 314, 2, '08-05-2021', 'Posted');
INSERT INTO Invoices (Invoice_number, Order_id, Invoice_status_code, Invoice_date, Invoice_details) VALUES (616, 315, 3, '07-05-2021', 'Under review');

-- Table: Login
CREATE TABLE Login (login_pswd VARCHAR (8) NOT NULL, Client_id INT REFERENCES Client (Client_id));
INSERT INTO Login (login_pswd, Client_id) VALUES ('Ahil@123', 102);
INSERT INTO Login (login_pswd, Client_id) VALUES ('be@ty@34', 105);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Sep0r@768', 106);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Zar89@sd', 107);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Wal@345', 100);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Cos45@3', 101);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Amazeus@78', 104);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Home45@87', 103);
INSERT INTO Login (login_pswd, Client_id) VALUES ('kiji22123', 108);
INSERT INTO Login (login_pswd, Client_id) VALUES ('ebca@ay', 109);
INSERT INTO Login (login_pswd, Client_id) VALUES ('bebuy@167', 110);
INSERT INTO Login (login_pswd, Client_id) VALUES ('canadt@67', 111);
INSERT INTO Login (login_pswd, Client_id) VALUES ('New34@12', 112);
INSERT INTO Login (login_pswd, Client_id) VALUES ('App@678', 113);
INSERT INTO Login (login_pswd, Client_id) VALUES ('Inst67@8', 114);

-- Table: Order
CREATE TABLE "Order" (Client_id INT REFERENCES Client (Client_id), Order_id INTEGER PRIMARY KEY NOT NULL, Parcel_Weight DOUBLE, Parcel_unit_price DOUBLE, Category_id INTEGER REFERENCES Category (Category_id));
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (104, 301, 18.6, 5, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (103, 302, 50, 100, 1);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (105, 303, 23.5, 22, 3);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (100, 304, 10, 60, 1);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (106, 305, 14.2, 10, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (107, 306, 10.7, 40, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (102, 307, 34, 17, 3);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (101, 308, 12.5, 23, 3);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (108, 309, 15, 12, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (109, 310, 20.2, 30, 1);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (110, 311, 18, 32, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (111, 312, 40, 10, 3);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (112, 313, 65, 15, 2);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (113, 314, 10, 6, 3);
INSERT INTO "Order" (Client_id, Order_id, Parcel_Weight, Parcel_unit_price, Category_id) VALUES (114, 315, 80, 20, 2);

-- Table: Payments
CREATE TABLE Payments (Order_id INTEGER REFERENCES "Order" (Order_id), Payment_date DATE, Payment_method VARCHAR, Payment_amount DOUBLE);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (303, '02-05-2021', 'Debit card', 517);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (306, '11-05-2021', 'Smart Card', 428);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (304, '03-05-2021', 'Cash', 600);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (308, '01-05-2021', 'Smart Card', 287.5);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (302, '11-05-2021', 'Net Banking', 5000);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (301, '07-05-2021', 'Cash', 93);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (305, '06-05-2021', 'Debit card', 578);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (309, '13-05-2021', 'Net Banking', 180);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (310, '11-05-2021', 'Cash', 606);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (311, '11-05-2021', 'Smart Card', 576);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (312, '14-05-2021', 'Net Banking', 400);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (313, '10-05-2021', 'Cash', 975);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (314, '09-05-2021', 'Smart Card', 60);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (315, '08-05-2021', 'Debit Card', 1600);
INSERT INTO Payments (Order_id, Payment_date, Payment_method, Payment_amount) VALUES (307, '08-05-2021', 'Cash', 578);

-- Table: Shipments
CREATE TABLE Shipments (Shipment_tracking_id INT PRIMARY KEY NOT NULL, Order_id INT REFERENCES "Order" (Order_id), Invoice_number INT REFERENCES Invoices (Invoice_number), Shipment_date DATE);
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (501, 304, 603, '08-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (502, 306, 607, '05-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (503, 307, 609, '08-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (504, 305, 608, '07-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (505, 301, 601, '08-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (506, 302, 608, '12-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (507, 303, 605, '03-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (508, 308, 602, '02-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (509, 309, 610, '14-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (510, 310, 611, '12-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (511, 311, 612, '12-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (512, 312, 613, '15-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (513, 313, 614, '11-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (514, 314, 615, '10-05-2021');
INSERT INTO Shipments (Shipment_tracking_id, Order_id, Invoice_number, Shipment_date) VALUES (515, 315, 616, '09-05-2021');

-- Table: TruckDetails
CREATE TABLE TruckDetails (Truck_no INT PRIMARY KEY NOT NULL, Driver_id INT REFERENCES Driver_details (Driver_id), Shipment_tracking_id INT REFERENCES Shipments (Shipment_tracking_id));
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-78759', 207, 504);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-87765', 215, 506);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-99001', 210, 501);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-98012', 200, 502);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-34780', 202, 507);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-78321', 205, 505);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-90872', 206, 503);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-89034', 201, 512);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-90125', 208, 514);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-65112', 212, 515);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-87126', 209, 509);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-67123', 211, 513);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-67092', 214, 510);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-78094', 203, 511);
INSERT INTO TruckDetails (Truck_no, Driver_id, Shipment_tracking_id) VALUES ('C-84365', 204, 508);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
