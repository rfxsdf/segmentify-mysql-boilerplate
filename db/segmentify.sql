CREATE DATABASE segmentify;

SHOW DATABASES;

USE segmentify;

CREATE TABLE IF NOT EXISTS The_Mavericks
(
    Headquarter_Address varchar(100) NOT NULL,
    Reviews             LONGTEXT,
    Phone               varchar(50)  NOT NULL,
    Location            varchar(50)  NOT NULL,
    Fax                 varchar(50)  NOT NULL,
    Home_Page           varchar(100) NOT NULL,
    Company_ID          INTEGER      NOT NULL,
    Contact_Title       varchar(50)  NOT NULL,
    Contact_Name        varchar(50)  NOT NULL,
    Company_Name        varchar(50)  NOT NULL,
    PRIMARY KEY (Company_ID),
    UNIQUE INDEX uq_idx_Phone (Phone),
    UNIQUE INDEX uq_idx_Fax (Fax),
    INDEX idx_Company_ID (Company_ID)
);

INSERT INTO The_Mavericks
VALUES ('360 Huntington Ave', 'This company rocks!', '123-456-7890', 'Boston, MA', '555-987-6543',
        'Segmentify: The Product of the Future', 1, 'Mr.', 'Joe Shmo', 'The Mavericks');
INSERT INTO The_Mavericks
VALUES ('360 Huntington Ave', 'This company sucks!', '123-456-7891', 'Boston, MA', '555-987-6544',
        'Segmentify: The Product of the Future', 2, 'Ms.', 'Jane Doe', 'The Mavericks');

CREATE TABLE IF NOT EXISTS Departments
(
    Company_ID  INTEGER NOT NULL,
    Dept_Name   varchar(50),
    Dept_Number INTEGER AUTO_INCREMENT,
    PRIMARY KEY (Company_ID, Dept_Name, Dept_Number),
    CONSTRAINT fk_1
        FOREIGN KEY (Company_ID) REFERENCES The_Mavericks (Company_ID) ON DELETE cascade,
    INDEX idx_Company_ID (Company_ID),
    INDEX idx_Name (Dept_Name),
    INDEX idx_Number (Dept_Number)
);

INSERT INTO Departments
VALUES (1, 'Innovation Strategy and Growth', 1);
INSERT INTO Departments
VALUES (2, 'Customer Experience Optimization', 2);

CREATE TABLE IF NOT EXISTS Internal_Employees
(
    First_Name  varchar(50)  NOT NULL,
    Last_Name   varchar(50)  NOT NULL,
    Int_Emp_ID  INTEGER AUTO_INCREMENT,
    Email       varchar(100) NOT NULL,
    City        varchar(50)  NOT NULL,
    State       varchar(50)  NOT NULL,
    Zip_Code    INTEGER      NOT NULL,
    Dept_Name   varchar(50)  NOT NULL,
    Dept_Number INTEGER      NOT NULL,
    Company_ID  INTEGER      NOT NULL,
    Sup_ID      INTEGER      NOT NULL,
    PRIMARY KEY (Int_Emp_ID),
    CONSTRAINT fk_2
        FOREIGN KEY (Dept_Name) REFERENCES Departments (Dept_Name) ON DELETE cascade,
    CONSTRAINT fk_3
        FOREIGN KEY (Dept_Number) REFERENCES Departments (Dept_Number) ON DELETE cascade,
    CONSTRAINT fk_4
        FOREIGN KEY (Company_ID) REFERENCES Departments (Company_ID) ON DELETE cascade,
    CONSTRAINT fk_5
        FOREIGN KEY (Sup_ID) REFERENCES Internal_Employees (Int_Emp_ID) ON DELETE cascade,
    UNIQUE INDEX uq_idx_Email (Email),
    INDEX idx_ID (Int_Emp_ID)
);

INSERT INTO Internal_Employees
VALUES ('John', 'Smith', 1, 'smith.j@mavs.com', 'Houston', 'Texas', 77020, 'Innovation Strategy and Growth', 1, 1, 1);
INSERT INTO Internal_Employees
VALUES ('Judy', 'Thomas', 2, 'thomas.j@mavs.com', 'Los Angeles', 'California', 91311,
        'Customer Experience Optimization', 2, 1, 2);

