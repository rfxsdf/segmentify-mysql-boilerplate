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

INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Business Development',6650)
,(3104705100,'Creative Services',6651)
,(3104705100,'Customer Service',6652);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Accounting',6653)
,(3104705100,'Human Resources',6654)
,(3104705100,'Legal',6655);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Operations',6656)
,(3104705100,'Production',6657)
,(3104705100,'Risk Management',6658);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Marketing',6659)
,(3104705100,'Sales',6660)
,(3104705100,'Technology',6661);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'General Management',6662)
,(3104705100,'Engineering',6663)
,(3104705100,'Investor Relations',6664);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Product Management',6665)
,(3104705100,'Quality Assurance',6666)
,(3104705100,'Strategic Initiatives & Programs',6667);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Board of Directors',6668)
,(3104705100,'Research and Development',6669)
,(3104705100,'Training',6670);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Support',6671)
,(3104705100,'Asset Management',6672)
,(3104705100,'Project Management',6673);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'IT',6674)
,(3104705100,'Social Media',6675)
,(3104705100,'Client Relations Management',6676);
INSERT INTO Departments(Company_ID,Dept_Name,Dept_Number) VALUES
 (3104705100,'Corporate Communications',6677)
,(3104705100,'Sourcing',6678)
,(3104705100,'Inspection',6679);


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

INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Business Development',6650,3104705100,'Springfield')
,('Creative Services',6651,3104705100,'Springfield')
,('Customer Service',6652,3104705100,'Springfield')
,('Accounting',6653,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Human Resources',6654,3104705100,'Springfield')
,('Legal',6655,3104705100,'Springfield')
,('Operations',6656,3104705100,'Springfield')
,('Production',6657,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Risk Management',6658,3104705100,'Springfield')
,('Marketing',6659,3104705100,'Springfield')
,('Sales',6660,3104705100,'Springfield')
,('Technology',6661,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('General Management',6662,3104705100,'Springfield')
,('Engineering',6663,3104705100,'Springfield')
,('Investor Relations',6664,3104705100,'Springfield')
,('Product Management',6665,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Quality Assurance',6666,3104705100,'Springfield')
,('Strategic Initiatives & Programs',6667,3104705100,'Springfield')
,('Board of Directors',6668,3104705100,'Springfield')
,('Research and Development',6669,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Training',6670,3104705100,'Springfield')
,('Support',6671,3104705100,'Springfield')
,('Asset Management',6672,3104705100,'Springfield')
,('Project Management',6673,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('IT',6674,3104705100,'Springfield')
,('Social Media',6675,3104705100,'Springfield')
,('Client Relations Management',6676,3104705100,'Springfield')
,('Corporate Communications',6677,3104705100,'Springfield');
INSERT INTO Dept_Locs(Dept_Name,Dept_Number,Company_ID,Location) VALUES
 ('Sourcing',6678,3104705100,'Springfield')
,('Inspection',6679,3104705100,'Springfield');


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

INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (230,580,'Carson Delue','Male','vulputate nonummy')
,(231,581,'Tobye Ida','Female','at')
,(232,582,'Merrill Halsall','Male','dis parturient')
,(233,583,'Winslow Negro','Male','proin')
,(234,584,'Steward Eckersley','Male','et magnis');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (235,585,'Ham Valentinuzzi','Male','nulla tellus')
,(236,586,'Rouvin Henner','Male','lectus vestibulum')
,(237,587,'Miner Dohmer','Male','turpis elementum')
,(238,588,'Barclay Bernakiewicz','Male','suspendisse')
,(239,589,'Lowe Faltin','Agender','donec');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (240,590,'Fanni Houchin','Female','ante ipsum')
,(241,591,'Caleb Marlin','Male','in')
,(242,592,'Katharina Pryke','Female','in libero')
,(243,593,'Galina Jerrand','Non-binary','faucibus cursus')
,(244,594,'Tome Bathowe','Male','duis');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (245,595,'Ramsey Jedrychowski','Male','in')
,(246,596,'Ranee Verne','Female','nisl duis')
,(247,597,'Reg Forlonge','Male','tellus')
,(248,598,'Emile Douche','Genderfluid','nulla')
,(249,599,'Farica Grouvel','Female','congue');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (250,600,'Lucia Hadye','Female','pellentesque at')
,(251,601,'Lance Willis','Male','sed')
,(252,602,'Alley Spikings','Male','pretium')
,(253,603,'Cordy Santori','Female','integer tincidunt')
,(254,604,'Ursala Hemeret','Female','erat volutpat');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (255,605,'Inez Alexander','Female','id')
,(256,606,'Lilli Schermick','Genderfluid','duis')
,(257,607,'Glenn Lepick','Genderfluid','pede malesuada')
,(258,608,'Delly Iacovini','Female','nunc')
,(259,609,'Auroora MacSorley','Female','ut tellus');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (260,610,'Sarina Sowden','Female','cubilia curae')
,(261,611,'Mollee Krolik','Female','est')
,(262,612,'Marabel Collishaw','Non-binary','massa')
,(263,613,'Oralie Give','Female','in est')
,(264,614,'Risa Troman','Female','posuere cubilia');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (265,615,'Felike Garcia','Bigender','libero')
,(266,616,'Tadeas Russo','Male','fusce')
,(267,617,'Drusi Geake','Female','elit')
,(268,618,'Phillis Cruse','Genderfluid','consequat metus')
,(269,619,'Zeb Hourihan','Non-binary','felis');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (270,620,'Quinton Hamblen','Male','nibh')
,(271,621,'Rolando Rigney','Male','quis libero')
,(272,622,'Brannon McKeefry','Male','ultrices posuere')
,(273,623,'Gunner McLeman','Male','potenti nullam')
,(274,624,'Estelle Gravenell','Female','orci');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (275,625,'Mari Frodsham','Female','pellentesque at')
,(276,626,'Zsa zsa D''Adda','Female','cubilia')
,(277,627,'Fabio Klemke','Male','at')
,(278,628,'Oliviero Tebbutt','Male','at turpis')
,(279,629,'Mozes Pankhurst.','Male','molestie');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (280,630,'Angele Patience','Genderqueer','at velit')
,(281,631,'Sheff Marran','Male','lacus')
,(282,632,'Geno Murrey','Male','mauris ullamcorper')
,(283,633,'Martainn Downgate','Polygender','nunc viverra')
,(284,634,'Gusta Couroy','Female','ante');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (285,635,'Roze Thunnercliff','Female','id ornare')
,(286,636,'Trace Wibberley','Polygender','eu')
,(287,637,'Kaiser Karpman','Male','at diam')
,(288,638,'Obediah Rowantree','Male','cubilia curae')
,(289,639,'Gilemette Craw','Agender','at nulla');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (290,640,'Chas Bissatt','Male','integer')
,(291,641,'Amber Davisson','Female','rhoncus')
,(292,642,'Horst O''Feeny','Male','mattis nibh')
,(293,643,'Wilek Reape','Male','duis')
,(294,644,'Melamie Freshwater','Female','semper');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (295,645,'Kelsey Learmond','Female','tincidunt')
,(296,646,'Whitby Reasce','Male','ipsum dolor')
,(297,647,'Chane Putten','Male','ac leo')
,(298,648,'Brooke Mardall','Polygender','a')
,(299,649,'Brander Veneur','Male','vitae');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (300,650,'Frederic Caunce','Male','vestibulum')
,(301,651,'Silvano Pickworth','Genderfluid','felis sed')
,(302,652,'Haze Crichley','Male','habitasse')
,(303,653,'Auberon Albasiny','Male','sed vel')
,(304,654,'Witty Dunne','Male','cum sociis');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (305,655,'Aldon McGrady','Bigender','odio in')
,(306,656,'Egon Wraggs','Male','sapien')
,(307,657,'Von Pawling','Male','pede')
,(308,658,'Corrianne Fullom','Female','magna')
,(309,659,'Yank Ionnisian','Male','diam vitae');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (310,660,'David Davey','Male','feugiat et')
,(311,661,'Jerrie Bemand','Female','at dolor')
,(312,662,'Toby House','Male','mauris non')
,(313,663,'Yancey Bradburn','Male','interdum venenatis')
,(314,664,'Benson Yakubowicz','Male','dignissim vestibulum');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (315,665,'Mathilde Le Provest','Female','turpis nec')
,(316,666,'Dalston Vittel','Male','quisque id')
,(317,667,'Flynn Willshee','Male','tincidunt')
,(318,668,'Elvyn Roskrug','Male','felis sed')
,(319,669,'Tommy Kelway','Female','congue etiam');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (320,670,'Rania Haugeh','Female','augue')
,(321,671,'Vergil Brownlea','Male','libero quis')
,(322,672,'Kaleb Capelle','Male','quam')
,(323,673,'Ches Umpleby','Male','magna vestibulum')
,(324,674,'Knox Ferraro','Male','augue');
INSERT INTO Dependents(Int_Emp_ID,Depend_Number,Depend_Name,Gender,Relationship) VALUES
 (325,675,'Alejandrina Schiefersten','Female','odio')
,(326,676,'Hildagarde Wringe','Female','curabitur convallis')
,(327,677,'Jarrod Tolworth','Male','pulvinar')
,(328,678,'Carmon Farrow','Female','ultrices')
,(329,679,'Moe Uttridge','Male','id');


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

INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Maria Bridges','Oyope','Mr','139 Sauthoff Court','+356 (863) 194-6805','+966 (966) 654-3311','neque sapien placerat ante nulla justo aliquam quis turpis',9134530606,230,9467661993,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Latisha Bond','Riffpedia','Mr','13 Maywood Parkway','+93 (120) 131-9772','+86 (450) 332-3026','ac lobortis vel dapibus at diam nam',1262586062,231,7468186278,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
,('Brendon Sculpher','Omba','Mrs','619 Kipling Pass','+216 (477) 289-7024','+62 (742) 162-7711','porttitor pede justo eu massa donec dapibus duis at velit',7370314812,232,6664649489,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.')
,('Ulrick Leuren','Vinte','Rev','8515 Maple Wood Center','+86 (207) 402-9457','+63 (898) 290-7022','maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices',4087716309,233,9429212265,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
,('Isidoro Jeffs','Dabfeed','Mrs','108 Daystar Way','+30 (768) 734-6206','+62 (320) 281-0793','vel sem sed sagittis nam congue risus semper',4955806457,234,775550353,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('Nalani Theodoris','Devcast','Ms','46306 Sloan Crossing','+7 (167) 551-6457','+233 (887) 483-1832','blandit nam nulla integer pede justo',8582387245,235,1265294704,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.')
,('Margaret Whybrow','Thoughtsphere','Ms','00174 Texas Parkway','+57 (778) 824-8510','+62 (702) 238-6699','tortor risus dapibus augue vel accumsan tellus nisi eu',4084794120,236,9078229721,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.')
,('Timmy Shemilt','Omba','Rev','15 Packers Hill','+63 (780) 436-9012','+63 (800) 139-0065','quam pede lobortis ligula sit amet eleifend pede libero quis',2099173958,237,4788639181,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
,('Janis Statton','Devpoint','Ms','81390 Eastwood Court','+57 (166) 209-2705','+51 (443) 244-9724','interdum venenatis turpis enim blandit mi',8231266844,238,267345917,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.')
,('Niko Ferrey','Feedmix','Rev','73 5th Center','+84 (498) 733-6303','+33 (681) 429-7327','aenean fermentum donec ut mauris eget',2798444527,239,6895570020,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Rosalie Shickle','Dabtype','Ms','0198 Burrows Trail','+63 (766) 836-3285','+81 (773) 528-7768','curabitur gravida nisi at nibh in',4752739259,240,5342435234,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Anni Moret','Topdrive','Mr','22 Marquette Junction','+86 (223) 661-8580','+381 (832) 449-7577','nulla facilisi cras non velit nec nisi vulputate nonummy',3666413048,241,2104432235,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.')
,('Coriss Crathorne','Fliptune','Mr','431 Hansons Junction','+236 (233) 144-2141','+351 (628) 877-4253','pede venenatis non sodales sed tincidunt eu',9821053580,242,3654911803,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Gerrilee Kaley','Zooxo','Rev','26 Bellgrove Hill','+595 (265) 327-7481','+51 (916) 529-8370','in quis justo maecenas rhoncus',5803701521,243,4587202983,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Benito Cretney','Yoveo','Ms','93914 Melody Center','+56 (306) 923-1354','+351 (156) 581-8378','cubilia curae nulla dapibus dolor vel est donec odio justo',9528989446,244,1292725192,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Elonore Lennox','Voonder','Rev','3 Autumn Leaf Drive','+82 (878) 877-8484','+62 (639) 989-1074','lectus aliquam sit amet diam',5401776284,245,1836055536,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
,('Alisun Feechum','Cogidoo','Mr','8 Victoria Point','+1 (575) 432-6718','+62 (996) 681-4816','id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum',9388551869,246,4900207969,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.')
,('Donalt Ivasyushkin','Skynoodle','Dr','5 Morningstar Circle','+967 (934) 725-7514','+86 (352) 156-6661','amet sapien dignissim vestibulum vestibulum ante',7503367997,247,4762453366,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.')
,('Charlotta Milley','Jabbersphere','Dr','84329 Glendale Alley','+62 (382) 970-3934','+62 (919) 437-6737','suspendisse potenti in eleifend quam',8292934057,248,280881169,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
,('Monro Ayce','Realblab','Honorable','3 Mariners Cove Hill','+1 (803) 723-4994','+53 (392) 619-2085','eget semper rutrum nulla nunc purus',7814993946,249,6743546569,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.')
,('Joell Bigby','Feedmix','Rev','0358 Weeping Birch Junction','+82 (687) 654-2219','+507 (812) 828-5367','ac lobortis vel dapibus at',1590499735,250,9691562529,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Wade Jeayes','Topicblab','Rev','73094 Glendale Drive','+7 (816) 577-8630','+63 (268) 586-3620','orci pede venenatis non sodales sed tincidunt eu felis',3954047861,251,934193630,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Avigdor Wenderott','Riffwire','Honorable','4 Algoma Lane','+47 (447) 600-2646','+46 (191) 763-9594','id luctus nec molestie sed',6091179942,252,6969232263,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Donia Kennington','Skippad','Mr','059 Havey Way','+86 (988) 125-0698','+33 (371) 213-3620','ac neque duis bibendum morbi non quam',9735432668,253,9874873604,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.')
,('Ethe Dyerson','Kamba','Mr','55333 Homewood Parkway','+63 (823) 737-3692','+86 (981) 948-1485','ligula suspendisse ornare consequat lectus',217680364,254,4133836626,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.')
,('Pedro Smees','Zoomdog','Honorable','03 Nevada Alley','+48 (720) 342-3436','+62 (398) 655-9992','nec euismod scelerisque quam turpis adipiscing lorem vitae',2392670897,255,5884506260,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
,('Gale Crellin','Mybuzz','Mr','3 Drewry Circle','+92 (760) 703-4030','+7 (732) 309-5420','ac tellus semper interdum mauris ullamcorper purus',9415969504,256,920935192,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
,('Wilhelmine Koubu','Jaxbean','Mr','79 Waywood Terrace','+86 (321) 781-8401','+51 (657) 156-5335','in tempus sit amet sem fusce consequat nulla nisl nunc',4912704458,257,9516262457,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.')
,('Kai Dewey','Rhynoodle','Ms','4635 Fuller Trail','+63 (972) 877-5897','+86 (326) 992-7882','diam vitae quam suspendisse potenti nullam porttitor',4914419610,258,5128406008,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.')
,('Haily Philot','Wikizz','Rev','4674 Vermont Street','+351 (789) 646-9587','+55 (471) 320-1663','blandit ultrices enim lorem ipsum dolor sit amet consectetuer',5408867110,259,1469214873,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.')
,('Roselin Blunkett','Yozio','Ms','62380 Oriole Junction','+86 (302) 985-1039','+33 (509) 852-5006','sagittis nam congue risus semper porta',4595879032,260,9572590979,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.')
,('Cletus Grassett','Twitterbeat','Dr','5555 Manitowish Pass','+57 (641) 485-6332','+86 (296) 837-4391','sit amet sem fusce consequat nulla',1386755222,261,617541159,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
,('Pru Mussetti','Feedfish','Ms','28682 Del Sol Parkway','+86 (126) 661-8229','+86 (954) 320-0330','dapibus augue vel accumsan tellus',5437962347,262,8710416889,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Wye Halfhyde','Jatri','Mr','900 Magdeline Plaza','+237 (756) 979-1959','+63 (809) 156-3562','aliquam lacus morbi quis tortor id nulla ultrices',7333417514,263,7923583056,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.')
,('Jeremie Vela','Gabcube','Rev','4 Lakewood Gardens Lane','+1 (863) 839-9921','+86 (209) 467-5900','eget elit sodales scelerisque mauris sit amet',4883319008,264,2641745550,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
,('Emile Marton','Twimm','Mrs','8576 Fairview Avenue','+86 (883) 286-6255','+48 (690) 544-0991','at diam nam tristique tortor eu pede',7614794109,265,9187020556,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.')
,('Tammi Kildea','Katz','Honorable','4072 Northport Center','+66 (901) 277-5596','+86 (621) 332-4751','orci nullam molestie nibh in lectus pellentesque',8023036165,266,2688993151,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.')
,('Renelle Scullin','Skimia','Rev','29479 Magdeline Terrace','+93 (857) 156-6518','+55 (390) 869-6665','blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing',3015197401,267,3845496061,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.')
,('Gwendolin Frear','Twitterwire','Rev','4 Loftsgordon Avenue','+63 (984) 283-8177','+387 (297) 157-3591','integer a nibh in quis justo maecenas',1748122282,268,9064744149,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.')
,('Alberik Smidmor','Gigashots','Dr','8 Arrowood Parkway','+86 (128) 862-8920','+98 (597) 126-8440','sed vel enim sit amet',8952458613,269,7561109407,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.')
,('Boycie Lemmon','Jabbertype','Rev','0 Veith Alley','+351 (615) 929-9495','+1 (817) 590-5618','leo rhoncus sed vestibulum sit amet cursus id turpis integer',9007550101,270,2149725401,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.')
,('Harlan Claiden','Tazz','Dr','263 Rutledge Court','+86 (938) 545-7870','+86 (129) 810-3167','ultrices enim lorem ipsum dolor sit amet consectetuer',9350940434,271,4822461327,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('Freeland Gerdes','Kwinu','Honorable','339 Rockefeller Park','+386 (180) 868-4988','+81 (506) 407-2722','volutpat dui maecenas tristique est',4527553127,272,9652783064,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Lonee Harm','Browsecat','Dr','7728 Golf View Trail','+55 (554) 420-2438','+84 (104) 746-4049','quis turpis sed ante vivamus tortor duis',1214596819,273,6477074524,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Maximilianus Tow','Kamba','Dr','426 Main Drive','+86 (242) 640-5005','+86 (972) 997-6662','cursus vestibulum proin eu mi nulla ac',9415046937,274,7666795068,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.')
,('Briny Jordan','Topiczoom','Mrs','6 Portage Avenue','+7 (833) 338-5716','+7 (714) 176-1660','nibh in lectus pellentesque at nulla suspendisse potenti',4667311177,275,1958031631,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.')
,('Keelia Rocco','Meetz','Ms','2 Redwing Center','+220 (578) 176-9039','+48 (587) 839-6755','orci luctus et ultrices posuere cubilia curae',508979900,276,5330803322,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Jena Galletley','Eabox','Honorable','140 Grim Point','+351 (532) 889-5743','+51 (272) 995-4699','molestie nibh in lectus pellentesque at nulla',8724468223,277,316160024,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.')
,('Nani Pelham','Linktype','Honorable','16295 Farwell Pass','+60 (216) 718-9219','+63 (122) 874-9040','fermentum justo nec condimentum neque sapien placerat ante nulla justo',7963915467,278,8914181707,'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.')
,('Candace Morgue','Geba','Rev','6 Lerdahl Avenue','+357 (491) 276-0246','+7 (542) 884-4005','donec vitae nisi nam ultrices libero non mattis pulvinar nulla',277005736,279,700120343,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.')
,('Doloritas St Ange','Fivespan','Mrs','8 Eggendart Plaza','+351 (821) 853-4028','+58 (501) 873-3555','condimentum neque sapien placerat ante',4637651980,280,1103865749,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Zachery Berford','Skalith','Ms','5389 School Place','+62 (214) 855-8846','+7 (821) 663-8669','id nulla ultrices aliquet maecenas leo odio',8670682494,281,124599532,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
,('Silvia Roote','Chatterpoint','Rev','7885 Starling Drive','+81 (532) 942-0129','+234 (431) 240-9366','nulla justo aliquam quis turpis',9161831352,282,8457926322,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.')
,('Gordy Varey','Topicblab','Mr','9 Farmco Junction','+55 (362) 944-6583','+46 (659) 341-1227','et magnis dis parturient montes nascetur ridiculus mus',2734533901,283,3882304685,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
,('Danica Turrell','Skalith','Mr','9 Randy Drive','+358 (737) 445-3991','+98 (558) 657-0636','in est risus auctor sed tristique',388601647,284,9572221698,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Riordan Jakeway','Flipstorm','Ms','65043 Del Mar Alley','+62 (826) 469-5051','+81 (275) 111-1298','morbi porttitor lorem id ligula suspendisse ornare consequat lectus',2292441756,285,7287503204,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Rafaelita Babin','Realcube','Honorable','8237 Claremont Park','+86 (344) 169-4621','+81 (260) 640-4700','aliquet pulvinar sed nisl nunc rhoncus dui vel',3945013690,286,4985292400,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.')
,('Tony Crewes','Jaloo','Rev','57968 Schiller Junction','+63 (927) 740-8958','+992 (615) 549-9208','orci luctus et ultrices posuere cubilia curae mauris viverra diam',6875380668,287,3288442019,'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.')
,('Panchito Hendriksen','Twiyo','Ms','13572 Bellgrove Junction','+62 (604) 133-3784','+1 (773) 605-5594','arcu libero rutrum ac lobortis vel',4506509951,288,667453369,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
,('Janaya Crandon','Oozz','Ms','46591 Cardinal Alley','+420 (815) 983-9740','+86 (906) 688-8733','auctor gravida sem praesent id massa id nisl venenatis lacinia',9316935113,289,4018821344,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.')
,('Mano Wheatcroft','Realcube','Dr','48040 Bobwhite Circle','+236 (874) 923-1849','+7 (698) 820-4296','amet sem fusce consequat nulla nisl nunc nisl',1581184158,290,7330047384,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Edee Roma','Zoonoodle','Rev','452 Mcbride Drive','+86 (582) 526-9744','+86 (396) 389-4026','quam turpis adipiscing lorem vitae mattis nibh ligula',8357805604,291,8533194579,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.')
,('Katey Molen','Linkbridge','Rev','14 Lerdahl Way','+63 (664) 767-9052','+33 (270) 489-3642','condimentum id luctus nec molestie sed justo pellentesque viverra pede',1562579835,292,6418489780,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.')
,('Linzy Josskoviz','Aimbo','Dr','33 Butterfield Junction','+30 (282) 661-5577','+57 (615) 271-9916','aliquam erat volutpat in congue etiam justo etiam',8686869378,293,994431473,'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Ealasaid Buckeridge','Zoomlounge','Dr','43 Little Fleur Crossing','+86 (531) 283-3182','+375 (422) 869-1990','massa quis augue luctus tincidunt nulla mollis',6296947844,294,7729088584,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.')
,('Anatole Cockburn','Demivee','Mrs','8400 Monica Street','+86 (455) 730-6109','+55 (382) 722-8715','sapien varius ut blandit non interdum in ante vestibulum',9169393893,295,9148178551,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Emelia Kingswood','Realfire','Dr','5 Dwight Junction','+44 (938) 687-4181','+7 (248) 221-1405','bibendum felis sed interdum venenatis',1092440208,296,1422982750,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.')
,('Demetris Artist','Tambee','Dr','2280 Service Street','+420 (955) 184-4944','+374 (244) 885-7222','odio cras mi pede malesuada in imperdiet et commodo',6018780747,297,2681670667,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.')
,('Polly Stammers','Photolist','Mr','28 Farmco Circle','+963 (926) 588-5027','+33 (209) 110-1243','ligula vehicula consequat morbi a',5200476968,298,9740901948,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.')
,('Wallas Piscopo','Skyble','Mr','56973 Continental Terrace','+63 (955) 437-6570','+86 (533) 676-2754','ultrices mattis odio donec vitae nisi nam ultrices libero non',8540115174,299,6639733382,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.')
,('Rutherford Doudney','Realpoint','Dr','8239 Meadow Ridge Way','+55 (602) 248-7630','+55 (275) 317-7220','nulla facilisi cras non velit nec nisi vulputate nonummy maecenas',9541545106,300,1283710765,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Quentin Egger','Realblab','Rev','0768 Meadow Ridge Road','+380 (743) 276-4648','+502 (645) 298-3686','nonummy maecenas tincidunt lacus at',2744231037,301,1834508770,'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.')
,('Annora Turfitt','Brainsphere','Mr','5277 Hooker Plaza','+975 (279) 557-0982','+351 (212) 484-1556','a libero nam dui proin leo odio porttitor id',1382306547,302,8510683441,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.')
,('Ddene Benoiton','Yabox','Dr','46 Elka Terrace','+86 (338) 609-3517','+380 (581) 847-7532','turpis integer aliquet massa id lobortis convallis tortor risus',4079076924,303,1034074180,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.')
,('Anallise Rennebeck','Babbleblab','Mr','41738 Merry Terrace','+46 (694) 498-1191','+7 (115) 954-1204','curabitur gravida nisi at nibh in hac habitasse platea',9266006475,304,3129976000,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.')
,('Aubry Feckey','Skipfire','Mr','25084 American Ash Lane','+81 (684) 511-9184','+380 (542) 824-3638','augue vestibulum rutrum rutrum neque',5057944991,305,6086726213,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.')
,('Jenny Almon','Browsedrive','Mrs','89 Debra Drive','+57 (748) 600-9050','+48 (298) 252-3787','at nunc commodo placerat praesent blandit nam nulla',6949584326,306,1708061614,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Brear Rubinov','Zoovu','Dr','82120 Sullivan Avenue','+63 (288) 977-2895','+81 (722) 573-6200','orci luctus et ultrices posuere cubilia curae',9176126927,307,9044477420,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.')
,('Trixie Pavelka','Feedfish','Mr','44 Kingsford Parkway','+358 (579) 498-1026','+95 (543) 962-5546','elit proin risus praesent lectus',5372970898,308,7968983878,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Wildon Digby','Jaxspan','Mrs','5 Kinsman Drive','+380 (615) 979-6494','+86 (558) 260-0559','purus sit amet nulla quisque arcu libero rutrum',597726647,309,4126237259,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.')
,('Sianna Sanbroke','Omba','Honorable','70865 Division Circle','+55 (674) 610-0953','+63 (264) 912-8257','ut massa quis augue luctus tincidunt nulla mollis molestie lorem',2136848577,310,6354571686,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Kacey Bodham','Youspan','Mr','26 Browning Park','+62 (313) 135-1311','+86 (573) 798-1012','aliquam sit amet diam in magna bibendum imperdiet nullam orci',9359370029,311,2999813961,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.')
,('Hayden Kennifeck','Lazz','Mr','086 Heffernan Point','+1 (817) 322-2963','+233 (366) 173-9750','ut erat curabitur gravida nisi at',9356820821,312,4973144177,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.')
,('Morly Leroux','Plajo','Ms','69463 Cody Trail','+48 (519) 238-2801','+385 (987) 218-2103','arcu libero rutrum ac lobortis vel dapibus at diam nam',2937442161,313,2986648800,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
,('Willdon Suffield','Eare','Mrs','024 Tomscot Way','+62 (580) 167-7952','+7 (338) 983-9140','est et tempus semper est quam pharetra magna ac',5210102513,314,7255363261,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.')
,('Susan Dilland','Jetpulse','Honorable','62902 Fairview Park','+351 (694) 518-2682','+62 (368) 363-5465','lectus in quam fringilla rhoncus mauris enim',3457946647,315,5372592028,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Klemens Pickard','Voonix','Honorable','5516 Knutson Place','+33 (716) 885-4752','+7 (487) 695-9475','dolor sit amet consectetuer adipiscing elit proin',5158698260,316,7932134218,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Kendricks Dimmock','Flashpoint','Mr','9686 Norway Maple Lane','+7 (383) 247-9985','+62 (158) 958-0037','consequat lectus in est risus',2772874214,317,6803107973,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Clari Siely','Centizu','Mrs','20853 Del Sol Circle','+234 (323) 135-6836','+55 (956) 367-3415','amet consectetuer adipiscing elit proin interdum mauris non',8909369256,318,4379265374,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Bil Breitling','Browsetype','Ms','02163 Canary Park','+51 (514) 549-8202','+55 (471) 603-9652','interdum mauris ullamcorper purus sit amet nulla quisque',4568671914,319,1277412774,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
,('Pansy Tocqueville','Voonix','Mrs','70 International Lane','+86 (848) 813-5563','+86 (317) 604-5800','risus auctor sed tristique in',4690768943,320,1028829108,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Wendell Theis','Browsecat','Mrs','2 Gerald Court','+1 (599) 497-5328','+62 (950) 856-9448','tortor quis turpis sed ante vivamus tortor duis mattis egestas',8312003495,321,2482304504,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
,('Erina Merrigan','Kimia','Ms','41 Porter Pass','+232 (336) 814-9781','+1 (571) 505-9029','velit donec diam neque vestibulum eget vulputate ut',6534568802,322,724605517,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Jake Jaggers','Brainlounge','Mr','12424 Hanover Hill','+86 (592) 504-7278','+7 (910) 985-9012','aenean fermentum donec ut mauris eget massa tempor convallis nulla',822259613,323,8189098039,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
,('Ransom Tetford','Lajo','Dr','69620 Canary Circle','+62 (262) 339-4268','+86 (354) 120-6142','in hac habitasse platea dictumst maecenas',2290534536,324,8285427528,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.')
,('Kyrstin Sinkinson','Skinix','Mrs','15472 Leroy Circle','+86 (360) 945-4001','+218 (138) 275-5295','ornare consequat lectus in est risus auctor sed',3201643394,325,3421413339,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.')
,('Cassaundra Boler','Vinder','Honorable','66753 Tomscot Center','+63 (582) 722-9683','+86 (519) 648-9003','in faucibus orci luctus et ultrices posuere cubilia curae donec',9298565526,326,723021244,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Julius Sarfati','Zoomzone','Dr','748 Maple Wood Street','+7 (815) 702-9573','+385 (954) 127-0148','rutrum rutrum neque aenean auctor gravida',390345164,327,186753888,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
,('Lilah Meriot','Abata','Honorable','31 Continental Crossing','+7 (312) 462-6685','+86 (404) 791-6561','morbi a ipsum integer a nibh in',4996464089,328,8674939457,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO Current_Clients(Contact_Name,Company_Name,Contact_Title,Headquarter_Address,Phone,Fax,Demographics,Client_Company_ID,Int_Emp_ID,Curr_Client_ID,Reports) VALUES
 ('Vivia Ternault','Linkbridge','Rev','73032 Darwin Pass','+66 (945) 688-9020','+355 (715) 466-2349','parturient montes nascetur ridiculus mus',115318763,329,5810139965,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');


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

INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (9467661993,9134530606,4976560562,3104705100)
,(7468186278,1262586062,2146349026,3104705100)
,(6664649489,7370314812,7034880573,3104705100)
,(9429212265,4087716309,4451940362,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (775550353,4955806457,8465821836,3104705100)
,(1265294704,8582387245,4409227548,3104705100)
,(9078229721,4084794120,4457892300,3104705100)
,(4788639181,2099173958,7815675522,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (267345917,8231266844,2944473921,3104705100)
,(6895570020,2798444527,7064737892,3104705100)
,(5342435234,4752739259,7614860470,3104705100)
,(2104432235,3666413048,8129916800,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (3654911803,9821053580,1658613899,3104705100)
,(4587202983,5803701521,4013436779,3104705100)
,(1292725192,9528989446,9882148395,3104705100)
,(1836055536,5401776284,3564245944,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (4900207969,9388551869,4502083208,3104705100)
,(4762453366,7503367997,5337758691,3104705100)
,(280881169,8292934057,6910897846,3104705100)
,(6743546569,7814993946,3780151359,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (9691562529,1590499735,4550784326,3104705100)
,(934193630,3954047861,8100902534,3104705100)
,(6969232263,6091179942,6455129059,3104705100)
,(9874873604,9735432668,1164397826,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (4133836626,217680364,8235434148,3104705100)
,(5884506260,2392670897,7542145533,3104705100)
,(920935192,9415969504,3383146766,3104705100)
,(9516262457,4912704458,8721613753,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (5128406008,4914419610,9307407150,3104705100)
,(1469214873,5408867110,1827929553,3104705100)
,(9572590979,4595879032,117730785,3104705100)
,(617541159,1386755222,8456321192,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (8710416889,5437962347,5650803048,3104705100)
,(7923583056,7333417514,3446849440,3104705100)
,(2641745550,4883319008,2444085302,3104705100)
,(9187020556,7614794109,1802782729,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (2688993151,8023036165,8077683126,3104705100)
,(3845496061,3015197401,7698644421,3104705100)
,(9064744149,1748122282,2811577637,3104705100)
,(7561109407,8952458613,9317200877,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (2149725401,9007550101,3488885216,3104705100)
,(4822461327,9350940434,8935655813,3104705100)
,(9652783064,4527553127,8960055611,3104705100)
,(6477074524,1214596819,1744090467,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (7666795068,9415046937,3661541358,3104705100)
,(1958031631,4667311177,4747725180,3104705100)
,(5330803322,508979900,8801009348,3104705100)
,(316160024,8724468223,775451037,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (8914181707,7963915467,9855773217,3104705100)
,(700120343,277005736,2632226007,3104705100)
,(1103865749,4637651980,3386324452,3104705100)
,(124599532,8670682494,4828714693,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (8457926322,9161831352,2591101353,3104705100)
,(3882304685,2734533901,5619806669,3104705100)
,(9572221698,388601647,3410679820,3104705100)
,(7287503204,2292441756,2551004403,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (4985292400,3945013690,8857723798,3104705100)
,(3288442019,6875380668,8656946854,3104705100)
,(667453369,4506509951,2085636586,3104705100)
,(4018821344,9316935113,1360092595,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (7330047384,1581184158,5343613470,3104705100)
,(8533194579,8357805604,8891750204,3104705100)
,(6418489780,1562579835,6024378335,3104705100)
,(994431473,8686869378,6338502683,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (7729088584,6296947844,387798374,3104705100)
,(9148178551,9169393893,2025231571,3104705100)
,(1422982750,1092440208,6330678650,3104705100)
,(2681670667,6018780747,9302207226,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (9740901948,5200476968,7127296987,3104705100)
,(6639733382,8540115174,4210828092,3104705100)
,(1283710765,9541545106,5195827346,3104705100)
,(1834508770,2744231037,5335662182,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (8510683441,1382306547,3798597758,3104705100)
,(1034074180,4079076924,7999777080,3104705100)
,(3129976000,9266006475,3117065865,3104705100)
,(6086726213,5057944991,1765264774,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (1708061614,6949584326,6105638507,3104705100)
,(9044477420,9176126927,6387829496,3104705100)
,(7968983878,5372970898,5808687276,3104705100)
,(4126237259,597726647,4398907750,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (6354571686,2136848577,2002703817,3104705100)
,(2999813961,9359370029,1276151012,3104705100)
,(4973144177,9356820821,5110667497,3104705100)
,(2986648800,2937442161,518270165,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (7255363261,5210102513,9873063404,3104705100)
,(5372592028,3457946647,836986644,3104705100)
,(7932134218,5158698260,4940220885,3104705100)
,(6803107973,2772874214,2745897500,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (4379265374,8909369256,2318810168,3104705100)
,(1277412774,4568671914,7807563176,3104705100)
,(1028829108,4690768943,7978270459,3104705100)
,(2482304504,8312003495,1863209514,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (724605517,6534568802,8972845876,3104705100)
,(8189098039,822259613,3173885295,3104705100)
,(8285427528,2290534536,6744558749,3104705100)
,(3421413339,3201643394,9120744218,3104705100);
INSERT INTO Curr_Services(Curr_Client_ID,Client_Company_ID,Service_ID,Serv_Company_ID) VALUES
 (723021244,9298565526,2805336747,3104705100)
,(186753888,390345164,1077756577,3104705100)
,(8674939457,4996464089,9906461233,3104705100)
,(5810139965,115318763,716880148,3104705100);


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

INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (9134530606,9467661993,'Nanga Eboko')
,(1262586062,7468186278,'Rio Branco do Sul')
,(7370314812,6664649489,'Nice');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4087716309,9429212265,'Stockholm')
,(4955806457,775550353,'Nīkshahr')
,(8582387245,1265294704,'Denton');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4084794120,9078229721,'Venado Tuerto')
,(2099173958,4788639181,'Lakateng')
,(8231266844,267345917,'Molodohvardiys’k');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (2798444527,6895570020,'Quimistán')
,(4752739259,5342435234,'Puerto Santander')
,(3666413048,2104432235,'Amparafaravola');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (9821053580,3654911803,'Sopron')
,(5803701521,4587202983,'Dongtai')
,(9528989446,1292725192,'Sutton');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (5401776284,1836055536,'Yabrūd')
,(9388551869,4900207969,'Hengjing')
,(7503367997,4762453366,'Kocēni');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8292934057,280881169,'Lameira')
,(7814993946,6743546569,'Lewopao')
,(1590499735,9691562529,'Umm Şalāl ‘Alī');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (3954047861,934193630,'Bishan')
,(6091179942,6969232263,'Železná Ruda')
,(9735432668,9874873604,'Pacucha');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (217680364,4133836626,'Estrada')
,(2392670897,5884506260,'Terong')
,(9415969504,920935192,'Springfield');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4912704458,9516262457,'Luofang')
,(4914419610,5128406008,'Xin’an')
,(5408867110,1469214873,'Ginowan');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4595879032,9572590979,'Heung-hai')
,(1386755222,617541159,'Nioki')
,(5437962347,8710416889,'Mezhevoy');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (7333417514,7923583056,'Muan')
,(4883319008,2641745550,'Lopandino')
,(7614794109,9187020556,'Xiyang');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8023036165,2688993151,'Iwase')
,(3015197401,3845496061,'Longsha')
,(1748122282,9064744149,'Ijuí');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8952458613,7561109407,'Las Varas')
,(9007550101,2149725401,'Vília')
,(9350940434,4822461327,'Zhushan');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4527553127,9652783064,'Longbu')
,(1214596819,6477074524,'Labuan')
,(9415046937,7666795068,'Trzebiatów');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4667311177,1958031631,'Pshada')
,(508979900,5330803322,'Aral')
,(8724468223,316160024,'Yantian');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (7963915467,8914181707,'Moch')
,(277005736,700120343,'Plereyan')
,(4637651980,1103865749,'Almoínhas Velhas');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8670682494,124599532,'Concepcion')
,(9161831352,8457926322,'Divinópolis')
,(2734533901,3882304685,'Uryupinsk');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (388601647,9572221698,'Rivadavia')
,(2292441756,7287503204,'Mukacheve')
,(3945013690,4985292400,'Quinta do Sobrado');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (6875380668,3288442019,'Ressano Garcia')
,(4506509951,667453369,'Rana')
,(9316935113,4018821344,'Gaoua');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (1581184158,7330047384,'Xiaoguwei')
,(8357805604,8533194579,'Beaufort')
,(1562579835,6418489780,'Vale de Rolas');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8686869378,994431473,'São Fidélis')
,(6296947844,7729088584,'Casalinho')
,(9169393893,9148178551,'Granada');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (1092440208,1422982750,'Raciążek')
,(6018780747,2681670667,'Stamáta')
,(5200476968,9740901948,'Takarazuka');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (8540115174,6639733382,'Beselga')
,(9541545106,1283710765,'Parung')
,(2744231037,1834508770,'Barrio San Luis');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (1382306547,8510683441,'Achoma')
,(4079076924,1034074180,'Picoto')
,(9266006475,3129976000,'Mueang Phuket');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (5057944991,6086726213,'Guapimirim')
,(6949584326,1708061614,'Shixian')
,(9176126927,9044477420,'København');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (5372970898,7968983878,'Santiago de Cuba')
,(597726647,4126237259,'Thika')
,(2136848577,6354571686,'Pingshi');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (9359370029,2999813961,'Uinskoye')
,(9356820821,4973144177,'Aţ Ţafīlah')
,(2937442161,2986648800,'Miyang');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (5210102513,7255363261,'Amersfoort')
,(3457946647,5372592028,'Zhukovka')
,(5158698260,7932134218,'Petaling Jaya');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (2772874214,6803107973,'South River')
,(8909369256,4379265374,'Marale')
,(4568671914,1277412774,'Kulykiv');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (4690768943,1028829108,'Keroak')
,(8312003495,2482304504,'Delareyville')
,(6534568802,724605517,'Veisiejai');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (822259613,8189098039,'Szlachta')
,(2290534536,8285427528,'Kingisepp')
,(3201643394,3421413339,'Uruobo-Okija');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (9298565526,723021244,'Basseterre')
,(390345164,186753888,'Krabi')
,(4996464089,8674939457,'Poręba Spytkowska');
INSERT INTO Curr_Client_Locs(Client_Company_ID,Curr_Client_ID,Location) VALUES
 (115318763,5810139965,'Krajan Timur Mlokorejo');


CREATE TABLE IF NOT EXISTS Comp_Comp
(
    Client_Company_ID INTEGER NOT NULL,
    Curr_Client_ID    INTEGER NOT NULL,
    CONSTRAINT fk_29
        FOREIGN KEY (Client_Company_ID) REFERENCES Current_Clients (Client_Company_ID) ON DELETE cascade,
    CONSTRAINT fk_30
        FOREIGN KEY (Curr_Client_ID) REFERENCES Current_Clients (Curr_Client_ID) ON DELETE cascade
);

    
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9134530606,9467661993)
,(1262586062,7468186278);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (7370314812,6664649489)
,(4087716309,9429212265);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4955806457,775550353)
,(8582387245,1265294704);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4084794120,9078229721)
,(2099173958,4788639181);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (8231266844,267345917)
,(2798444527,6895570020);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4752739259,5342435234)
,(3666413048,2104432235);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9821053580,3654911803)
,(5803701521,4587202983);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9528989446,1292725192)
,(5401776284,1836055536);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9388551869,4900207969)
,(7503367997,4762453366);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (8292934057,280881169)
,(7814993946,6743546569);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1590499735,9691562529)
,(3954047861,934193630);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (6091179942,6969232263)
,(9735432668,9874873604);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (217680364,4133836626)
,(2392670897,5884506260);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9415969504,920935192)
,(4912704458,9516262457);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4914419610,5128406008)
,(5408867110,1469214873);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4595879032,9572590979)
,(1386755222,617541159);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (5437962347,8710416889)
,(7333417514,7923583056);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4883319008,2641745550)
,(7614794109,9187020556);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (8023036165,2688993151)
,(3015197401,3845496061);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1748122282,9064744149)
,(8952458613,7561109407);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9007550101,2149725401)
,(9350940434,4822461327);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4527553127,9652783064)
,(1214596819,6477074524);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9415046937,7666795068)
,(4667311177,1958031631);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (508979900,5330803322)
,(8724468223,316160024);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (7963915467,8914181707)
,(277005736,700120343);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4637651980,1103865749)
,(8670682494,124599532);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9161831352,8457926322)
,(2734533901,3882304685);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (388601647,9572221698)
,(2292441756,7287503204);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (3945013690,4985292400)
,(6875380668,3288442019);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4506509951,667453369)
,(9316935113,4018821344);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1581184158,7330047384)
,(8357805604,8533194579);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1562579835,6418489780)
,(8686869378,994431473);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (6296947844,7729088584)
,(9169393893,9148178551);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1092440208,1422982750)
,(6018780747,2681670667);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (5200476968,9740901948)
,(8540115174,6639733382);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9541545106,1283710765)
,(2744231037,1834508770);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (1382306547,8510683441)
,(4079076924,1034074180);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9266006475,3129976000)
,(5057944991,6086726213);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (6949584326,1708061614)
,(9176126927,9044477420);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (5372970898,7968983878)
,(597726647,4126237259);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (2136848577,6354571686)
,(9359370029,2999813961);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9356820821,4973144177)
,(2937442161,2986648800);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (5210102513,7255363261)
,(3457946647,5372592028);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (5158698260,7932134218)
,(2772874214,6803107973);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (8909369256,4379265374)
,(4568671914,1277412774);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4690768943,1028829108)
,(8312003495,2482304504);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (6534568802,724605517)
,(822259613,8189098039);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (2290534536,8285427528)
,(3201643394,3421413339);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (9298565526,723021244)
,(390345164,186753888);
INSERT INTO Comp_Comp(Client_Company_ID,Curr_Client_ID) VALUES
 (4996464089,8674939457)
,(115318763,5810139965);



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

INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Flexidy','$24,852.71',2104016258,6659,4976560562,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.')
,('Zamit','$35,580.72',6958645839,6659,2146349026,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Holdlamis','$45,628.99',2520047488,6659,7034880573,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
,('Quo Lux','$22,441.68',5077860092,6659,4451940362,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.')
,('Zamit','$45,647.09',2159927961,6659,8465821836,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.')
,('Asoka','$41,383.53',9248744117,6659,4409227548,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.')
,('Flexidy','$44,811.04',311532284,6659,4457892300,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('It','$31,151.18',7117262087,6659,7815675522,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Tresom','$30,070.73',2379027382,6659,2944473921,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.')
,('Cardify','$31,375.93',8222390015,6659,7064737892,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
,('Opela','$27,369.24',2537692179,6659,7614860470,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
,('Bamity','$43,768.90',4029060412,6659,8129916800,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.')
,('Daltfresh','$24,431.55',8943575319,6659,1658613899,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.')
,('Flexidy','$46,393.56',1400084741,6659,4013436779,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.')
,('Greenlam','$26,153.16',5007928879,6659,9882148395,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.')
,('Pannier','$34,135.00',791920445,6659,3564245944,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Trippledex','$42,409.01',221816836,6659,4502083208,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
,('Ventosanzap','$47,688.04',8629376945,6659,5337758691,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.')
,('Cardify','$27,105.91',2251206310,6659,6910897846,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('Ventosanzap','$41,640.07',2011031664,6659,3780151359,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.')
,('It','$29,693.71',2405642980,6659,4550784326,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
,('Toughjoyfax','$28,638.69',2983137899,6659,8100902534,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.')
,('Namfix','$34,902.91',6637979341,6659,6455129059,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
,('Subin','$41,685.78',5407408554,6659,1164397826,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Subin','$31,442.50',9145132062,6659,8235434148,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
,('Alpha','$37,624.35',3169489550,6659,7542145533,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Sub-Ex','$20,859.48',815326726,6659,3383146766,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.')
,('Cookley','$49,863.77',5342680697,6659,8721613753,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('Zaam-Dox','$36,365.07',2856934358,6659,9307407150,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.')
,('Lotlux','$29,181.58',8770214395,6659,1827929553,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.')
,('Stim','$29,770.17',6598298792,6659,117730785,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.')
,('Ventosanzap','$21,106.97',6063695044,6659,8456321192,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Bamity','$22,415.03',3360896726,6659,5650803048,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
,('Konklux','$28,224.26',6271201644,6659,3446849440,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
,('Ronstring','$22,110.56',7931745574,6659,2444085302,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
,('Toughjoyfax','$23,411.83',5462864949,6659,1802782729,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
,('Alphazap','$44,590.43',523808445,6659,8077683126,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
,('Stronghold','$20,711.54',2568911905,6659,7698644421,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.')
,('Zontrax','$34,331.21',645718556,6659,2811577637,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
,('Zontrax','$46,634.89',2401666354,6659,9317200877,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Solarbreeze','$40,089.76',174667906,6659,3488885216,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.')
,('Aerified','$39,706.50',6178840314,6659,8935655813,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Flowdesk','$44,580.05',5974835514,6659,8960055611,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.')
,('Alpha','$31,143.59',7234669205,6659,1744090467,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.')
,('Toughjoyfax','$31,914.35',1492190608,6659,3661541358,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.')
,('Tres-Zap','$45,669.32',9605664089,6659,4747725180,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
,('Transcof','$40,331.50',1341758826,6659,8801009348,'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.')
,('Duobam','$45,382.30',1626780919,6659,775451037,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Alphazap','$48,298.53',2817929152,6659,9855773217,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.')
,('Latlux','$22,661.99',5392019269,6659,2632226007,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
,('Daltfresh','$45,810.10',9892519124,6659,3386324452,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
,('Biodex','$34,813.33',9491552732,6659,4828714693,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
,('Veribet','$35,660.14',7329174483,6659,2591101353,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.')
,('Span','$29,926.59',437557227,6659,5619806669,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Y-Solowarm','$26,150.08',7808412171,6659,3410679820,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.')
,('Opela','$24,594.63',2281971104,6659,2551004403,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Latlux','$42,349.12',2976381429,6659,8857723798,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.')
,('Holdlamis','$35,759.40',973069430,6659,8656946854,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.')
,('Cardguard','$36,508.54',5350042661,6659,2085636586,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.')
,('Biodex','$21,071.67',4527594141,6659,1360092595,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.')
,('Cookley','$38,366.77',4595470185,6659,5343613470,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.')
,('Sonair','$39,041.97',4665777349,6659,8891750204,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.')
,('Trippledex','$49,197.51',8866449482,6659,6024378335,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Cardify','$31,961.20',7706088324,6659,6338502683,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Asoka','$33,785.71',3525408838,6659,387798374,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Holdlamis','$43,955.13',261483625,6659,2025231571,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.')
,('Biodex','$43,853.84',7947116261,6659,6330678650,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.')
,('Voltsillam','$36,091.64',638890578,6659,9302207226,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.')
,('Mat Lam Tam','$48,533.45',6727901562,6659,7127296987,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Temp','$32,111.06',593306074,6659,4210828092,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.')
,('Fintone','$20,014.45',684594382,6659,5195827346,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
,('Bytecard','$31,608.60',6636908246,6659,5335662182,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Tresom','$47,476.91',6079485117,6659,3798597758,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.')
,('Fixflex','$47,678.62',3959696183,6659,7999777080,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.')
,('Keylex','$46,591.08',6532688754,6659,3117065865,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.')
,('Y-Solowarm','$39,597.90',2240144270,6659,1765264774,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
,('Latlux','$27,879.55',6495674562,6659,6105638507,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.')
,('Zaam-Dox','$49,167.93',767883586,6659,6387829496,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.')
,('Temp','$45,118.15',6002724788,6659,5808687276,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.')
,('Tampflex','$33,033.70',5764702380,6659,4398907750,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Bytecard','$45,228.73',4166844156,6659,2002703817,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.')
,('Latlux','$26,530.90',5763894162,6659,1276151012,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.')
,('Gembucket','$43,184.15',134664124,6659,5110667497,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.')
,('Duobam','$36,833.77',7746573371,6659,518270165,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.')
,('Sonsing','$23,112.72',7930648133,6659,9873063404,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.')
,('Viva','$40,053.74',9021104881,6659,836986644,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.')
,('Fintone','$36,998.50',6244311744,6659,4940220885,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.')
,('Sonair','$37,892.27',114707243,6659,2745897500,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Toughjoyfax','$36,320.70',4259672177,6659,2318810168,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.')
,('Cookley','$34,239.28',1603497714,6659,7807563176,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.')
,('Tempsoft','$20,092.19',5074543770,6659,7978270459,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.')
,('Redhold','$48,599.51',8594897871,6659,1863209514,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.')
,('Cookley','$28,740.50',3589722355,6659,8972845876,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.')
,('Latlux','$27,182.00',4606085452,6659,3173885295,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.')
,('Bytecard','$45,182.91',9829779475,6659,6744558749,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.')
,('Sonsing','$38,987.98',3535059763,6659,9120744218,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO Application(App_Name,Price,App_ID,Department_ID,Service_ID,Spending_Analysis,Customer_Report,Product_Report) VALUES
 ('Stringtough','$25,956.49',8429305122,6659,2805336747,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.')
,('Trippledex','$43,242.38',3963670967,6659,1077756577,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
,('Kanlam','$20,076.12',667110836,6659,9906461233,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.')
,('Latlux','$40,462.69',7592248611,6659,716880148,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');

CREATE TABLE IF NOT EXISTS Categories
(
    Cat_Name    varchar(50),
    Category_ID INTEGER AUTO_INCREMENT,
    PRIMARY KEY (Category_ID),
    INDEX idx_Category_ID (Category_ID)
);

INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Lettuce - Spring Mix',1270934228)
,('Longos - Cheese Tortellini',4840397252);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Soup - Campbells - Tomato',0967002052)
,('Wine - Jaboulet Cotes Du Rhone',5516395305);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Gelatine Powder',3393610511)
,('Cabbage - Nappa',1836856717);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Cookie - Dough Variety',9655307565)
,('Beer - Corona',7099429825);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Pepper - Gypsy Pepper',4366741067)
,('Glass - Wine, Plastic, Clear 5 Oz',2126377504);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Vinegar - Sherry',2225448140)
,('Pesto - Primerba, Paste',4296314424);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Tart Shells - Barquettes, Savory',9323247812)
,('Anchovy Paste - 56 G Tube',9599830415);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Longos - Penne With Pesto',3858987573)
,('Soup - Knorr, Classic Can. Chili',7303394257);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Wine - Chardonnay Mondavi',6712694663)
,('Quinoa',7191200766);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Pasta - Lasagne, Fresh',4833751801)
,('Wine - Chateau Bonnet',9305887104);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Flour - Buckwheat, Dark',7935235384)
,('Turkey - Breast, Double',4310850197);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Oil - Cooking Spray',8465282072)
,('Wonton Wrappers',1044442867);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Wine - Placido Pinot Grigo',0417382332)
,('Cheese - Grie Des Champ',6181814183);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Lemonade - Black Cherry, 591 Ml',1121139787)
,('Lamb - Ground',6263552735);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Bagel - Ched Chs Presliced',4692469749)
,('Taro Leaves',0890341346);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Soup - Campbells Chili Veg',0728308401)
,('Wine - Montecillo Rioja Crianza',4308253357);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Bouillion - Fish',9762949617)
,('Sunflower Seed Raw',3414096374);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Chutney Sauce - Mango',4180315882)
,('Island Oasis - Peach Daiquiri',5554489338);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Pie Box - Cello Window 2.5',9886336978)
,('Chicken - White Meat, No Tender',1773721097);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Syrup - Kahlua Chocolate',2156940630)
,('Sprouts Dikon',7801687302);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Mushroom - White Button',8909339896)
,('Pork - Tenderloin, Fresh',7255425607);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Clams - Canned',8410834081)
,('Cardamon Ground',2206905515);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Parsley - Fresh',6324614387)
,('Rabbit - Frozen',4748805595);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Beef - Tenderloin Tails',8843812696)
,('Beets - Golden',7378954667);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Capon - Whole',6056667723)
,('Pears - Anjou',3008042007);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Mushroom - Shitake, Fresh',4455821848)
,('Wine - Barossa Valley Estate',8672204085);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Chinese Foods - Pepper Beef',4607934917)
,('Puree - Pear',4256118020);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Rosemary - Primerba, Paste',5354762782)
,('Beef - Tender Tips',5249366775);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Table Cloth 53x69 White',1934270393)
,('Sproutsmustard Cress',0382555856);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Veal - Inside Round / Top, Lean',9484787533)
,('Tomatoes Tear Drop',4260536818);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Maintenance Removal Charge',7327037950)
,('Veal - Insides, Grains',0209075872);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Island Oasis - Wildberry',2042863130)
,('Pepper - Black, Whole',4396112394);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Sprite, Diet - 355ml',7547252125)
,('Glass Clear 7 Oz Xl',9108952140);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Rice Pilaf, Dry,package',3138327192)
,('Chutney Sauce',1808258118);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Flounder - Fresh',3984463960)
,('Pasta - Lasagne, Fresh',4975054515);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Creme De Cacao White',9121310629)
,('Ecolab - Ster Bac',1817249649);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Turkey - Breast, Bone - In',5205985267)
,('Salmon Steak - Cohoe 8 Oz',2586956427);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Mayonnaise - Individual Pkg',8185546894)
,('Poppy Seed',2324453886);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Sauce - Marinara',0206681720)
,('Dc - Frozen Momji',0770823343);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Water - San Pellegrino',5226637136)
,('Steampan - Half Size Shallow',3502707197);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Chocolate - Pistoles, White',6750582664)
,('Bagels Poppyseed',0667029664);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Pork - Butt, Boneless',2772235254)
,('Lamb - Bones',9778799180);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Quinoa',4806218286)
,('Coconut - Shredded, Sweet',1411953339);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Long Island Ice Tea',2171467150)
,('Ice Cream - Turtles Stick Bar',7739580228);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Breakfast Quesadillas',1198473207)
,('Wine - Fontanafredda Barolo',2869061366);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Hagen Daza - Dk Choocolate',0233870997)
,('Pork - Sausage Casing',4955837697);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Green Tea Refresher',3524051669)
,('Oil - Margarine',0809072157);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Bread - Kimel Stick Poly',9036729912)
,('Ice Cream Bar - Hageen Daz To',3145268430);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Longos - Chicken Cordon Bleu',2465518054)
,('Rice - Long Grain',4029397352);
INSERT INTO Categories(Cat_Name,Category_ID) VALUES
 ('Dill - Primerba, Paste',4417707073)
,('Pasta - Elbows, Macaroni, Dry',7693562664);


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

INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Wine - Trimbach Pinot Blanc','$4.14',8318809335,1270934228,9467661993)
,('Cookies - Englishbay Oatmeal','$0.51',6898935038,4840397252,7468186278)
,('Mcgillicuddy Vanilla Schnap','$1.20',8644487485,967002052,6664649489)
,('Rosemary - Dry','$4.65',5697631146,5516395305,9429212265)
,('Veal - Knuckle','$0.03',5556894213,3393610511,775550353);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Squid - Breaded','$0.31',2131521855,1836856717,1265294704)
,('Five Alive Citrus','$4.12',5895786308,9655307565,9078229721)
,('Cookie Chocolate Chip With','$1.85',6193705732,7099429825,4788639181)
,('Arrowroot','$4.08',9986693934,4366741067,267345917)
,('Langers - Mango Nectar','$3.08',1959326155,2126377504,6895570020);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Water - Green Tea Refresher','$1.68',5130045939,2225448140,5342435234)
,('Chicken - Livers','$0.36',5415896201,4296314424,2104432235)
,('Pepper - Chili Powder','$4.81',8035692283,9323247812,3654911803)
,('Lighter - Bbq','$0.05',7372502624,9599830415,4587202983)
,('Kellogs All Bran Bars','$2.55',4527151622,3858987573,1292725192);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Lettuce - Romaine','$4.11',881499951,7303394257,1836055536)
,('Beets - Golden','$4.13',3716743658,6712694663,4900207969)
,('Everfresh Products','$4.88',7226477718,7191200766,4762453366)
,('Lemonade - Strawberry, 591 Ml','$2.37',7666796463,4833751801,280881169)
,('Rice - Aborio','$2.21',6095529522,9305887104,6743546569);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Cheese - Roquefort Pappillon','$3.19',7914147427,7935235384,9691562529)
,('Pork - Chop, Frenched','$4.13',1194031935,4310850197,934193630)
,('Bread - Pumpernickle, Rounds','$1.82',2884885676,8465282072,6969232263)
,('Rice - Aborio','$0.82',6499823627,1044442867,9874873604)
,('Lettuce - Red Leaf','$4.42',3520400073,417382332,4133836626);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Cheese - Comte','$1.13',9416217492,6181814183,5884506260)
,('Soup Campbells - Tomato Bisque','$1.58',7517288334,1121139787,920935192)
,('Pie Pecan','$3.56',5945093564,6263552735,9516262457)
,('Pasta - Canelloni, Single Serve','$1.33',8166737116,4692469749,5128406008)
,('Roe - White Fish','$3.68',6095288274,890341346,1469214873);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Loquat','$4.79',2017026530,728308401,9572590979)
,('Eel Fresh','$3.14',5453126752,4308253357,617541159)
,('Fennel - Seeds','$2.20',2982222027,9762949617,8710416889)
,('Pork - Loin, Boneless','$3.61',6481112346,3414096374,7923583056)
,('Lobster - Tail 6 Oz','$1.62',3046164572,4180315882,2641745550);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Nescafe - Frothy French Vanilla','$4.39',3020293170,5554489338,9187020556)
,('Appetizer - Asian Shrimp Roll','$2.55',1838924469,9886336978,2688993151)
,('Jameson - Irish Whiskey','$2.15',7175658060,1773721097,3845496061)
,('Fennel - Seeds','$4.30',7442730094,2156940630,9064744149)
,('Foam Espresso Cup Plain White','$2.58',6065541060,7801687302,7561109407);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Wild Boar - Tenderloin','$0.56',8246214063,8909339896,2149725401)
,('Lettuce - Red Leaf','$3.91',7080919177,7255425607,4822461327)
,('Onions Granulated','$0.89',6353254520,8410834081,9652783064)
,('Cabbage Roll','$3.53',4213729257,2206905515,6477074524)
,('Wine - Magnotta - Cab Sauv','$2.98',9520710299,6324614387,7666795068);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Salami - Genova','$4.04',4707111858,4748805595,1958031631)
,('Beef - Rib Roast, Capless','$0.32',3103331886,8843812696,5330803322)
,('Sauce - Sesame Thai Dressing','$1.81',1296468291,7378954667,316160024)
,('Wine - Zinfandel Rosenblum','$3.48',802249620,6056667723,8914181707)
,('Pepper - Black, Crushed','$2.42',2594193135,3008042007,700120343);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Sherbet - Raspberry','$1.27',8418932171,4455821848,1103865749)
,('Bread Base - Gold Formel','$2.91',8606089796,8672204085,124599532)
,('Island Oasis - Lemonade','$1.62',3287153390,4607934917,8457926322)
,('Bagel - 12 Grain Preslice','$1.01',2227122544,4256118020,3882304685)
,('Cheese - Parmesan Cubes','$2.24',3507568233,5354762782,9572221698);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Yeast Dry - Fermipan','$1.42',7626992040,5249366775,7287503204)
,('Flower - Dish Garden','$4.52',471658138,1934270393,4985292400)
,('Shrimp - 100 / 200 Cold Water','$2.49',6336680916,382555856,3288442019)
,('Beef - Tenderloin','$0.85',5093317705,9484787533,667453369)
,('Jello - Assorted','$2.34',1122436823,4260536818,4018821344);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Table Cloth 120 Round White','$4.51',9617061961,7327037950,7330047384)
,('French Pastry - Mini Chocolate','$0.91',2857595808,209075872,8533194579)
,('Yogurt - Plain','$3.10',4102673,2042863130,6418489780)
,('Cognac - Courvaisier','$4.31',6973215580,4396112394,994431473)
,('Bread - Dark Rye, Loaf','$4.06',7791393379,7547252125,7729088584);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Basil - Seedlings Cookstown','$0.21',8734838996,9108952140,9148178551)
,('Chicken - Bones','$3.23',6715167915,3138327192,1422982750)
,('Tray - 16in Rnd Blk','$1.48',7364907661,1808258118,2681670667)
,('Juice - Prune','$4.39',4407953039,3984463960,9740901948)
,('Clams - Bay','$0.82',1526493004,4975054515,6639733382);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Sugar - Crumb','$0.14',1195565763,9121310629,1283710765)
,('Urban Zen Drinks','$4.11',2698475692,1817249649,1834508770)
,('Loquat','$2.04',3636850849,5205985267,8510683441)
,('Tomatoes - Roma','$3.76',8925673606,2586956427,1034074180)
,('Flour - Fast / Rapid','$1.98',9782305138,8185546894,3129976000);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Lobster - Live','$2.98',2519618981,2324453886,6086726213)
,('Nut - Pecan, Halves','$0.42',2794997718,206681720,1708061614)
,('Chef Hat 20cm','$1.37',3487408929,770823343,9044477420)
,('Oregano - Dry, Rubbed','$0.01',2576211569,5226637136,7968983878)
,('Spice - Montreal Steak Spice','$0.98',1662988508,3502707197,4126237259);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Beans - Kidney White','$4.90',6876584488,6750582664,6354571686)
,('Eggroll','$1.47',528714511,667029664,2999813961)
,('Mousse - Passion Fruit','$0.68',1653626674,2772235254,4973144177)
,('Smoked Tongue','$2.23',8612802792,9778799180,2986648800)
,('Octopus','$1.66',6296345836,4806218286,7255363261);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Fond - Neutral','$3.46',2426478047,1411953339,5372592028)
,('Iced Tea - Lemon, 340ml','$4.43',8676137234,2171467150,7932134218)
,('Roe - Lump Fish, Black','$4.96',1029413606,7739580228,6803107973)
,('Cheese - Roquefort Pappillon','$1.88',1323269703,1198473207,4379265374)
,('Ginsing - Fresh','$0.30',489385702,2869061366,1277412774);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Bay Leaf Ground','$1.17',8604507302,233870997,1028829108)
,('Chambord Royal','$0.19',3856313346,4955837697,2482304504)
,('Soup - French Can Pea','$2.94',9528501613,3524051669,724605517)
,('Maintenance Removal Charge','$1.51',5468334089,809072157,8189098039)
,('Wine - Alicanca Vinho Verde','$2.20',1578456940,9036729912,8285427528);
INSERT INTO Client_Products(CP_Name,Unit_Price,Product_ID,Category_ID,Curr_Client_ID) VALUES
 ('Appetizer - Asian Shrimp Roll','$3.67',1797179535,3145268430,3421413339)
,('Ezy Change Mophandle','$1.22',7218472672,2465518054,723021244)
,('Pepper - Chipotle, Canned','$4.99',6641362728,4029397352,186753888)
,('Lettuce - Mini Greens, Whole','$3.32',1118914066,4417707073,8674939457)
,('Cheese Cloth No 60','$2.29',7720600029,7693562664,5810139965);


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

INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9467661993,8318809335,9465906573)
,(7468186278,6898935038,1722837802)
,(6664649489,8644487485,4142264656);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9429212265,5697631146,1139930567)
,(775550353,5556894213,3841069754)
,(1265294704,2131521855,5342171865);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9078229721,5895786308,2468396189)
,(4788639181,6193705732,8875474982)
,(267345917,9986693934,1848777523);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (6895570020,1959326155,1993270019)
,(5342435234,5130045939,6067717425)
,(2104432235,5415896201,1847789544);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (3654911803,8035692283,8494012665)
,(4587202983,7372502624,4678629963)
,(1292725192,4527151622,6849460714);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (1836055536,881499951,7855621717)
,(4900207969,3716743658,3561410073)
,(4762453366,7226477718,5386380230);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (280881169,7666796463,3689025354)
,(6743546569,6095529522,4603256787)
,(9691562529,7914147427,2115146670);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (934193630,1194031935,404920101)
,(6969232263,2884885676,1781061416)
,(9874873604,6499823627,119284111);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (4133836626,3520400073,6437101393)
,(5884506260,9416217492,4128692352)
,(920935192,7517288334,3154036547);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9516262457,5945093564,5885616078)
,(5128406008,8166737116,7633268190)
,(1469214873,6095288274,7722746292);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9572590979,2017026530,991680049)
,(617541159,5453126752,5125973009)
,(8710416889,2982222027,4826254075);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (7923583056,6481112346,4913736035)
,(2641745550,3046164572,1054912866)
,(9187020556,3020293170,5685446888);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (2688993151,1838924469,4106106280)
,(3845496061,7175658060,847146316)
,(9064744149,7442730094,5172287043);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (7561109407,6065541060,6337697316)
,(2149725401,8246214063,624779394)
,(4822461327,7080919177,6438675628);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9652783064,6353254520,7233951233)
,(6477074524,4213729257,4100054823)
,(7666795068,9520710299,1394307543);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (1958031631,4707111858,7665041760)
,(5330803322,3103331886,8081210229)
,(316160024,1296468291,5604316342);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (8914181707,802249620,3872267329)
,(700120343,2594193135,5602309411)
,(1103865749,8418932171,8167081338);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (124599532,8606089796,9733996858)
,(8457926322,3287153390,2300938170)
,(3882304685,2227122544,898024714);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (9572221698,3507568233,9109910700)
,(7287503204,7626992040,8583277885)
,(4985292400,471658138,5582982752);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (3288442019,6336680916,6358639137)
,(667453369,5093317705,6371519565)
,(4018821344,1122436823,883085925);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (7330047384,9617061961,5034187043)
,(8533194579,2857595808,2258558956)
,(6418489780,4102673,3676648080);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (994431473,6973215580,5777278515)
,(7729088584,7791393379,8819377314)
,(9148178551,8734838996,224849972);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (1422982750,6715167915,2872305971)
,(2681670667,7364907661,7125062237)
,(9740901948,4407953039,1301504599);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (6639733382,1526493004,579938417)
,(1283710765,1195565763,3560080819)
,(1834508770,2698475692,5653439576);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (8510683441,3636850849,8447818721)
,(1034074180,8925673606,3467466826)
,(3129976000,9782305138,2303880319);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (6086726213,2519618981,7168743139)
,(1708061614,2794997718,918245729)
,(9044477420,3487408929,2083185927);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (7968983878,2576211569,7372047609)
,(4126237259,1662988508,4273995247)
,(6354571686,6876584488,6249183027);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (2999813961,528714511,3266510232)
,(4973144177,1653626674,9959314715)
,(2986648800,8612802792,4530353613);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (7255363261,6296345836,1748834657)
,(5372592028,2426478047,6796521072)
,(7932134218,8676137234,8289557426);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (6803107973,1029413606,468479511)
,(4379265374,1323269703,4403029272)
,(1277412774,489385702,9105320461);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (1028829108,8604507302,416721133)
,(2482304504,3856313346,5176333163)
,(724605517,9528501613,53874072);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (8189098039,5468334089,261798677)
,(8285427528,1578456940,5830435594)
,(3421413339,1797179535,3583426428);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (723021244,7218472672,4464161855)
,(186753888,6641362728,8817928178)
,(8674939457,1118914066,4061637487);
INSERT INTO Client_Order(Curr_Client_ID,Product_ID,OD_Order_ID) VALUES
 (5810139965,7720600029,85060364);


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

INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('85249 Erie Pass','+62 (443) 247-6221','Ms','Ezri','Cussons','molestie sed justo pellentesque',1,6961461808)
,('26809 Fulton Trail','+62 (196) 889-4157','Honorable','Humfried','Aspland','mus etiam vel',2,7906908899)
,('6 Namekagon Hill','+7 (207) 269-5768','Ms','Yelena','Budgeon','odio odio elementum',3,379973790)
,('2 Swallow Terrace','+595 (515) 340-3558','Dr','Moses','Stowell','ut mauris eget massa',4,8439379773)
,('57 Lighthouse Bay Avenue','+55 (775) 386-2706','Rev','Lib','Dunklee','vel',5,1899052011)
,('8 Elmside Court','+1 (202) 886-2384','Honorable','Marcellina','Raylton','ac nulla sed',6,5628656348)
,('28 Jackson Street','+7 (761) 700-9126','Ms','Essa','Beggs','platea dictumst etiam faucibus',7,9689127381)
,('77 Wayridge Alley','+86 (307) 844-4109','Mrs','Vidovik','Jollie','sapien cum',8,6120256059);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('93 Clemons Lane','+63 (484) 719-1963','Dr','Maurene','Kinghorn','tortor id nulla ultrices',9,9589036694)
,('665 David Road','+502 (273) 263-0018','Dr','Averyl','Dunbleton','eget rutrum at lorem',10,6767156523)
,('1049 Roxbury Junction','+62 (608) 742-1540','Rev','Broderic','Haye','dis parturient montes nascetur ridiculus',11,5152193728)
,('7 Tony Plaza','+86 (266) 232-1599','Rev','Linnie','Peris','odio consequat varius',12,7894489964)
,('6916 Bartillon Crossing','+84 (626) 125-4142','Mrs','Duff','Itschakov','ultrices enim',13,7048179813)
,('64846 Sutherland Avenue','+1 (757) 769-7108','Ms','Mabel','Mityushkin','nulla eget eros elementum',14,1769208488)
,('6336 Raven Crossing','+86 (563) 168-3002','Honorable','Curran','Streetfield','id turpis integer aliquet',15,1360471308)
,('71946 Fair Oaks Street','+7 (656) 460-2873','Honorable','Heinrick','Accombe','ultrices posuere',16,4025070472);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('56 Grover Street','+251 (600) 102-6418','Rev','Flynn','D''Alesco','quam suspendisse potenti',17,9206801538)
,('041 Blaine Parkway','+86 (144) 249-4110','Honorable','Dicky','Fisbey','platea dictumst aliquam',18,3713305595)
,('41 Butternut Lane','+233 (984) 672-5775','Ms','Leoine','Kief','sit amet consectetuer adipiscing elit',19,7866523061)
,('3190 Little Fleur Junction','+420 (243) 868-0611','Honorable','Nickolaus','Napier','id consequat',20,6819996128)
,('8 Upham Parkway','+46 (352) 276-2682','Rev','Siffre','Copnall','neque sapien placerat ante nulla',21,9232066084)
,('619 Carioca Parkway','+51 (446) 717-4914','Ms','Rosemonde','O'' Molan','pede justo',22,3039400126)
,('66 Kipling Drive','+86 (336) 247-0425','Mr','Fanechka','Tallquist','venenatis lacinia aenean sit',23,126297819)
,('83410 Lindbergh Alley','+60 (314) 341-4186','Dr','Kim','Stokell','lectus in quam fringilla',24,5651462198);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('57910 Summer Ridge Park','+595 (829) 589-0148','Mrs','Nat','Pavlovsky','suspendisse',25,9065729194)
,('0767 Dixon Drive','+86 (902) 848-6111','Ms','Wilhelmine','Cammocke','eget orci vehicula condimentum',26,3517588989)
,('8176 Oxford Circle','+86 (400) 453-3089','Ms','Gwenette','Yeell','id turpis integer aliquet',27,9435616798)
,('56 Hansons Point','+86 (384) 695-7964','Honorable','Lacey','Pietasch','congue elementum in hac',28,6584891771)
,('5 Chive Hill','+58 (423) 112-2044','Dr','Caldwell','Petrashov','molestie lorem quisque',29,6084355099)
,('79 Scott Way','+998 (458) 846-2634','Dr','Giorgi','Crone','mattis egestas metus aenean',30,2823170448)
,('8722 Eggendart Park','+86 (903) 643-1036','Honorable','Rodolph','Lowless','duis consequat',31,6410179871)
,('74 Oneill Park','+1 (453) 305-0884','Mrs','Silvie','Aspinal','nulla suscipit ligula',32,3986468862);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('89 Carberry Point','+86 (368) 123-2219','Honorable','Sherwin','Pighills','cras mi pede malesuada',33,2293534340)
,('29 Pennsylvania Center','+380 (918) 655-2770','Dr','Cristian','Rowter','at diam nam tristique tortor',34,8621079631)
,('0387 High Crossing Street','+7 (373) 250-5870','Honorable','Phillipe','Brosnan','quisque porta volutpat',35,8252416594)
,('40 Northport Alley','+46 (670) 262-7000','Dr','Konstantine','Allwright','eros viverra eget congue eget',36,8787066025)
,('768 Forest Dale Drive','+86 (318) 220-5365','Rev','Farrah','Rillatt','varius ut blandit non',37,7544148254)
,('5 Forest Pass','+86 (599) 324-7711','Mr','Kip','Shortell','in tempor turpis',38,9730397341)
,('72268 Victoria Junction','+998 (258) 940-6278','Dr','Mariejeanne','Luno','rutrum',39,572719663)
,('835 Lerdahl Circle','+48 (589) 662-2507','Dr','Alanah','Tewes','turpis adipiscing lorem',40,9980125284);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('31 South Avenue','+62 (252) 731-0000','Ms','Cosette','Wincer','amet justo',41,5255769002)
,('7835 Grayhawk Place','+48 (559) 637-5850','Ms','Shaun','McKomb','sapien sapien non mi integer',42,3446003452)
,('731 Garrison Center','+86 (236) 141-2947','Dr','Sigmund','Cutmare','suspendisse accumsan tortor quis turpis',43,4696262391)
,('78 Twin Pines Court','+62 (549) 952-3623','Mrs','May','Knoton','proin at turpis a',44,5547855707)
,('919 Holmberg Crossing','+63 (413) 639-2135','Mrs','Kingsly','Cavaney','quis',45,7163912366)
,('6532 Anhalt Alley','+62 (424) 857-6836','Ms','Lacey','Leeds','morbi vel',46,9598723836)
,('211 Coleman Street','+55 (873) 225-1720','Mr','Tabb','Brooks','rhoncus aliquam lacus',47,1046900684)
,('17 Susan Parkway','+970 (948) 718-2370','Honorable','Bell','Kolak','ut rhoncus',48,1197263799);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('16532 American Ash Lane','+86 (467) 200-7635','Ms','Pearle','O''Daly','ac tellus semper interdum',49,7211693908)
,('39834 Marquette Way','+63 (719) 578-9694','Dr','Betteann','Doddemeede','tincidunt lacus at velit vivamus',50,2454447231)
,('0910 Bartelt Plaza','+967 (348) 767-6235','Rev','Nikos','Lapping','blandit',51,436056917)
,('7 Green Ridge Lane','+504 (244) 743-9731','Honorable','Dari','Seden','est donec odio',52,797510788)
,('7587 Mendota Terrace','+62 (677) 329-6468','Dr','Codi','Janeway','suscipit nulla elit ac',53,2391835264)
,('8850 Evergreen Road','+998 (366) 621-1933','Honorable','Tish','Elener','laoreet ut rhoncus',54,9618837327)
,('6 Arizona Place','+86 (209) 944-1045','Mrs','Morie','Snelling','dolor quis odio consequat varius',55,6004763659)
,('64493 Fairfield Lane','+86 (208) 848-4566','Mrs','Germaine','Searl','integer aliquet massa',56,8772288388);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('3 Goodland Pass','+46 (988) 349-8433','Rev','Walden','Hoult','in felis',57,7360457440)
,('222 Riverside Alley','+46 (993) 884-4119','Mrs','Bethanne','Corlett','dui luctus rutrum nulla',58,3643584784)
,('482 Red Cloud Plaza','+49 (386) 506-1803','Rev','Daile','Mellonby','justo',59,915589419)
,('44 Forest Run Court','+46 (453) 483-5946','Mrs','Sue','Wilcocks','velit donec diam neque',60,3311615131)
,('9873 Marquette Way','+57 (646) 419-8647','Honorable','Daryl','Kinman','vestibulum sed',61,8268765534)
,('1 Glendale Avenue','+62 (712) 272-6700','Ms','Gearalt','Valerius','quam nec dui luctus rutrum',62,3367348872)
,('0 Dixon Road','+86 (392) 317-7623','Rev','Gerrie','Le Marchant','duis bibendum',63,6936214738)
,('13660 Jay Center','+62 (332) 204-5069','Ms','Cele','Klimuk','cubilia curae mauris viverra diam',64,4529860612);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('428 Sachtjen Crossing','+351 (356) 801-8887','Mrs','Carmencita','Towell','nisl aenean lectus',65,4676993722)
,('2364 Green Ridge Alley','+380 (757) 161-2983','Honorable','Staci','Woofenden','faucibus orci luctus et ultrices',66,1309510881)
,('4076 Schiller Circle','+380 (649) 806-8284','Dr','Harri','Jerrard','lectus',67,4818174327)
,('25 Atwood Trail','+86 (736) 544-2510','Dr','Kristian','Meadus','interdum eu tincidunt in leo',68,8917734014)
,('5528 Stone Corner Place','+62 (601) 667-5686','Ms','Uri','Vogt','congue',69,16724860)
,('612 Bartillon Junction','+86 (666) 719-5944','Ms','Emmaline','Winsome','risus dapibus augue vel',70,3858560367)
,('0343 Cherokee Junction','+86 (100) 998-4155','Mr','Lida','Rushbrook','nunc',71,8252577695)
,('9206 Kropf Hill','+46 (992) 672-2979','Mr','Dunc','Kares','montes nascetur ridiculus mus vivamus',72,9127112683);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('401 Columbus Circle','+86 (991) 338-1433','Mr','Adriana','Marran','ac est lacinia',73,7380148079)
,('2761 Buhler Way','+976 (818) 162-0626','Dr','Mateo','Roggeman','erat id mauris',74,6339340199)
,('15925 Dexter Way','+52 (625) 622-1808','Mr','Deirdre','Di Antonio','ut volutpat sapien arcu sed',75,7230904358)
,('55 Bonner Road','+62 (737) 634-4849','Mr','Donnamarie','Chuck','sodales scelerisque',76,3998325468)
,('9 Dixon Trail','+967 (585) 562-3607','Ms','Morna','Conrard','mattis odio donec vitae',77,9332879621)
,('7407 Truax Parkway','+995 (413) 523-7757','Honorable','Caitlin','McGrady','vestibulum velit id pretium iaculis',78,8361190554)
,('737 Granby Court','+86 (753) 834-5065','Honorable','Noelyn','Grimwood','quisque id',79,2088362681)
,('5 Saint Paul Alley','+86 (630) 922-7193','Mrs','Bax','Drinkhall','odio cras mi pede malesuada',80,6082509978);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('433 Acker Pass','+62 (278) 151-9651','Dr','Samuel','Speaks','natoque penatibus et',81,4839263469)
,('1168 Longview Parkway','+46 (562) 576-5030','Rev','Dan','Saulter','at diam nam tristique tortor',82,1810650860)
,('22219 Claremont Avenue','+351 (779) 575-1262','Mrs','Afton','Ganley','a ipsum integer a nibh',83,6978435546)
,('30359 Summit Drive','+51 (256) 546-2497','Ms','Alley','Allston','praesent blandit nam nulla',84,5093849219)
,('269 Butterfield Drive','+33 (522) 556-4463','Mr','Norean','Huson','urna ut tellus nulla ut',85,5781348212)
,('67 Twin Pines Hill','+251 (697) 895-9767','Mrs','Gregorio','Geach','praesent id massa',86,3821255234)
,('57 Melrose Center','+380 (105) 228-5374','Mr','Sallyanne','Kaaskooper','turpis adipiscing lorem vitae',87,8073267292)
,('303 Burrows Avenue','+86 (207) 332-2732','Mrs','Anderea','Borsnall','aenean sit amet justo',88,57518769);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('632 Mesta Street','+63 (115) 992-8959','Mrs','Mimi','Biner','odio',89,1030367671)
,('3593 Daystar Park','+86 (724) 805-5791','Mrs','Torrey','Eade','molestie',90,8184669038)
,('9 Brickson Park Junction','+355 (648) 868-6189','Mrs','Kathleen','Schimank','sapien placerat ante nulla justo',91,2409591930)
,('7352 Forest Road','+7 (410) 356-4006','Mrs','Kelsey','MacPaden','quam fringilla',92,5018026995)
,('3564 Weeping Birch Alley','+51 (389) 126-9995','Mr','Vidovic','Milberry','sollicitudin mi',93,9922407027)
,('39 Lukken Point','+46 (314) 483-0973','Mrs','Hugibert','Shepeard','in',94,9656610008)
,('9 Claremont Parkway','+1 (131) 391-3824','Honorable','Bobbe','Bourtoumieux','ultrices mattis odio donec',95,1735611522)
,('0 8th Terrace','+62 (678) 861-3335','Mr','Celene','Sterman','semper rutrum',96,1922798517);
INSERT INTO Customer_Information(Address,Phone,Contact_Title,First_Name,Last_Name,Demographics,CI_Customer_ID,O_Order_ID) VALUES
 ('864 Colorado Road','+994 (451) 629-2424','Mr','Udale','Larchiere','ultrices posuere',97,8582020880)
,('59 Maywood Terrace','+63 (662) 604-3545','Rev','Virgie','Manus','augue vel',98,4864496706)
,('9 Holy Cross Pass','+227 (985) 546-4480','Mrs','Irvine','Stebbings','sodales',99,5192542138)
,('51831 Farmco Trail','+82 (353) 743-1142','Mrs','Miquela','Atcheson','orci',100,2697712445);

#DROP DATABASE segmentify;