CREATE TABLE IF NOT EXISTS Projects
(
    Proj_Name   varchar(50),
    Proj_Number INTEGER AUTO_INCREMENT,
    Location    varchar(50) NOT NULL,
    Dept_Name   varchar(50) NOT NULL,
    Dept_Number INTEGER     NOT NULL,
    Company_ID  INTEGER     NOT NULL,
    PRIMARY KEY (Proj_Name, Proj_Number),
    CONSTRAINT fk_6
        FOREIGN KEY (Dept_Name) REFERENCES Departments (Dept_Name) ON DELETE restrict,
    CONSTRAINT fk_7
        FOREIGN KEY (Dept_Number) REFERENCES Departments (Dept_Number) ON DELETE restrict,
    CONSTRAINT fk_8
        FOREIGN KEY (Company_ID) REFERENCES Departments (Company_ID) ON DELETE restrict,
    INDEX idx_Name (Proj_Name),
    INDEX idx_Number (Proj_Number)
);

INSERT INTO Projects
VALUES ('Mission Impossible', 1, '2nd Floor', 'Innovation Strategy and Growth', 1, 1);
INSERT INTO Projects
VALUES ('Project Blue Sky', 2, '10th Floor', 'Customer Experience Optimization', 2, 1);

CREATE TABLE IF NOT EXISTS Int_Emp_Proj
(
    Int_Emp_ID  INTEGER     NOT NULL,
    Proj_Name   varchar(50) NOT NULL,
    Proj_Number INTEGER     NOT NULL,
    PRIMARY KEY (Int_Emp_ID, Proj_Name, Proj_Number),
    CONSTRAINT fk_9
        FOREIGN KEY (Int_Emp_ID) REFERENCES Internal_Employees (Int_Emp_ID) ON DELETE cascade,
    CONSTRAINT fk_10
        FOREIGN KEY (Proj_Name) REFERENCES Projects (Proj_Name) ON DELETE cascade,
    CONSTRAINT fk_11
        FOREIGN KEY (Proj_Number) REFERENCES Projects (Proj_Number) ON DELETE cascade,
    INDEX idx_ID (Int_Emp_ID),
    INDEX idx_Proj_Name (Proj_Name),
    INDEX idx_Proj_Number (Proj_Number)
);

INSERT INTO Int_Emp_Proj
VALUES (1, 'Mission Impossible', 1);
INSERT INTO Int_Emp_Proj
VALUES (2, 'Project Blue Sky', 2);

CREATE TABLE IF NOT EXISTS Dept_Locs
(
    Dept_Name   varchar(50) NOT NULL,
    Dept_Number INTEGER     NOT NULL,
    Company_ID  INTEGER     NOT NULL,
    Location    varchar(50) NOT NULL,
    PRIMARY KEY (Dept_Name, Dept_Number, Company_ID, Location),
    CONSTRAINT fk_12
        FOREIGN KEY (Dept_Name) REFERENCES Departments (Dept_Name) ON DELETE cascade,
    CONSTRAINT fk_13
        FOREIGN KEY (Dept_Number) REFERENCES Departments (Dept_Number) ON DELETE cascade,
    CONSTRAINT fk_14
        FOREIGN KEY (Company_ID) REFERENCES Departments (Company_ID) ON DELETE cascade,
    INDEX idx_Dept_Name (Dept_Name),
    INDEX idx_Dept_Number (Dept_Number),
    INDEX idx_Company_ID (Company_ID),
    INDEX idx_Locations (Location)
);

INSERT INTO Dept_Locs
VALUES ('Innovation Strategy and Growth', 1, 1, '2nd Floor');
INSERT INTO Dept_Locs
VALUES ('Customer Experience Optimization', 2, 2, '10th Floor');

CREATE TABLE IF NOT EXISTS Dependents
(
    Int_Emp_ID    INTEGER     NOT NULL,
    Depend_Number INTEGER AUTO_INCREMENT,
    Depend_Name   varchar(50) NOT NULL,
    Gender        varchar(50),
    Relationship  varchar(50) NOT NULL,
    PRIMARY KEY (Int_Emp_ID, Depend_number),
    CONSTRAINT fk_16
        FOREIGN KEY (Int_Emp_ID) REFERENCES Internal_Employees (Int_Emp_ID) ON DELETE cascade,
    INDEX idx_ID (Int_Emp_ID),
    INDEX idx_number (Depend_number)
);

INSERT INTO Dependents
VALUES (1, 1, 'Mark Fontenot', 'Male', 'Close Friend');
INSERT INTO Dependents
VALUES (2, 2, 'Laney Strange', 'Female', 'Close Friend');

CREATE TABLE IF NOT EXISTS Prospective_Clients
(
    Company_Name        varchar(50) NOT NULL,
    Contact_Title       varchar(50) NOT NULL,
    Contact_Name        varchar(50) NOT NULL,
    Headquarter_Address varchar(50) NOT NULL,
    Email               varchar(50) NOT NULL,
    Fax                 varchar(50) NOT NULL,
    Phone               varchar(50) NOT NULL,
    Prosp_Client_ID     INTEGER AUTO_INCREMENT,
    PRIMARY KEY (Prosp_Client_ID),
    UNIQUE INDEX uq_idx_Email (Email),
    UNIQUE INDEX uq_idx_Fax (Fax),
    UNIQUE INDEX uq_idx_Phone (Phone),
    INDEX idx_Prosp_Client_ID (Prosp_Client_ID)
);

INSERT INTO Prospective_Clients
VALUES ('Target', 'Ms.', 'Jenny Cai', '210 Ballardvale St', 'cai.je@northeastern.edu', '555-723-8765', '987-654-3210',
        1);
INSERT INTO Prospective_Clients
VALUES ('Best Buy', 'Mr.', 'Luke Abbatessa', '230 Independence Way', 'abbatessa.l@northeastern.edu', '555-319-4827',
        '111-111-1111', 2);

CREATE TABLE IF NOT EXISTS Prosp_Client_Locs
(
    Prosp_Client_ID INTEGER     NOT NULL,
    Location        varchar(50) NOT NULL,
    PRIMARY KEY (Prosp_Client_ID, Location),
    CONSTRAINT fk_17
        FOREIGN KEY (Prosp_Client_ID) REFERENCES Prospective_Clients (Prosp_Client_ID) ON DELETE cascade,
    INDEX idx_Prosp_Client_ID (Prosp_Client_ID),
    INDEX idx_Locations (Location)
);

INSERT INTO Prosp_Client_Locs
VALUES (1, 'Chicago, IL');
INSERT INTO Prosp_Client_Locs
VALUES (2, 'Miami, FL');

CREATE TABLE IF NOT EXISTS Services
(
    Service_Name    varchar(50)   NOT NULL,
    Price           DECIMAL(4, 2) NOT NULL,
    Discontinued    BOOLEAN,
    Service_ID      INTEGER AUTO_INCREMENT,
    Serv_Company_ID INTEGER       NOT NULL,
    PRIMARY KEY (Serv_Company_ID, Service_ID),
    CONSTRAINT fk_18
        FOREIGN KEY (Serv_Company_ID) REFERENCES The_Mavericks (Company_ID) ON DELETE cascade,
    INDEX idx_Company_ID (Serv_Company_ID),
    INDEX idx_Service_ID (Service_ID)
);

INSERT INTO Services
VALUES ('SwiftSurge', 49.99, False, 1, 1);
INSERT INTO Services
VALUES ('EchoWorks', 29.99, True, 2, 1);

CREATE TABLE IF NOT EXISTS Prosp_Serv
(
    Prosp_Client_ID INTEGER NOT NULL,
    Service_ID      INTEGER NOT NULL,
    Serv_Company_ID INTEGER NOT NULL,
    CONSTRAINT fk_19
        FOREIGN KEY (Prosp_Client_ID) REFERENCES Prospective_Clients (Prosp_Client_ID) ON DELETE cascade,
    CONSTRAINT fk_20
        FOREIGN KEY (Service_ID) REFERENCES Services (Service_ID) ON DELETE cascade,
    CONSTRAINT fk_21
        FOREIGN KEY (Serv_Company_ID) REFERENCES Services (Serv_Company_ID) ON DELETE cascade
);

INSERT INTO Prosp_Serv
VALUES (1, 1, 1);
INSERT INTO Prosp_Serv
VALUES (2, 2, 1);

CREATE TABLE IF NOT EXISTS Current_Clients
(
    Contact_Name        varchar(50) NOT NULL,
    Company_Name        varchar(50) NOT NULL,
    Contact_Title       varchar(50),
    Headquarter_Address varchar(50) NOT NULL,
    Phone               varchar(50) NOT NULL,
    Fax                 varchar(50) NOT NULL,
    Demographics        LONGTEXT    NOT NULL,
    Client_Company_ID   INTEGER     NOT NULL,
    Int_Emp_ID          INTEGER     NOT NULL,
    Curr_Client_ID      INTEGER AUTO_INCREMENT,
    Reports             LONGTEXT,
    PRIMARY KEY (Client_Company_ID, Int_Emp_ID, Curr_Client_ID),
    CONSTRAINT fk_22
        FOREIGN KEY (Int_Emp_ID) REFERENCES Internal_Employees (Int_Emp_ID) ON DELETE cascade,
    UNIQUE INDEX idx_Phone (Phone),
    UNIQUE INDEX idx_Fax (Fax),
    INDEX idx_Client_Company_ID (Client_Company_ID),
    INDEX idx_Int_Emp_ID (Int_Emp_Id),
    INDEX idx_Curr_Client_ID (Curr_Client_ID)
);

INSERT INTO Current_Clients
VALUES ('Jane Zheng', 'Amazon', 'Ms.', '410 Terry Ave', '222-222-2222', '555-789-1234',
        '1.541M employees, multinational technology company', 1, 1, 1, 'We are pleased to present the end-of-season financial report for our company''s service. This report covers the period from January 1st to March 31st, 2023.

Revenue:

Total revenue for the period was $2,500,000, which is an increase of 10% compared to the same period last year.
The majority of revenue came from our core service, which accounted for 80% of total revenue. We also saw growth in our new service offerings, which contributed 20% of total revenue.
Expenses:

Total expenses for the period were $1,800,000, which is an increase of 5% compared to the same period last year.
The largest expense category was salaries and benefits, which accounted for 40% of total expenses. This was followed by marketing and advertising expenses, which accounted for 25% of total expenses.
We also incurred higher expenses related to research and development of new service offerings, which contributed to the overall increase in expenses.
Profit:

The company''s profit for the period was $700,000, which is an increase of 18% compared to the same period last year.
The company''s profit margin for the period was 28%, which is an improvement compared to the same period last year.
Outlook:

Based on current trends and projections, we anticipate continued growth in revenue and profit for the next quarter.
We will continue to focus on expanding our service offerings and improving our marketing efforts to reach new customers.
We will also prioritize cost management and efficiency in order to maintain a strong profit margin.
Thank you for your attention to this report. Please let us know if you have any questions or concerns.');
INSERT INTO Current_Clients
VALUES ('Jasmine Wong', 'Tesla', 'Ms.', '13101 Harold Green Road', '333-333-3333', '207-123-4567',
        '127,855 employees, American automotive company', 1, 2, 2, 'We are pleased to present the end-of-season financial report for our company''s customer service department. This report covers the period from October 1st, 2022 to March 31st, 2023.

Revenue:

Total revenue for the period was $4,500,000, which is a 15% increase compared to the same period last year.
The majority of revenue came from service contracts with corporate clients, which accounted for 80% of total revenue. We also saw growth in our individual customer base, which contributed 20% of total revenue.
Expenses:

Total expenses for the period were $3,500,000, which is a 10% increase compared to the same period last year.
The largest expense category was salaries and benefits, which accounted for 45% of total expenses. This was followed by technology and infrastructure expenses, which accounted for 25% of total expenses.
We also incurred higher expenses related to training and development of our customer service team, which contributed to the overall increase in expenses.
Profit:

The department''s profit for the period was $1,000,000, which is a 25% increase compared to the same period last year.
The department''s profit margin for the period was 22%, which is an improvement compared to the same period last year.
Outlook:

Based on current trends and projections, we anticipate continued growth in revenue and profit for the next quarter.
We will continue to focus on building strong relationships with corporate clients and providing excellent service to individual customers.
We will also prioritize investing in technology and training to maintain a high level of efficiency and quality in our service delivery.
Thank you for your attention to this report. Please let us know if you have any questions or concerns.');

CREATE TABLE IF NOT EXISTS Curr_Services
(
    Curr_Client_ID    INTEGER NOT NULL,
    Client_Company_ID INTEGER NOT NULL,
    Service_ID        INTEGER NOT NULL,
    Serv_Company_ID   INTEGER NOT NULL,
    CONSTRAINT fk_23
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE cascade,
    CONSTRAINT fk_24
        FOREIGN KEY (Client_Company_ID) REFERENCES Current_Clients (Client_Company_ID) ON DELETE cascade,
    CONSTRAINT fk_25
        FOREIGN KEY (Service_ID) REFERENCES Services (Service_ID) ON DELETE cascade,
    CONSTRAINT fk_26
        FOREIGN KEY (Serv_Company_ID) REFERENCES Services (Serv_Company_ID) ON DELETE cascade
);

INSERT INTO Curr_Services
VALUES (1, 1, 1, 1);
INSERT INTO Curr_Services
VALUES (2, 1, 2, 1);

CREATE TABLE IF NOT EXISTS Curr_Client_Locs
(
    Client_Company_ID INTEGER     NOT NULL,
    Curr_Client_ID    INTEGER     NOT NULL,
    Location          varchar(50) NOT NULL,
    PRIMARY KEY (Client_Company_ID, Curr_Client_ID, Location),
    CONSTRAINT fk_27
        FOREIGN KEY (Client_Company_ID) REFERENCES Current_Clients (Client_Company_ID) ON DELETE cascade,
    CONSTRAINT fk_28
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE cascade,
    INDEX idx_Client_Company_ID (Client_Company_ID),
    INDEX idx_Curr_Client_ID (Curr_Client_ID),
    INDEX idx_Locations (Location)
);

INSERT INTO Curr_Client_Locs
VALUES (1, 1, 'Seattle, WA');
INSERT INTO Curr_Client_Locs
VALUES (1, 2, 'Austin, TX');

CREATE TABLE IF NOT EXISTS Comp_Comp
(
    Client_Company_ID INTEGER NOT NULL,
    Curr_Client_ID    INTEGER NOT NULL,
    CONSTRAINT fk_29
        FOREIGN KEY (Client_Company_ID) REFERENCES Current_Clients (Client_Company_ID) ON DELETE cascade,
    CONSTRAINT fk_30
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE cascade
);

INSERT INTO Comp_Comp
VALUES (1, 1);
INSERT INTO Comp_Comp
VALUES (1, 2);

CREATE TABLE IF NOT EXISTS Marketing_Department
(
    Supervisor_ID  INTEGER NOT NULL,
    Department_ID  INTEGER AUTO_INCREMENT,
    Curr_Client_ID INTEGER NOT NULL,
    PRIMARY KEY (Department_ID),
    CONSTRAINT fk_31
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE restrict,
    INDEX idx_Department_ID (Department_ID)
);

INSERT INTO Marketing_Department
VALUES (1, 1, 1);
INSERT INTO Marketing_Department
VALUES (2, 2, 2);

CREATE TABLE IF NOT EXISTS Application
(
    App_Name          varchar(50)   NOT NULL,
    Price             DECIMAL(7, 2) NOT NULL,
    App_ID            INTEGER AUTO_INCREMENT,
    Department_ID     INTEGER       NOT NULL,
    Service_ID        INTEGER       NOT NULL,
    Spending_Analysis LONGTEXT,
    Customer_Report   LONGTEXT,
    Product_Report    LONGTEXT,
    PRIMARY KEY (Department_ID, Service_ID, App_ID),
    CONSTRAINT fk_32
        FOREIGN KEY (Department_ID) REFERENCES Marketing_Department (Department_ID) ON DELETE cascade,
    CONSTRAINT fk_33
        FOREIGN KEY (Service_ID) REFERENCES Services (Service_ID) ON DELETE cascade,
    INDEX idx_Department_ID (Department_ID),
    INDEX idx_Service_ID (Service_ID),
    INDEX idx_App_ID (App_ID)
);

INSERT INTO Application
VALUES ('Segmentify', 10000.00, 1, 1, 1, 'We have conducted a spending analysis for our company for the fiscal year ending December 31st, 2022. This analysis provides an overview of our spending across major expense categories.

Expense Categories:

Salaries and Benefits: 45% of total expenses
Technology and Infrastructure: 20% of total expenses
Marketing and Advertising: 15% of total expenses
Rent and Utilities: 10% of total expenses
Travel and Entertainment: 5% of total expenses
Supplies and Services: 5% of total expenses
Key Findings:

The majority of our expenses were related to salaries and benefits, which is consistent with our focus on attracting and retaining top talent.
Technology and infrastructure expenses were higher than expected due to investments in new software and hardware for our operations.
Marketing and advertising expenses were in line with our budget and contributed to increased revenue through new customer acquisition.
Rent and utilities expenses were slightly lower than expected due to cost-saving measures implemented during the year.
Travel and entertainment expenses were significantly lower than in previous years due to the COVID-19 pandemic and the shift to remote work.
Supplies and services expenses were in line with our budget and included costs related to office supplies, equipment maintenance, and professional services.
Recommendations:

We recommend continuing to prioritize investments in salaries and benefits to attract and retain top talent.
We recommend evaluating technology and infrastructure expenses to ensure that we are using resources effectively and efficiently.
We recommend continuing to invest in marketing and advertising to drive revenue growth.
We recommend exploring opportunities for cost-saving measures related to rent and utilities.
We recommend maintaining the current level of spending on supplies and services to support our operations.
Thank you for your attention to this summary. Please let us know if you have any questions or concerns.', 'Introduction:
This report summarizes the feedback received from our customers over the past month. The data was collected through customer surveys and feedback forms. We have analyzed the results to identify areas where we can improve our products and services.

Product Quality:
Overall, customers are satisfied with the quality of our products. However, some customers have reported issues with the durability of our camping tents. We recommend conducting a quality control review to address this issue.

Customer Service:
Our customer service team received positive feedback for their responsiveness and knowledge. However, some customers reported long wait times to speak with a representative. We recommend hiring additional customer service representatives to reduce wait times.

Website:
The majority of customers found our website easy to navigate and informative. However, some customers reported difficulties with the checkout process. We recommend conducting a user experience review to identify areas for improvement.

Conclusion:
Overall, we received valuable feedback from our customers that will help us improve our products and services. We will take action on the recommendations provided to ensure that we continue to meet the needs of our customers.



', 'Overview:
The Widget Plus is a compact and versatile widget that has been on the market for six months. Our goal was to create a product that would appeal to a wide range of consumers, from tech enthusiasts to casual users. In this report, we will provide an update on the product''s performance and highlight areas for improvement.

Sales:
The Widget Plus has exceeded our initial sales projections, with 50,000 units sold in the first six months. We have seen steady growth in sales, particularly among young professionals and early adopters. We have also received positive feedback from customers regarding the product''s ease of use and durability.

Customer Feedback:
While customers have praised the Widget Plus for its user-friendly design, there have been some complaints about its battery life. We have taken this feedback into consideration and are working to improve the battery performance in the next version of the product. Additionally, some customers have expressed interest in more color options for the product, which we will consider for future releases.

Competitive Analysis:
In our analysis of the market, we have found that the Widget Plus is competitive with similar products in terms of features and price. However, we have identified some opportunities for differentiation, such as offering a longer warranty or bundling the product with additional accessories.

Conclusion:
Overall, the Widget Plus has been a successful product launch for Company X. We have exceeded our sales projections and received positive feedback from customers. While there are areas for improvement, such as battery life and color options, we believe that the Widget Plus has strong potential for continued growth in the market.');
INSERT INTO Application
VALUES ('Segmentify', 10000.00, 2, 1, 2, 'We have conducted a spending analysis for our company for the fiscal year ending December 31st, 2022. This analysis provides an overview of our spending across major expense categories.

Expense Categories:

Cost of Goods Sold: 60% of total expenses
Sales and Marketing: 15% of total expenses
Research and Development: 10% of total expenses
General and Administrative: 10% of total expenses
Depreciation and Amortization: 5% of total expenses
Key Findings:

The majority of our expenses were related to cost of goods sold, which is consistent with our focus on product quality and customer satisfaction.
Sales and marketing expenses were higher than expected due to increased investment in digital marketing campaigns and sales team expansion.
Research and development expenses were higher than expected due to new product development and enhancements.
General and administrative expenses were slightly higher than expected due to increased legal and accounting fees.
Depreciation and amortization expenses were in line with our budget and included costs related to the depreciation of fixed assets and intangible assets.
Recommendations:

We recommend continuing to prioritize investments in cost of goods sold to maintain product quality and customer satisfaction.
We recommend closely monitoring sales and marketing expenses to ensure that we are effectively utilizing our resources and generating a strong return on investment.
We recommend exploring opportunities to optimize research and development expenses by prioritizing projects with the highest potential impact.
We recommend reviewing general and administrative expenses to identify opportunities for cost-saving measures.
We recommend continuing to closely monitor depreciation and amortization expenses to ensure that we are accurately accounting for the useful lives of our assets.
Thank you for your attention to this summary. Please let us know if you have any questions or concerns.', 'Introduction:
This report presents an overview of the customer feedback we have received in the last quarter. The data was collected through surveys and customer support interactions. Our analysis focuses on identifying areas for improvement in our software and services.

Software Functionality:
The majority of our customers find our software to be functional and user-friendly. However, we received complaints about the search function not returning accurate results. We recommend conducting a usability study to identify and address issues with the search function.

Customer Support:
Customers have reported high satisfaction with our customer support services. However, there have been instances where customers reported not receiving timely responses from our support team. We recommend establishing a clearer communication process with customers to manage their expectations and reduce response time.

Software Updates:
Some customers reported difficulty in understanding the new features and changes introduced in our latest software update. We recommend providing clear and concise documentation on new features and changes to facilitate easier adoption by our customers.

Conclusion:
The feedback received from our customers provides valuable insights for improving our software and services. We will take action on the recommendations provided to ensure that we continue to meet the expectations and needs of our customers.', 'Overview:
The SuperClean All-Purpose Cleaner is a household cleaning product that has been on the market for three months. Our goal was to create a cleaning solution that is effective on a wide range of surfaces and stains, while also being environmentally friendly. In this report, we will provide an update on the product''s performance and highlight areas for improvement.

Sales:
The SuperClean All-Purpose Cleaner has met our initial sales projections, with 10,000 units sold in the first three months. While we have not seen explosive growth in sales, we have received positive feedback from customers who appreciate the product''s effectiveness and eco-friendliness. We have also received suggestions from customers to offer larger sizes of the product.

Customer Feedback:
Customers have praised the SuperClean All-Purpose Cleaner for its effectiveness on a variety of surfaces and stains, including grease, grime, and pet stains. However, some customers have noted that the product has a strong odor, which we will work to address in future versions. Additionally, some customers have requested more information about the ingredients in the product and its environmental impact, which we will provide on our website and packaging.

Competitive Analysis:
In our analysis of the market, we have found that the SuperClean All-Purpose Cleaner is competitive with similar products in terms of effectiveness and eco-friendliness. However, we have identified some opportunities for differentiation, such as offering a wider range of scents or partnering with eco-friendly organizations to promote the product.

Conclusion:
Overall, the SuperClean All-Purpose Cleaner has performed well in its first three months on the market. While sales growth has been moderate, we have received positive feedback from customers and have identified areas for improvement. We will continue to refine the product based on customer feedback and market trends to ensure that the SuperClean All-Purpose Cleaner remains competitive in the household cleaning market.');

CREATE TABLE IF NOT EXISTS Categories
(
    Cat_Name    varchar(50),
    Category_ID INTEGER AUTO_INCREMENT,
    PRIMARY KEY (Category_ID),
    INDEX idx_Category_ID (Category_ID)
);

INSERT INTO Categories
VALUES ('Clothing', 1);
INSERT INTO Categories
VALUES ('Electronics', 2);

CREATE TABLE IF NOT EXISTS Client_Products
(
    CP_Name        varchar(50),
    Unit_Price     DECIMAL(5, 2) NOT NULL,
    Product_ID     INTEGER AUTO_INCREMENT,
    Category_ID    INTEGER       NOT NULL,
    Curr_Client_ID INTEGER       NOT NULL,
    PRIMARY KEY (Curr_Client_ID, Product_ID),
    CONSTRAINT fk_34
        FOREIGN KEY (Category_ID) REFERENCES Categories (Category_ID) ON DELETE restrict,
    CONSTRAINT fk_35
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE cascade,
    INDEX idx_Curr_Client_ID (Curr_Client_ID),
    INDEX idx_Product_ID (Product_ID)
);

INSERT INTO Client_Products
VALUES ('Levis 501 Original Fit Jeans', 50.00, 1, 1, 1);
INSERT INTO Client_Products
VALUES ('Apple iPhone 13', 500.00, 2, 2, 2);

CREATE TABLE IF NOT EXISTS Orders
(
    O_Customer_ID INTEGER,
    O_Order_ID    INTEGER AUTO_INCREMENT,
    Service_ID    INTEGER NOT NULL,
    App_ID        INTEGER NOT NULL,
    PRIMARY KEY (O_Order_ID),
    CONSTRAINT fk_36
        FOREIGN KEY (Service_ID) REFERENCES Application (Service_ID) ON DELETE restrict,
    CONSTRAINT fk_37
        FOREIGN KEY (App_ID) REFERENCES Application (App_ID) ON DELETE restrict,
    INDEX idx_O_Order_ID (O_Order_ID)
);

INSERT INTO Orders
VALUES (1, 1, 1, 1);
INSERT INTO Orders
VALUES (2, 2, 1, 2);

CREATE TABLE IF NOT EXISTS Order_Details
(
    Quantity    INTEGER,
    Discount    DECIMAL(4, 2),
    Unit_Price  DECIMAL(5, 2) NOT NULL,
    OD_Order_ID INTEGER AUTO_INCREMENT,
    O_Order_ID  INTEGER       NOT NULL,
    PRIMARY KEY (OD_Order_ID),
    CONSTRAINT fk_38
        FOREIGN KEY (O_Order_ID) REFERENCES Orders (O_Order_ID) ON DELETE restrict,
    INDEX idx_OD_Order_ID (OD_Order_ID)
);

INSERT INTO Order_Details
VALUES (10, 50.00, 200.00, 1, 1);
INSERT INTO Order_Details
VALUES (3, 25.00, 300.00, 2, 2);

CREATE TABLE IF NOT EXISTS Client_Order
(
    Curr_Client_ID INTEGER NOT NULL,
    Product_ID     INTEGER NOT NULL,
    OD_Order_ID    INTEGER NOT NULL,
    CONSTRAINT fk_39
        FOREIGN KEY (Curr_Client_ID) REFERENCES Client_Products (Curr_Client_ID) ON DELETE cascade,
    CONSTRAINT fk_40
        FOREIGN KEY (Product_ID) REFERENCES Client_Products (Product_ID) ON DELETE cascade,
    CONSTRAINT fk_41
        FOREIGN KEY (OD_Order_ID) REFERENCES Order_Details (OD_Order_ID) ON DELETE cascade
);

INSERT INTO Client_Order
VALUES (1, 1, 1);
INSERT INTO Client_Order
VALUES (2, 2, 2);

CREATE TABLE IF NOT EXISTS Customer_Information
(
    Address        varchar(50) NOT NULL,
    Phone          varchar(50) NOT NULL,
    Contact_Title  varchar(50),
    First_Name     varchar(50) NOT NULL,
    Last_Name      varchar(50) NOT NULL,
    Demographics   varchar(50) NOT NULL,
    CI_Customer_ID INTEGER AUTO_INCREMENT,
    O_Order_ID     INTEGER     NOT NULL,
    PRIMARY KEY (O_Order_ID, CI_Customer_ID),
    CONSTRAINT fk_42
        FOREIGN KEY (O_Order_ID) REFERENCES Orders (O_Order_ID) ON DELETE restrict,
    UNIQUE INDEX idx_Phone (Phone),
    INDEX idx_O_Order_ID (O_Order_ID),
    INDEX idx_CI_Customer_ID (CI_Customer_ID)
);

INSERT INTO Customer_Information
VALUES ('4326 Hilltop St', '444-444-4444', 'Mr.', 'John', 'Rachlin', '40 years old, Male, White', 1, 1);
INSERT INTO Customer_Information
VALUES ('1872 Maple Avenue', '555-555-5555', 'Ms.', 'Nikki', 'Weickum', '30 years old, Female, White', 2, 2);

#DROP DATABASE segmentify;