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

INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO The_Mavericks(Headquarter_Address,Reviews,Phone,Location,Fax,Home_Page,Company_ID,Contact_Title,Contact_Name,Company_Name) VALUES ('624 Clemons Way','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');


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

INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Trudie','Robbins',230,'trobbins0@weibo.com','Boston','Massachusetts',2208,'Business Development',6650,3104705100,230);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Kate','Kingstne',231,'kkingstne1@foxnews.com','Charleston','West Virginia',25336,'Creative Services',6651,3104705100,231);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Dickie','Ezzell',232,'dezzell2@sfgate.com','Charleston','South Carolina',29424,'Customer Service',6652,3104705100,232);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Adara','Kohrsen',233,'akohrsen3@accuweather.com','Vero Beach','Florida',32964,'Accounting',6653,3104705100,233);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Darcey','Ollerenshaw',234,'dollerenshaw4@ucoz.com','San Antonio','Texas',78255,'Human Resources',6654,3104705100,234);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Maighdiln','Thickpenny',235,'mthickpenny5@tamu.edu','Kansas City','Missouri',64153,'Legal',6655,3104705100,235);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Nichole','Dishman',236,'ndishman6@elegantthemes.com','Tucson','Arizona',85715,'Operations',6656,3104705100,236);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lavena','Cutcliffe',237,'lcutcliffe7@whitehouse.gov','Littleton','Colorado',80127,'Production',6657,3104705100,237);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Bea','Marrion',238,'bmarrion8@purevolume.com','Tampa','Florida',33686,'Risk Management',6658,3104705100,238);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Colleen','Tasch',239,'ctasch9@vimeo.com','Dallas','Texas',75277,'Marketing',6659,3104705100,239);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Meade','Bockler',240,'mbocklera@studiopress.com','Tyler','Texas',75799,'Sales',6660,3104705100,240);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Beau','Braferton',241,'bbrafertonb@un.org','Miami','Florida',33147,'Technology',6661,3104705100,241);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Corny','McNally',242,'cmcnallyc@princeton.edu','Augusta','Georgia',30911,'General Management',6662,3104705100,242);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Halie','Morsley',243,'hmorsleyd@apple.com','Milwaukee','Wisconsin',53277,'Engineering',6663,3104705100,243);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Glynnis','Soppett',244,'gsoppette@guardian.co.uk','Indianapolis','Indiana',46226,'Investor Relations',6664,3104705100,244);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Alonzo','Levecque',245,'alevecquef@domainmarket.com','New York City','New York',10203,'Product Management',6665,3104705100,245);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Belicia','Bracey',246,'bbraceyg@dagondesign.com','New York City','New York',10292,'Quality Assurance',6666,3104705100,246);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jannel','Starford',247,'jstarfordh@miibeian.gov.cn','Houston','Texas',77090,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Erich','Maultby',248,'emaultbyi@friendfeed.com','Minneapolis','Minnesota',55448,'Board of Directors',6668,3104705100,248);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Erica','Landsbury',249,'elandsburyj@ocn.ne.jp','Greensboro','North Carolina',27425,'Research and Development',6669,3104705100,249);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Joanie','Padwick',250,'jpadwickk@trellian.com','Shawnee Mission','Kansas',66215,'Training',6670,3104705100,250);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Tori','McGiffie',251,'tmcgiffiel@nps.gov','Jacksonville','Florida',32209,'Support',6671,3104705100,251);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Rosy','Trelevan',252,'rtrelevanm@weebly.com','Lubbock','Texas',79491,'Asset Management',6672,3104705100,252);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Simonette','Mintoft',253,'smintoftn@time.com','Spokane','Washington',99210,'Project Management',6673,3104705100,253);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jo-anne','Radenhurst',254,'jradenhursto@sun.com','Aurora','Illinois',60505,'IT',6674,3104705100,254);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Sheilakathryn','Witchalls',255,'switchallsp@prnewswire.com','Panama City','Florida',32405,'Social Media',6675,3104705100,255);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Cris','Haggidon',256,'chaggidonq@spiegel.de','Richmond','Virginia',23242,'Client Relations Management',6676,3104705100,256);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Junia','Gimblet',257,'jgimbletr@biglobe.ne.jp','Bronx','New York',10464,'Corporate Communications',6677,3104705100,257);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Leoine','Lumsdon',258,'llumsdons@blog.com','Manassas','Virginia',22111,'Sourcing',6678,3104705100,258);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Mellicent','Spiaggia',259,'mspiaggiat@skype.com','Pasadena','California',91199,'Inspection',6679,3104705100,259);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Sacha','Dulinty',260,'sdulintyu@yolasite.com','Houston','Texas',77035,'Business Development',6650,3104705100,230);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Pedro','Ambroise',261,'pambroisev@ocn.ne.jp','Minneapolis','Minnesota',55487,'Creative Services',6651,3104705100,231);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Samaria','Tomney',262,'stomneyw@engadget.com','Fort Worth','Texas',76110,'Customer Service',6652,3104705100,232);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Ola','Wind',263,'owindx@moonfruit.com','Pasadena','Texas',77505,'Accounting',6653,3104705100,233);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jessalin','Oliphand',264,'joliphandy@japanpost.jp','Beaverton','Oregon',97075,'Human Resources',6654,3104705100,234);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Johan','Dolton',265,'jdoltonz@intel.com','Van Nuys','California',91499,'Legal',6655,3104705100,235);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Josefina','Dionisio',266,'jdionisio10@example.com','Apache Junction','Arizona',85219,'Operations',6656,3104705100,236);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Selestina','Cornilleau',267,'scornilleau11@nsw.gov.au','Boulder','Colorado',80328,'Production',6657,3104705100,237);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Darrelle','Roxburch',268,'droxburch12@jigsy.com','San Bernardino','California',92415,'Risk Management',6658,3104705100,238);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Henrik','Hallihan',269,'hhallihan13@linkedin.com','Boulder','Colorado',80310,'Marketing',6659,3104705100,239);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Nev','Brogi',270,'nbrogi14@bing.com','Toledo','Ohio',43635,'Sales',6660,3104705100,240);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Shem','Hemeret',271,'shemeret15@spiegel.de','Los Angeles','California',90081,'Technology',6661,3104705100,241);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Gabie','Btham',272,'gbtham16@java.com','Shreveport','Louisiana',71115,'General Management',6662,3104705100,242);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Rachele','Essame',273,'ressame17@imageshack.us','Jackson','Mississippi',39204,'Engineering',6663,3104705100,243);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Renaud','Basant',274,'rbasant18@altervista.org','Suffolk','Virginia',23436,'Investor Relations',6664,3104705100,244);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Felita','Bodman',275,'fbodman19@g.co','Madison','Wisconsin',53785,'Product Management',6665,3104705100,245);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Britt','Leathart',276,'bleathart1a@nationalgeographic.com','Minneapolis','Minnesota',55428,'Quality Assurance',6666,3104705100,246);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Marthena','Tollett',277,'mtollett1b@dagondesign.com','Richmond','Virginia',23289,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Faunie','Pakes',278,'fpakes1c@hao123.com','Oklahoma City','Oklahoma',73157,'Board of Directors',6668,3104705100,248);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Nadeen','McFaul',279,'nmcfaul1d@odnoklassniki.ru','Iowa City','Iowa',52245,'Research and Development',6669,3104705100,249);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Glynda','Johns',280,'gjohns1e@github.com','Tallahassee','Florida',32314,'Training',6670,3104705100,250);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Paulita','Dumbellow',281,'pdumbellow1f@cam.ac.uk','Philadelphia','Pennsylvania',19104,'Support',6671,3104705100,251);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Arnoldo','Hailey',282,'ahailey1g@thetimes.co.uk','Fredericksburg','Virginia',22405,'Asset Management',6672,3104705100,252);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Shepperd','Benitti',283,'sbenitti1h@liveinternet.ru','Detroit','Michigan',48295,'Project Management',6673,3104705100,253);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Leslie','Jelf',284,'ljelf1i@youku.com','Topeka','Kansas',66667,'IT',6674,3104705100,254);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Chip','Lissandrini',285,'clissandrini1j@unblog.fr','New York City','New York',10150,'Social Media',6675,3104705100,255);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Teodorico','Philippsohn',286,'tphilippsohn1k@reuters.com','Cincinnati','Ohio',45249,'Client Relations Management',6676,3104705100,256);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Tiffani','Eliesco',287,'teliesco1l@nsw.gov.au','Palm Bay','Florida',32909,'Corporate Communications',6677,3104705100,257);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lacy','Aslen',288,'laslen1m@va.gov','Mansfield','Ohio',44905,'Sourcing',6678,3104705100,258);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Olivette','Jandera',289,'ojandera1n@google.cn','Baton Rouge','Louisiana',70810,'Inspection',6679,3104705100,259);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Ewart','Sergean',290,'esergean1o@bloomberg.com','Saint Cloud','Minnesota',56372,'Business Development',6650,3104705100,230);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jamill','Trowsdale',291,'jtrowsdale1p@engadget.com','New York City','New York',10105,'Creative Services',6651,3104705100,231);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Fletch','Pedro',292,'fpedro1q@jalbum.net','Fort Worth','Texas',76147,'Customer Service',6652,3104705100,232);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Melanie','Gawne',293,'mgawne1r@vimeo.com','El Paso','Texas',79994,'Accounting',6653,3104705100,233);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Kimberly','Petschel',294,'kpetschel1s@mashable.com','Tacoma','Washington',98442,'Human Resources',6654,3104705100,234);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Mariana','Fardon',295,'mfardon1t@altervista.org','Miami','Florida',33261,'Legal',6655,3104705100,235);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lydon','Beckitt',296,'lbeckitt1u@blogger.com','Metairie','Louisiana',70005,'Operations',6656,3104705100,236);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Zacharias','Yoselevitch',297,'zyoselevitch1v@shinystat.com','New Orleans','Louisiana',70183,'Production',6657,3104705100,237);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Danny','Wickrath',298,'dwickrath1w@weibo.com','New York City','New York',10125,'Risk Management',6658,3104705100,238);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Tate','Fiddiman',299,'tfiddiman1x@netlog.com','Albuquerque','New Mexico',87190,'Marketing',6659,3104705100,239);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lillian','Vearncomb',300,'lvearncomb1y@goo.ne.jp','Fairbanks','Alaska',99709,'Sales',6660,3104705100,240);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Maddy','Takos',301,'mtakos1z@jigsy.com','Montgomery','Alabama',36119,'Technology',6661,3104705100,241);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Pen','Buxey',302,'pbuxey20@phoca.cz','South Bend','Indiana',46634,'General Management',6662,3104705100,242);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jard','Dawes',303,'jdawes21@google.pl','Chicago','Illinois',60663,'Engineering',6663,3104705100,243);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Berget','Pennycuick',304,'bpennycuick22@hp.com','Austin','Texas',78769,'Investor Relations',6664,3104705100,244);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Reese','De la Yglesia',305,'rdelayglesia23@nhs.uk','Inglewood','California',90310,'Product Management',6665,3104705100,245);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Sharon','O''Loghlen',306,'sologhlen24@jigsy.com','Kansas City','Missouri',64153,'Quality Assurance',6666,3104705100,246);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Karlik','Barnhart',307,'kbarnhart25@altervista.org','Pittsburgh','Pennsylvania',15230,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Aleda','Clissett',308,'aclissett26@seesaa.net','Chandler','Arizona',85246,'Board of Directors',6668,3104705100,248);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lacey','Arsmith',309,'larsmith27@paginegialle.it','Denver','Colorado',80299,'Research and Development',6669,3104705100,249);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Anestassia','Le Provost',310,'aleprovost28@vkontakte.ru','Louisville','Kentucky',40210,'Training',6670,3104705100,250);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Cathe','McDarmid',311,'cmcdarmid29@columbia.edu','Winston Salem','North Carolina',27110,'Support',6671,3104705100,251);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Netty','Baskwell',312,'nbaskwell2a@jimdo.com','Portsmouth','New Hampshire',3804,'Asset Management',6672,3104705100,252);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lula','Westlake',313,'lwestlake2b@princeton.edu','Little Rock','Arkansas',72215,'Project Management',6673,3104705100,253);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Lucita','Rowet',314,'lrowet2c@yellowbook.com','Jacksonville','Florida',32225,'IT',6674,3104705100,254);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Angil','Ashbolt',315,'aashbolt2d@chron.com','Houston','Texas',77075,'Social Media',6675,3104705100,255);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Tod','Paige',316,'tpaige2e@altervista.org','Fresno','California',93794,'Client Relations Management',6676,3104705100,256);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Udale','Gatling',317,'ugatling2f@wikispaces.com','Los Angeles','California',90035,'Corporate Communications',6677,3104705100,257);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Eulalie','Dowzell',318,'edowzell2g@cdbaby.com','Fresno','California',93726,'Sourcing',6678,3104705100,258);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Cordelie','Couves',319,'ccouves2h@telegraph.co.uk','Roanoke','Virginia',24040,'Inspection',6679,3104705100,259);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Maggie','Cowterd',320,'mcowterd2i@pbs.org','Saint Paul','Minnesota',55188,'Business Development',6650,3104705100,230);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Jemmy','Fanthome',321,'jfanthome2j@whitehouse.gov','El Paso','Texas',79968,'Creative Services',6651,3104705100,231);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Warner','Linke',322,'wlinke2k@wikia.com','Bryan','Texas',77806,'Customer Service',6652,3104705100,232);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Samuel','Nyssens',323,'snyssens2l@msu.edu','Fort Lauderdale','Florida',33345,'Accounting',6653,3104705100,233);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Talbert','Confait',324,'tconfait2m@howstuffworks.com','Montgomery','Alabama',36134,'Human Resources',6654,3104705100,234);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Ginevra','Flawn',325,'gflawn2n@blogtalkradio.com','Baltimore','Maryland',21275,'Legal',6655,3104705100,235);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Carrissa','Beushaw',326,'cbeushaw2o@cmu.edu','Milwaukee','Wisconsin',53215,'Operations',6656,3104705100,236);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Willey','Beesley',327,'wbeesley2p@xing.com','Homestead','Florida',33034,'Production',6657,3104705100,237);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Wallas','Itzkin',328,'witzkin2q@privacy.gov.au','Omaha','Nebraska',68117,'Risk Management',6658,3104705100,238);
INSERT INTO Internal_Employees(First_Name,Last_Name,Int_Emp_ID,Email,City,State,Zip_Code,Dept_Name,Dept_Number,Company_ID,Sup_ID) VALUES ('Aindrea','Landsbury',329,'alandsbury2r@webmd.com','New York City','New York',10270,'Marketing',6659,3104705100,239);


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

INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Stringtough',6979973606,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Sonsing',2209113997,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Keylex',6943598260,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Overhold',2605141845,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Andalax',9045926474,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bitwolf',1052774504,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Veribet',2634670931,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fix San',9547222880,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fintone',5946486527,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Quo Lux',6625287482,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Prodder',2721203053,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Regrant',4568330955,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tin',9333446931,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Regrant',2300584980,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Sub-Ex',341198889,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bamity',9119007140,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tres-Zap',2494007852,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Temp',3554011363,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Keylex',3276785781,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Mat Lam Tam',2082185141,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Prodder',4276820790,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Stringtough',5037460085,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Alpha',6890237269,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Temp',2975101260,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bytecard',4015004434,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fixflex',2315990335,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Andalax',2538890438,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Job',8660703197,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fix San',9888217461,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tres-Zap',4075384942,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bitchip',6105193408,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Redhold',8203902413,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fixflex',8097451158,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Quo Lux',8789659570,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Voltsillam',7523540953,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fixflex',1143304888,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Zathin',3382990679,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Cookley',5378571456,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bitwolf',2452595950,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Viva',4612663543,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Zoolab',2710056046,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Pannier',922989400,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Sonair',8656013181,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tempsoft',5260361830,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Konklux',3641125626,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Kanlam',3357009323,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Zaam-Dox',7641929826,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Namfix',5231717266,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Otcom',6527201893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Solarbreeze',9254280259,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Trippledex',6587593445,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Treeflex',5151673505,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Latlux',756547156,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Sub-Ex',2870498632,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Konklab',6009317967,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Opela',5059052591,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Sonsing',6149453979,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Temp',4140576944,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Y-find',3499705214,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tin',8674351824,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Zaam-Dox',5580825285,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Pannier',1693822199,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bigtax',1173097945,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Overhold',4157122321,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Duobam',5958219065,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Daltfresh',3506105876,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Toughjoyfax',650567439,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Bytecard',8505490584,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Cookley',7305830275,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Veribet',6993200481,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Gembucket',9888370685,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Stronghold',1670795578,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Rank',223110175,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Opela',6326906776,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Subin',6968976390,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Voyatouch',1119132746,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Vagram',218500866,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Flexidy',3461565903,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Trippledex',1103561251,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Flowdesk',8952354893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Overhold',9968441341,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Domainer',1755065116,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Alpha',325348596,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Cookley',3487428709,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Trippledex',2460797346,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Zaam-Dox',5132946895,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Gembucket',7352663452,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Alpha',4121403657,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Fixflex',5773571919,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tresom',4125992983,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Tin',8640622930,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Redhold',6017608991,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Prodder',3045881068,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Wrapsafe',9631159353,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Gembucket',5600107005,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Greenlam',2201149240,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Trippledex',812798899,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Alpha',5169797893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Otcom',7615924243,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO Projects(Proj_Name,Proj_Number,Location,Dept_Name,Dept_Number,Company_ID) VALUES ('Y-Solowarm',2809979111,'11th Floor','Research and Development',6669,3104705100);


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

INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (230,'Stringtough',6979973606);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (231,'Sonsing',2209113997);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (232,'Keylex',6943598260);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (233,'Overhold',2605141845);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (234,'Andalax',9045926474);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (235,'Bitwolf',1052774504);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (236,'Veribet',2634670931);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (237,'Fix San',9547222880);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (238,'Fintone',5946486527);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (239,'Quo Lux',6625287482);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (240,'Prodder',2721203053);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (241,'Regrant',4568330955);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (242,'Tin',9333446931);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (243,'Regrant',2300584980);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (244,'Sub-Ex',341198889);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (245,'Bamity',9119007140);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (246,'Tres-Zap',2494007852);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (247,'Temp',3554011363);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (248,'Keylex',3276785781);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (249,'Mat Lam Tam',2082185141);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (250,'Prodder',4276820790);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (251,'Stringtough',5037460085);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (252,'Alpha',6890237269);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (253,'Temp',2975101260);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (254,'Bytecard',4015004434);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (255,'Fixflex',2315990335);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (256,'Andalax',2538890438);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (257,'Job',8660703197);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (258,'Fix San',9888217461);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (259,'Tres-Zap',4075384942);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (260,'Bitchip',6105193408);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (261,'Redhold',8203902413);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (262,'Fixflex',8097451158);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (263,'Quo Lux',8789659570);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (264,'Voltsillam',7523540953);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (265,'Fixflex',1143304888);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (266,'Zathin',3382990679);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (267,'Cookley',5378571456);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (268,'Bitwolf',2452595950);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (269,'Viva',4612663543);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (270,'Zoolab',2710056046);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (271,'Pannier',922989400);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (272,'Sonair',8656013181);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (273,'Tempsoft',5260361830);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (274,'Konklux',3641125626);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (275,'Kanlam',3357009323);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (276,'Zaam-Dox',7641929826);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (277,'Namfix',5231717266);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (278,'Otcom',6527201893);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (279,'Solarbreeze',9254280259);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (280,'Trippledex',6587593445);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (281,'Treeflex',5151673505);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (282,'Latlux',756547156);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (283,'Sub-Ex',2870498632);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (284,'Konklab',6009317967);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (285,'Opela',5059052591);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (286,'Sonsing',6149453979);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (287,'Temp',4140576944);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (288,'Y-find',3499705214);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (289,'Tin',8674351824);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (290,'Zaam-Dox',5580825285);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (291,'Pannier',1693822199);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (292,'Bigtax',1173097945);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (293,'Overhold',4157122321);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (294,'Duobam',5958219065);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (295,'Daltfresh',3506105876);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (296,'Toughjoyfax',650567439);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (297,'Bytecard',8505490584);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (298,'Cookley',7305830275);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (299,'Veribet',6993200481);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (300,'Gembucket',9888370685);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (301,'Stronghold',1670795578);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (302,'Rank',223110175);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (303,'Opela',6326906776);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (304,'Subin',6968976390);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (305,'Voyatouch',1119132746);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (306,'Vagram',218500866);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (307,'Flexidy',3461565903);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (308,'Trippledex',1103561251);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (309,'Flowdesk',8952354893);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (310,'Overhold',9968441341);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (311,'Domainer',1755065116);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (312,'Alpha',325348596);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (313,'Cookley',3487428709);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (314,'Trippledex',2460797346);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (315,'Zaam-Dox',5132946895);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (316,'Gembucket',7352663452);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (317,'Alpha',4121403657);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (318,'Fixflex',5773571919);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (319,'Tresom',4125992983);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (320,'Tin',8640622930);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (321,'Redhold',6017608991);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (322,'Prodder',3045881068);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (323,'Wrapsafe',9631159353);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (324,'Gembucket',5600107005);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (325,'Greenlam',2201149240);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (326,'Trippledex',812798899);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (327,'Alpha',5169797893);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (328,'Otcom',7615924243);
INSERT INTO Int_Emp_Proj(Int_Emp_ID,Proj_Name,Proj_Number) VALUES (329,'Y-Solowarm',2809979111);

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

INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Flipstorm','Rev','Wainwright Tacey','8 Merchant Place','wtacey0@csmonitor.com','+63 (207) 228-1260','+63 (234) 291-4917',2236025599);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Divape','Honorable','Oswell Hannant','00 Alpine Terrace','ohannant1@lulu.com','+351 (974) 635-3029','+46 (704) 718-0108',4771435731);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Tanoodle','Mr','Roosevelt Caffery','3 Loeprich Center','rcaffery2@people.com.cn','+389 (503) 861-7417','+48 (392) 847-7563',8945823166);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Trilith','Ms','Alidia Vern','671 Merchant Trail','avern3@about.me','+237 (836) 409-7322','+86 (470) 202-1068',3598540787);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Yodoo','Honorable','Garland Figgins','062 Clyde Gallagher Road','gfiggins4@youtube.com','+33 (827) 416-4305','+86 (822) 401-8689',5532260761);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Edgetag','Honorable','Carlyn Bantick','8806 Basil Parkway','cbantick5@businesswire.com','+380 (101) 702-9036','+52 (681) 163-1190',7714328193);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Jabbertype','Honorable','Denny Ellershaw','5 Southridge Center','dellershaw6@oakley.com','+423 (344) 794-1947','+55 (467) 200-6988',2974294278);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Riffpedia','Honorable','Woody Tatlock','76821 Karstens Way','wtatlock7@wunderground.com','+86 (484) 483-9964','+63 (556) 637-2943',3263142879);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Jatri','Dr','Johna Thornborrow','806 Hollow Ridge Avenue','jthornborrow8@csmonitor.com','+353 (951) 496-6316','+234 (582) 748-2829',7853502575);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Tagopia','Dr','Laureen Mabb','86713 North Plaza','lmabb9@infoseek.co.jp','+7 (649) 251-9147','+86 (833) 331-8054',0567485951);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Bluejam','Ms','Avivah Smethurst','59089 Hallows Lane','asmethursta@ox.ac.uk','+357 (377) 637-7631','+86 (337) 996-7437',1174425458);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Jetwire','Dr','Marion Caulier','56 Northridge Parkway','mcaulierb@sun.com','+374 (506) 967-3784','+51 (651) 752-4014',8700622001);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Jabberstorm','Dr','Gillie Guiu','2 Warner Circle','gguiuc@github.io','+351 (326) 988-4594','+62 (862) 244-8307',0225799812);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voomm','Mrs','Mathilde Budgey','9369 Golf Trail','mbudgeyd@google.pl','+48 (139) 188-5939','+230 (620) 752-0459',9166283302);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Yozio','Mrs','Cristie Toombes','3 Lukken Parkway','ctoombese@unblog.fr','+48 (517) 195-7787','+86 (493) 776-8526',8784378778);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voonte','Dr','Howie Biesterfeld','37 Doe Crossing Plaza','hbiesterfeldf@goo.gl','+63 (332) 234-7315','+358 (921) 397-0768',6867534198);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Mita','Mrs','Idelle Kinnoch','197 Little Fleur Drive','ikinnochg@scientificamerican.com','+39 (178) 603-2512','+591 (960) 869-1947',3371738191);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('LiveZ','Ms','Eveleen Adamovitch','5 Susan Place','eadamovitchh@army.mil','+255 (270) 388-8078','+222 (629) 734-7147',9485808682);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voonder','Mrs','Putnam Blakebrough','31 Wayridge Street','pblakebroughi@google.co.jp','+352 (738) 420-5125','+33 (715) 693-5193',6609210217);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Topicstorm','Mrs','Simona Desorts','59654 Bunting Court','sdesortsj@wufoo.com','+82 (623) 997-3607','+1 (634) 385-1325',7041062775);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Divanoodle','Honorable','Alanah Vigours','2087 Porter Trail','avigoursk@reddit.com','+86 (839) 741-4139','+1 (619) 355-9529',6117699034);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Wikido','Dr','Johnnie Keir','2765 Portage Road','jkeirl@forbes.com','+55 (259) 163-7589','+86 (739) 324-1327',0770244661);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Feednation','Mrs','Jacquette Kerss','0 Veith Terrace','jkerssm@cloudflare.com','+66 (510) 505-2569','+86 (869) 631-4806',8116673416);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voomm','Ms','Keelby McGahern','27644 John Wall Park','kmcgahernn@berkeley.edu','+62 (938) 473-5781','+46 (970) 473-0061',0675556759);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhynyx','Mr','Cosimo Gisborne','802 Basil Point','cgisborneo@usnews.com','+66 (937) 593-6909','+86 (771) 845-6304',7698896994);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Bubblebox','Mr','Abbot Claughton','71528 Debra Crossing','aclaughtonp@deviantart.com','+62 (877) 979-8669','+86 (484) 903-5409',2230921711);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhynyx','Mrs','Marcellus Wrates','53879 West Parkway','mwratesq@shop-pro.jp','+62 (523) 213-7919','+595 (819) 903-6573',8394869270);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Skimia','Dr','Shaun Girtin','37 Golden Leaf Alley','sgirtinr@marriott.com','+86 (373) 534-3589','+92 (694) 356-3588',0875154573);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Realcube','Dr','Ferdie Trobey','675 Gerald Point','ftrobeys@mozilla.com','+86 (627) 770-2668','+63 (701) 415-6184',5771562955);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Meezzy','Mr','Corabelle Sutherley','31697 3rd Crossing','csutherleyt@dailymail.co.uk','+86 (591) 987-7699','+51 (896) 143-1554',6185142813);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Thoughtstorm','Mrs','Kristofor Maxfield','9720 Browning Center','kmaxfieldu@joomla.org','+7 (436) 992-1104','+62 (671) 460-8512',7125916309);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Plajo','Ms','Sid Connachan','09806 Ramsey Point','sconnachanv@com.com','+86 (837) 949-3700','+86 (716) 201-9950',2349454258);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Skyble','Ms','Karalee Stickens','90782 Mifflin Circle','kstickensw@cnbc.com','+56 (805) 890-3247','+380 (362) 723-5449',6493807506);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Kimia','Mr','Chaunce Wrathmall','490 Stuart Avenue','cwrathmallx@webs.com','+55 (601) 133-7908','+62 (938) 540-7954',8093969837);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Centidel','Rev','Cyrille Dunbabin','88 Killdeer Drive','cdunbabiny@about.com','+62 (934) 823-7652','+86 (237) 166-3565',9405641190);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Yodo','Mrs','Jeane Goodsal','7165 Longview Parkway','jgoodsalz@edublogs.org','+62 (156) 116-0861','+86 (962) 835-3547',3964277754);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Photojam','Mrs','Victoir Windle','631 Tomscot Drive','vwindle10@hatena.ne.jp','+86 (963) 101-9912','+47 (286) 760-2867',6688515199);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Centidel','Ms','Cilka Friedenbach','4988 Karstens Parkway','cfriedenbach11@ucoz.com','+62 (857) 629-7259','+66 (702) 386-7158',9037189539);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Realcube','Mr','Nichol Sproson','567 Logan Way','nsproson12@apple.com','+46 (841) 991-0278','+30 (619) 246-4243',9267413619);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhyzio','Mrs','Elden Irlam','5395 Vidon Terrace','eirlam13@ca.gov','+374 (467) 508-7574','+7 (719) 292-6769',6509622491);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhynoodle','Ms','Noam Gailor','09422 Crowley Parkway','ngailor14@icq.com','+54 (808) 340-6659','+86 (285) 697-9709',1518785468);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Fanoodle','Mr','Alisha Flaverty','96 Mayfield Junction','aflaverty15@comsenz.com','+62 (388) 456-6170','+7 (399) 636-0004',6104772366);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Fliptune','Honorable','Lita Abrami','14 Mccormick Place','labrami16@wsj.com','+62 (733) 225-9948','+351 (952) 491-1962',5451990204);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Zava','Dr','Rebecka Dysart','7797 Crest Line Terrace','rdysart17@blogger.com','+504 (532) 838-8484','+31 (298) 349-7849',2132770069);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhyloo','Mrs','Muriel Levitt','3925 Mayer Way','mlevitt18@economist.com','+389 (546) 231-7827','+63 (680) 698-4140',6243391841);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Quinu','Mrs','Mile Malthouse','2 Hermina Avenue','mmalthouse19@dion.ne.jp','+63 (474) 647-6951','+33 (192) 687-2369',9633950376);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voonte','Honorable','Donnamarie Ciccetti','4308 John Wall Circle','dciccetti1a@blogspot.com','+7 (675) 674-8751','+86 (837) 160-3659',4137906149);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voonyx','Dr','Mireille Seckom','8602 Nevada Center','mseckom1b@cpanel.net','+1 (918) 790-3483','+86 (287) 885-5784',2017824984);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Photojam','Ms','Bert Fiander','9438 Basil Terrace','bfiander1c@irs.gov','+86 (994) 249-1113','+375 (412) 569-5722',4120659798);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Thoughtmix','Mr','Hebert Dumphy','7815 Kipling Place','hdumphy1d@flickr.com','+233 (859) 987-0326','+375 (167) 643-5497',7510924146);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Youtags','Mrs','Westleigh Camell','109 Troy Trail','wcamell1e@nytimes.com','+62 (743) 408-3835','+7 (900) 621-5585',7426160289);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Oozz','Dr','Dom Stormont','35933 4th Way','dstormont1f@shop-pro.jp','+7 (604) 310-1136','+62 (495) 430-1353',1938318250);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Realpoint','Mrs','Doloritas Scragg','4 South Park','dscragg1g@rakuten.co.jp','+48 (549) 718-6003','+86 (108) 348-9928',2260282032);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Gigashots','Dr','Pippa Mathis','3381 Rusk Plaza','pmathis1h@arizona.edu','+63 (334) 539-4000','+420 (329) 251-9926',1096533456);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Fanoodle','Ms','Tania Sandifer','091 Melvin Point','tsandifer1i@paypal.com','+54 (524) 793-6342','+298 (345) 464-4413',3304980091);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Twitterwire','Mr','Vassili Pidwell','9 Troy Lane','vpidwell1j@goodreads.com','+62 (897) 331-9911','+351 (784) 873-9490',1028645872);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Rhynoodle','Rev','Dallis McManamon','69 Lakeland Pass','dmcmanamon1k@vinaora.com','+86 (725) 941-5949','+62 (802) 159-6766',5457123367);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Topicshots','Mrs','Taddeusz Marskell','6 Messerschmidt Court','tmarskell1l@utexas.edu','+48 (947) 680-7969','+420 (934) 704-9499',6340300170);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Tagtune','Ms','Chic Burnitt','0683 Larry Alley','cburnitt1m@berkeley.edu','+7 (902) 421-8861','+63 (111) 497-5169',4443330216);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Vinder','Dr','Shell Conre','65393 Crowley Junction','sconre1n@ucsd.edu','+55 (524) 968-6515','+381 (379) 621-0779',2373579510);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Ntag','Honorable','Moyna Guirard','11 Homewood Trail','mguirard1o@hp.com','+380 (553) 781-7883','+593 (344) 190-6004',2480137163);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Twitterbeat','Mr','Sammy Chapple','880 Del Mar Trail','schapple1p@forbes.com','+86 (843) 624-4366','+30 (279) 300-6117',6025057648);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('JumpXS','Rev','Isadora Lowseley','77187 Kipling Avenue','ilowseley1q@upenn.edu','+86 (291) 952-2597','+62 (927) 972-3412',9251492808);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Voonte','Mrs','Rossie Deetlefs','29578 Forest Parkway','rdeetlefs1r@edublogs.org','+31 (148) 191-9813','+374 (419) 635-8319',7493803617);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Oba','Rev','Virginie Kleinplac','7 South Trail','vkleinplac1s@nasa.gov','+995 (782) 373-0740','+84 (481) 274-9668',8262859855);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Topdrive','Dr','Charlena De Domenico','8091 Linden Crossing','cde1t@huffingtonpost.com','+351 (627) 194-8229','+976 (400) 582-0252',5025039827);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Wordpedia','Dr','Derron Eary','79 Melby Court','deary1u@smh.com.au','+62 (566) 248-0777','+55 (465) 678-9883',1590220242);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Tagcat','Rev','Trenna Mulmuray','74066 Schmedeman Parkway','tmulmuray1v@squarespace.com','+212 (710) 508-6469','+886 (117) 750-6061',5610096081);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Yotz','Dr','Daron Telezhkin','08 Dryden Street','dtelezhkin1w@mashable.com','+55 (588) 911-1853','+251 (447) 234-3413',6421662765);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Meevee','Dr','Krystyna Schoffler','6 Cambridge Parkway','kschoffler1x@businesswire.com','+420 (561) 115-4267','+58 (158) 482-2057',5546621923);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Linkbridge','Honorable','Kalinda Verrill','82326 Superior Road','kverrill1y@nih.gov','+7 (259) 192-7665','+55 (433) 723-8746',6532042757);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Eamia','Honorable','Bibbye Featherstonehaugh','7 4th Avenue','bfeatherstonehaugh1z@ed.gov','+502 (526) 918-7450','+86 (874) 190-2143',3702927433);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('LiveZ','Ms','Marylynne Duval','3199 Lunder Hill','mduval20@is.gd','+86 (358) 482-7289','+52 (915) 469-6929',0071893709);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Twiyo','Mr','Goldina Matussov','8 Paget Pass','gmatussov21@addtoany.com','+7 (195) 270-0850','+55 (655) 454-1233',7246782478);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Youtags','Honorable','Benoit Whitmarsh','682 Debs Hill','bwhitmarsh22@tamu.edu','+62 (706) 804-1785','+420 (503) 953-9490',7185660394);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Browseblab','Dr','Frederigo Berthelet','3 Schmedeman Hill','fberthelet23@1688.com','+92 (944) 672-9269','+353 (827) 781-8745',8732628048);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Avaveo','Rev','Winny Rouke','059 Hoffman Drive','wrouke24@irs.gov','+7 (388) 117-5988','+226 (413) 965-3937',8422301520);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Topdrive','Ms','Salem Hinnerk','5605 Artisan Point','shinnerk25@springer.com','+33 (264) 938-6356','+505 (536) 463-6546',7004354393);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Yodel','Rev','Cherin McGlew','153 Rieder Court','cmcglew26@ftc.gov','+689 (845) 143-1243','+86 (754) 132-7038',9730425973);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Katz','Honorable','Adelice Dakhno','1 Magdeline Junction','adakhno27@huffingtonpost.com','+62 (861) 339-9716','+62 (998) 954-9541',0441875114);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Kanoodle','Honorable','Lorenza Crean','6 Farwell Junction','lcrean28@stumbleupon.com','+66 (627) 566-9296','+235 (136) 644-7129',5203765952);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Demimbu','Honorable','Janessa Rijkeseis','5 Parkside Avenue','jrijkeseis29@opera.com','+55 (455) 191-7287','+55 (187) 631-3986',4088351843);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Eimbee','Rev','Bobbi Dandison','94 Crownhardt Drive','bdandison2a@quantcast.com','+95 (819) 570-3901','+1 (758) 379-1527',5119710999);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Brainlounge','Dr','Chrystel Linford','7 Miller Terrace','clinford2b@amazon.com','+351 (444) 546-0625','+33 (801) 213-1989',5951225892);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Linktype','Dr','Goldi Hounsham','34514 Schurz Place','ghounsham2c@goodreads.com','+86 (270) 229-0069','+33 (602) 893-6712',2897474904);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Kayveo','Ms','Dian Giuroni','81566 Golden Leaf Place','dgiuroni2d@gnu.org','+62 (893) 728-8328','+7 (550) 300-2489',9254537349);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Zoomdog','Mrs','Vania Ivison','87 Everett Hill','vivison2e@china.com.cn','+86 (428) 547-8052','+380 (503) 970-8817',7338852901);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Mycat','Rev','Kenneth Goby','95 Oak Crossing','kgoby2f@patch.com','+1 (824) 700-6433','+62 (818) 326-0606',5264247285);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Tazzy','Mr','Opaline Heigold','81 Porter Hill','oheigold2g@a8.net','+7 (979) 207-9790','+55 (656) 727-8327',1866110403);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Avavee','Dr','Benedict Crat','92927 Kenwood Center','bcrat2h@fema.gov','+52 (216) 418-8880','+86 (261) 225-4579',7229045282);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Pixope','Dr','Johann Thoresby','88 Corben Junction','jthoresby2i@themeforest.net','+970 (342) 826-3792','+33 (734) 186-4737',3381355333);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Talane','Dr','Johannah Maycock','407 Ramsey Court','jmaycock2j@marketwatch.com','+48 (962) 276-9249','+86 (454) 903-9959',8636345057);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Flipstorm','Mr','Rosa Larrat','75 David Place','rlarrat2k@vkontakte.ru','+7 (789) 118-3772','+86 (433) 271-3953',2085761933);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Gabvine','Ms','Mart Fellenor','54033 Bluestem Alley','mfellenor2l@oakley.com','+7 (446) 866-8200','+255 (191) 732-6021',1688288139);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Centidel','Dr','Evangelin Barratt','68 Hoard Alley','ebarratt2m@vimeo.com','+63 (667) 597-6128','+249 (454) 754-2855',3003456555);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Feedspan','Mr','Reube Fulkes','2 7th Park','rfulkes2n@constantcontact.com','+7 (143) 286-4820','+57 (876) 145-6230',8976372239);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Thoughtbeat','Mr','Kerry Cutbirth','8364 Mayfield Court','kcutbirth2o@cbsnews.com','+86 (743) 786-4204','+420 (686) 590-4279',1006694781);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Avamba','Ms','Loretta MacKill','2 Daystar Trail','lmackill2p@ox.ac.uk','+82 (652) 112-9652','+420 (557) 633-2723',8437741467);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Jabbercube','Dr','Carmel Gantley','72 Sunbrook Circle','cgantley2q@free.fr','+7 (794) 530-5224','+86 (559) 976-2598',5979724672);
INSERT INTO Prospective_Clients(Company_Name,Contact_Title,Contact_Name,Headquarter_Address,Email,Fax,Phone,Prosp_Client_ID) VALUES ('Aimbo','Rev','Kippy Bogace','22634 Heffernan Lane','kbogace2r@mail.ru','+351 (557) 529-4840','+33 (511) 652-3045',3191254633);


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

INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2236025599,'Raoyang');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (4771435731,'Kuala Lumpur');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8945823166,'Hirado');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3598540787,'Hongcao');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5532260761,'Francisco Villa');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7714328193,'Haozhai');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2974294278,'Maurole');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3263142879,'Imider');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7853502575,'Khomutovo');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (567485951,'Salām Khēl');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1174425458,'Ono');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8700622001,'Kloangrotat');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (225799812,'Pemberton');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9166283302,'Bunirasa');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8784378778,'Soledade');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6867534198,'Marly-le-Roi');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3371738191,'Bagneux');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9485808682,'Uk');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6609210217,'Bukovany');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7041062775,'Manorom');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6117699034,'Zbąszynek');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (770244661,'Armavir');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8116673416,'Fu’an');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (675556759,'Yamkino');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7698896994,'Sande Vila Nova');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2230921711,'Čajetina');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8394869270,'Novodmitriyevskaya');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (875154573,'Madrid');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5771562955,'Puerto Esperanza');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6185142813,'Brämhult');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7125916309,'Lozova');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2349454258,'Bethel Town');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6493807506,'Bảo Lộc');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8093969837,'Khān Neshīn');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9405641190,'Herby');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3964277754,'Loukhi');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6688515199,'Hefei');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9037189539,'Ikar');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9267413619,'Gedera');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6509622491,'Štěchovice');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1518785468,'Pittsburgh');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6104772366,'Dami');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5451990204,'Şafwá');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2132770069,'Margahayu');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6243391841,'Alagoinhas');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9633950376,'Gnojnica');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (4137906149,'Petrovo-Dal’neye');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2017824984,'Carman');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (4120659798,'Zheleznovodsk');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7510924146,'Semey');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7426160289,'Yahil’nytsya');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1938318250,'Amparita');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2260282032,'Luniao');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1096533456,'Waco');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3304980091,'Chabany');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1028645872,'Shimen');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5457123367,'Puerto Rico');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6340300170,'Knoxville');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (4443330216,'Pontevedra');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2373579510,'Francisco Beltrão');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2480137163,'Meudon');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6025057648,'Arlington');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9251492808,'Rancamaya');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7493803617,'Qinggis Han');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8262859855,'Gedongmulyo');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5025039827,'Burqah');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1590220242,'Jianyangping');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5610096081,'Sanyang');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6421662765,'Medang');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5546621923,'Otjiwarongo');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (6532042757,'Dublin');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3702927433,'Saint-Quentin-en-Yvelines');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (71893709,'Ké-Macina');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7246782478,'Miami');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7185660394,'Sovetskoye');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8732628048,'Ribeirão Preto');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8422301520,'Lazaro Cardenas');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7004354393,'Qifang');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9730425973,'Fernandópolis');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (441875114,'Cervantes');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5203765952,'Betio Village');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (4088351843,'Musawa');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5119710999,'Zicheng');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5951225892,'Skála');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2897474904,'Stockholm');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (9254537349,'Binitayan');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7338852901,'Luzino');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5264247285,'Yongfeng');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1866110403,'Charneca da Cotovia');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (7229045282,'Sicamous');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3381355333,'Teodoro Sampaio');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8636345057,'Douliu');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (2085761933,'Ralevka');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1688288139,'Skaudvilė');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3003456555,'Ngembel');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8976372239,'Miłosław');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (1006694781,'Moutfort');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (8437741467,'Le Tampon');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (5979724672,'Zhangdiyingzi');
INSERT INTO Prosp_Client_Locs(Prosp_Client_ID,Location) VALUES (3191254633,'Hässelby');


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

INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Quo Lux','$14,460.80','FALSE',4976560562,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Flowdesk','$17,279.84','FALSE',2146349026,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stronghold','$19,779.07','FALSE',7034880573,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Pannier','$14,396.61','TRUE',4451940362,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Job','$14,065.35','FALSE',8465821836,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Vagram','$11,779.58','TRUE',4409227548,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Alphazap','$17,640.67','FALSE',4457892300,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Job','$18,436.14','TRUE',7815675522,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Overhold','$16,010.28','FALSE',2944473921,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stringtough','$19,756.73','TRUE',7064737892,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Namfix','$18,444.93','FALSE',7614860470,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Mat Lam Tam','$17,574.03','TRUE',8129916800,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Tin','$11,410.56','FALSE',1658613899,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Viva','$15,912.01','FALSE',4013436779,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Greenlam','$12,369.33','TRUE',9882148395,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zamit','$11,075.47','FALSE',3564245944,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zathin','$11,634.55','TRUE',4502083208,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zaam-Dox','$10,382.06','FALSE',5337758691,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Holdlamis','$15,999.28','FALSE',6910897846,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Cardify','$10,949.32','FALSE',3780151359,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Alpha','$18,669.21','TRUE',4550784326,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sonsing','$12,981.71','FALSE',8100902534,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Bamity','$19,661.73','TRUE',6455129059,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Kanlam','$15,868.77','TRUE',1164397826,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Home Ing','$16,061.24','FALSE',8235434148,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Alphazap','$15,153.73','FALSE',7542145533,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Biodex','$14,388.47','FALSE',3383146766,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Rank','$12,941.92','TRUE',8721613753,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Home Ing','$13,602.83','FALSE',9307407150,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Quo Lux','$16,777.05','FALSE',1827929553,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('It','$13,517.91','TRUE',117730785,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Voltsillam','$15,278.15','TRUE',8456321192,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Y-find','$19,699.96','FALSE',5650803048,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Aerified','$16,669.56','FALSE',3446849440,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zathin','$12,507.11','FALSE',2444085302,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Tresom','$18,075.43','FALSE',1802782729,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Holdlamis','$14,959.25','TRUE',8077683126,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stringtough','$15,001.73','TRUE',7698644421,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Regrant','$12,384.64','FALSE',2811577637,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Holdlamis','$12,707.03','TRUE',9317200877,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Matsoft','$15,617.81','FALSE',3488885216,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Trippledex','$18,255.22','FALSE',8935655813,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Latlux','$19,744.09','TRUE',8960055611,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stringtough','$10,434.03','TRUE',1744090467,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Voltsillam','$12,927.95','FALSE',3661541358,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Flexidy','$12,183.57','FALSE',4747725180,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zaam-Dox','$15,456.44','TRUE',8801009348,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Veribet','$19,930.98','TRUE',775451037,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Regrant','$14,124.04','FALSE',9855773217,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Y-Solowarm','$18,250.33','FALSE',2632226007,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Flexidy','$10,487.62','FALSE',3386324452,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Solarbreeze','$12,620.67','FALSE',4828714693,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Daltfresh','$12,724.95','FALSE',2591101353,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Transcof','$12,277.63','FALSE',5619806669,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Solarbreeze','$19,633.07','FALSE',3410679820,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sonair','$18,763.64','TRUE',2551004403,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Trippledex','$11,011.53','TRUE',8857723798,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sub-Ex','$14,802.94','TRUE',8656946854,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Toughjoyfax','$19,690.20','FALSE',2085636586,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Bytecard','$12,535.21','TRUE',1360092595,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Wrapsafe','$19,928.18','FALSE',5343613470,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Daltfresh','$12,958.99','FALSE',8891750204,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Domainer','$17,042.71','FALSE',6024378335,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Domainer','$16,409.57','TRUE',6338502683,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Alpha','$13,049.31','FALSE',387798374,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Tres-Zap','$12,130.77','TRUE',2025231571,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Andalax','$17,614.58','FALSE',6330678650,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Bytecard','$12,009.25','TRUE',9302207226,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Latlux','$19,748.23','TRUE',7127296987,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sonair','$10,691.84','FALSE',4210828092,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Flowdesk','$16,526.42','TRUE',5195827346,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Bamity','$12,409.60','TRUE',5335662182,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stringtough','$19,257.89','TRUE',3798597758,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Treeflex','$14,784.98','FALSE',7999777080,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Voltsillam','$13,721.92','FALSE',3117065865,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Subin','$10,632.00','TRUE',1765264774,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stronghold','$14,954.07','FALSE',6105638507,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Namfix','$14,954.31','TRUE',6387829496,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Quo Lux','$15,794.09','FALSE',5808687276,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Bigtax','$18,470.04','TRUE',4398907750,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sonsing','$12,113.29','FALSE',2002703817,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Andalax','$19,824.42','FALSE',1276151012,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Span','$18,741.97','FALSE',5110667497,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Voyatouch','$12,579.74','FALSE',518270165,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Stim','$19,942.79','FALSE',9873063404,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Y-Solowarm','$14,834.40','FALSE',836986644,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Greenlam','$18,205.24','TRUE',4940220885,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Redhold','$14,412.68','FALSE',2745897500,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zathin','$11,271.12','FALSE',2318810168,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Lotlux','$11,582.71','FALSE',7807563176,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Tres-Zap','$10,103.58','TRUE',7978270459,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Cardguard','$15,084.98','FALSE',1863209514,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Veribet','$16,233.08','FALSE',8972845876,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Sonair','$11,709.84','FALSE',3173885295,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Temp','$15,262.25','TRUE',6744558749,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Veribet','$11,384.85','FALSE',9120744218,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Vagram','$19,145.35','FALSE',2805336747,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Fixflex','$17,375.39','TRUE',1077756577,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zaam-Dox','$15,509.84','FALSE',9906461233,3104705100);
INSERT INTO Services(Service_Name,Price,Discontinued,Service_ID,Serv_Company_ID) VALUES ('Zamit','$19,875.54','FALSE',716880148,3104705100);


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

INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2236025599,4976560562,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (4771435731,2146349026,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8945823166,7034880573,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3598540787,4451940362,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5532260761,8465821836,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7714328193,4409227548,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2974294278,4457892300,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3263142879,7815675522,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7853502575,2944473921,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (567485951,7064737892,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1174425458,7614860470,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8700622001,8129916800,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (225799812,1658613899,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9166283302,4013436779,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8784378778,9882148395,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6867534198,3564245944,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3371738191,4502083208,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9485808682,5337758691,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6609210217,6910897846,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7041062775,3780151359,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6117699034,4550784326,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (770244661,8100902534,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8116673416,6455129059,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (675556759,1164397826,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7698896994,8235434148,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2230921711,7542145533,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8394869270,3383146766,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (875154573,8721613753,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5771562955,9307407150,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6185142813,1827929553,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7125916309,117730785,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2349454258,8456321192,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6493807506,5650803048,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8093969837,3446849440,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9405641190,2444085302,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3964277754,1802782729,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6688515199,8077683126,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9037189539,7698644421,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9267413619,2811577637,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6509622491,9317200877,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1518785468,3488885216,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6104772366,8935655813,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5451990204,8960055611,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2132770069,1744090467,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6243391841,3661541358,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9633950376,4747725180,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (4137906149,8801009348,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2017824984,775451037,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (4120659798,9855773217,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7510924146,2632226007,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7426160289,3386324452,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1938318250,4828714693,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2260282032,2591101353,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1096533456,5619806669,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3304980091,3410679820,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1028645872,2551004403,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5457123367,8857723798,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6340300170,8656946854,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (4443330216,2085636586,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2373579510,1360092595,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2480137163,5343613470,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6025057648,8891750204,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9251492808,6024378335,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7493803617,6338502683,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8262859855,387798374,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5025039827,2025231571,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1590220242,6330678650,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5610096081,9302207226,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6421662765,7127296987,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5546621923,4210828092,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (6532042757,5195827346,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3702927433,5335662182,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (71893709,3798597758,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7246782478,7999777080,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7185660394,3117065865,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8732628048,1765264774,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8422301520,6105638507,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7004354393,6387829496,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9730425973,5808687276,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (441875114,4398907750,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5203765952,2002703817,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (4088351843,1276151012,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5119710999,5110667497,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5951225892,518270165,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2897474904,9873063404,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (9254537349,836986644,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7338852901,4940220885,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5264247285,2745897500,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1866110403,2318810168,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (7229045282,7807563176,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3381355333,7978270459,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8636345057,1863209514,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (2085761933,8972845876,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1688288139,3173885295,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3003456555,6744558749,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8976372239,9120744218,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (1006694781,2805336747,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (8437741467,1077756577,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (5979724672,9906461233,3104705100);
INSERT INTO Prosp_Serv(Prosp_Client_ID,Service_ID,Serv_Company_ID) VALUES (3191254633,716880148,3104705100);


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

INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (1,6659,9467661993);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (2,6659,7468186278);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (3,6659,6664649489);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (4,6659,9429212265);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (5,6659,775550353);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (6,6659,1265294704);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (7,6659,9078229721);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (8,6659,4788639181);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (9,6659,267345917);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (10,6659,6895570020);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (11,6659,5342435234);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (12,6659,2104432235);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (13,6659,3654911803);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (14,6659,4587202983);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (15,6659,1292725192);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (16,6659,1836055536);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (17,6659,4900207969);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (18,6659,4762453366);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (19,6659,280881169);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (20,6659,6743546569);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (21,6659,9691562529);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (22,6659,934193630);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (23,6659,6969232263);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (24,6659,9874873604);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (25,6659,4133836626);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (26,6659,5884506260);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (27,6659,920935192);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (28,6659,9516262457);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (29,6659,5128406008);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (30,6659,1469214873);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (31,6659,9572590979);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (32,6659,617541159);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (33,6659,8710416889);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (34,6659,7923583056);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (35,6659,2641745550);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (36,6659,9187020556);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (37,6659,2688993151);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (38,6659,3845496061);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (39,6659,9064744149);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (40,6659,7561109407);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (41,6659,2149725401);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (42,6659,4822461327);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (43,6659,9652783064);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (44,6659,6477074524);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (45,6659,7666795068);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (46,6659,1958031631);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (47,6659,5330803322);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (48,6659,316160024);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (49,6659,8914181707);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (50,6659,700120343);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (51,6659,1103865749);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (52,6659,124599532);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (53,6659,8457926322);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (54,6659,3882304685);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (55,6659,9572221698);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (56,6659,7287503204);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (57,6659,4985292400);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (58,6659,3288442019);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (59,6659,667453369);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (60,6659,4018821344);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (61,6659,7330047384);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (62,6659,8533194579);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (63,6659,6418489780);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (64,6659,994431473);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (65,6659,7729088584);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (66,6659,9148178551);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (67,6659,1422982750);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (68,6659,2681670667);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (69,6659,9740901948);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (70,6659,6639733382);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (71,6659,1283710765);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (72,6659,1834508770);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (73,6659,8510683441);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (74,6659,1034074180);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (75,6659,3129976000);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (76,6659,6086726213);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (77,6659,1708061614);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (78,6659,9044477420);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (79,6659,7968983878);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (80,6659,4126237259);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (81,6659,6354571686);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (82,6659,2999813961);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (83,6659,4973144177);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (84,6659,2986648800);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (85,6659,7255363261);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (86,6659,5372592028);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (87,6659,7932134218);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (88,6659,6803107973);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (89,6659,4379265374);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (90,6659,1277412774);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (91,6659,1028829108);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (92,6659,2482304504);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (93,6659,724605517);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (94,6659,8189098039);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (95,6659,8285427528);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (96,6659,3421413339);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (97,6659,723021244);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (98,6659,186753888);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (99,6659,8674939457);
INSERT INTO Marketing_Department(Supervisor_ID,Department_ID,Curr_Client_ID) VALUES (100,6659,5810139965);


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

INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4828072535,6961461808,4976560562,2104016258);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3950580239,7906908899,2146349026,6958645839);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6591579710,379973790,7034880573,2520047488);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (480824924,8439379773,4451940362,5077860092);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8999068307,1899052011,8465821836,2159927961);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6000713371,5628656348,4409227548,9248744117);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8893879492,9689127381,4457892300,311532284);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9931579854,6120256059,7815675522,7117262087);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7912780327,9589036694,2944473921,2379027382);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8514950878,6767156523,7064737892,8222390015);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2928633944,5152193728,7614860470,2537692179);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2806547237,7894489964,8129916800,4029060412);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3061956786,7048179813,1658613899,8943575319);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1050885848,1769208488,4013436779,1400084741);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5129463021,1360471308,9882148395,5007928879);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4736957956,4025070472,3564245944,791920445);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2273196687,9206801538,4502083208,221816836);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8394371752,3713305595,5337758691,8629376945);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7880490140,7866523061,6910897846,2251206310);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (878125205,6819996128,3780151359,2011031664);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5097415450,9232066084,4550784326,2405642980);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2045638685,3039400126,8100902534,2983137899);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8335418500,126297819,6455129059,6637979341);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4491293104,5651462198,1164397826,5407408554);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2968982842,9065729194,8235434148,9145132062);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6423578249,3517588989,7542145533,3169489550);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3887127269,9435616798,3383146766,815326726);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6635649166,6584891771,8721613753,5342680697);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2083896068,6084355099,9307407150,2856934358);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (761779086,2823170448,1827929553,8770214395);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3930303957,6410179871,117730785,6598298792);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6719310283,3986468862,8456321192,6063695044);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5985212416,2293534340,5650803048,3360896726);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5760082639,8621079631,3446849440,6271201644);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2451048271,8252416594,2444085302,7931745574);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4752572001,8787066025,1802782729,5462864949);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6276115355,7544148254,8077683126,523808445);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5023869733,9730397341,7698644421,2568911905);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2430203170,572719663,2811577637,645718556);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5590284724,9980125284,9317200877,2401666354);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4746773491,5255769002,3488885216,174667906);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8328648547,3446003452,8935655813,6178840314);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1414932553,4696262391,8960055611,5974835514);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7176028842,5547855707,1744090467,7234669205);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1745783946,7163912366,3661541358,1492190608);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2913141110,9598723836,4747725180,9605664089);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8797617105,1046900684,8801009348,1341758826);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (697859258,1197263799,775451037,1626780919);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9431428814,7211693908,9855773217,2817929152);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6348224996,2454447231,2632226007,5392019269);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3708835948,436056917,3386324452,9892519124);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (106564536,797510788,4828714693,9491552732);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2276890886,2391835264,2591101353,7329174483);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2374417034,9618837327,5619806669,437557227);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9988824750,6004763659,3410679820,7808412171);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6703119724,8772288388,2551004403,2281971104);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7735378394,7360457440,8857723798,2976381429);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1510577858,3643584784,8656946854,973069430);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9612913250,915589419,2085636586,5350042661);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (124516653,3311615131,1360092595,4527594141);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8631113999,8268765534,5343613470,4595470185);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2469292336,3367348872,8891750204,4665777349);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6077980706,6936214738,6024378335,8866449482);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6396409089,4529860612,6338502683,7706088324);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1726861635,4676993722,387798374,3525408838);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3495165797,1309510881,2025231571,261483625);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5454614254,4818174327,6330678650,7947116261);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (540541419,8917734014,9302207226,638890578);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8116866605,16724860,7127296987,6727901562);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3680611153,3858560367,4210828092,593306074);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9146953620,8252577695,5195827346,684594382);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2921365138,9127112683,5335662182,6636908246);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7404218306,7380148079,3798597758,6079485117);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (9032743880,6339340199,7999777080,3959696183);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6695788901,7230904358,3117065865,6532688754);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6975816077,3998325468,1765264774,2240144270);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7419833095,9332879621,6105638507,6495674562);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7527627190,8361190554,6387829496,767883586);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1910361771,2088362681,5808687276,6002724788);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (846916959,6082509978,4398907750,5764702380);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6000144377,4839263469,2002703817,4166844156);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5842502798,1810650860,1276151012,5763894162);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (6618206022,6978435546,5110667497,134664124);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4814791399,5093849219,518270165,7746573371);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (8317699668,5781348212,9873063404,7930648133);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (794870406,3821255234,836986644,9021104881);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (492904693,8073267292,4940220885,6244311744);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (1427900256,57518769,2745897500,114707243);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2442703343,1030367671,2318810168,4259672177);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (4306946681,8184669038,7807563176,1603497714);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3002566837,2409591930,7978270459,5074543770);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3529940445,5018026995,1863209514,8594897871);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2593958677,9922407027,8972845876,3589722355);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (401119432,9656610008,3173885295,4606085452);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (3298042676,1735611522,6744558749,9829779475);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (228537363,1922798517,9120744218,3535059763);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (5588689127,8582020880,2805336747,8429305122);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (897174348,4864496706,1077756577,3963670967);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (2282022440,5192542138,9906461233,667110836);
INSERT INTO Orders(O_Customer_ID,O_Order_ID,Service_ID,App_ID) VALUES (7244535147,2697712445,716880148,7592248611);

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

INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (20,14.05,2.25,9465906573,6961461808);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (69,22.13,3.43,1722837802,7906908899);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (21,27.33,1.61,4142264656,379973790);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (37,89.71,3.42,1139930567,8439379773);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (100,18.04,1.99,3841069754,1899052011);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (37,67.95,3.78,5342171865,5628656348);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (85,39.97,4.43,2468396189,9689127381);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (95,31.76,3.88,8875474982,6120256059);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (53,40.64,1.57,1848777523,9589036694);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (24,10.86,1.02,1993270019,6767156523);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (6,76.66,2.32,6067717425,5152193728);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (32,78.22,3.74,1847789544,7894489964);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (62,64.45,1.62,8494012665,7048179813);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (21,79.35,1.97,4678629963,1769208488);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (46,58.91,2.63,6849460714,1360471308);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (88,61.25,4.39,7855621717,4025070472);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (89,45.06,2.55,3561410073,9206801538);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (56,63.83,4.19,5386380230,3713305595);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (48,72.09,3.57,3689025354,7866523061);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (31,15.15,4.67,4603256787,6819996128);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (3,9.04,4.89,2115146670,9232066084);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (69,92.83,3.31,404920101,3039400126);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (46,19.61,1.46,1781061416,126297819);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (15,15.6,3.59,119284111,5651462198);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (70,82.85,1.59,6437101393,9065729194);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (80,69.22,2.88,4128692352,3517588989);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (2,92.8,4.16,3154036547,9435616798);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (5,67.97,3.12,5885616078,6584891771);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (73,51.7,2.65,7633268190,6084355099);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (64,26.22,1.5,7722746292,2823170448);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (57,17.4,4.96,991680049,6410179871);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (40,22.33,4.57,5125973009,3986468862);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (95,77.58,4.89,4826254075,2293534340);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (14,61.15,1.24,4913736035,8621079631);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (30,95.82,4.61,1054912866,8252416594);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (77,81.01,1.28,5685446888,8787066025);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (1,15.21,3.53,4106106280,7544148254);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (2,65.84,4.88,847146316,9730397341);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (5,10.77,1.96,5172287043,572719663);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (27,60.66,2.74,6337697316,9980125284);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (52,68.9,2.17,624779394,5255769002);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (47,24.17,2.23,6438675628,3446003452);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (84,56.23,3.61,7233951233,4696262391);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (40,75.86,4.3,4100054823,5547855707);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (57,76.74,3.75,1394307543,7163912366);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (33,65.87,2.05,7665041760,9598723836);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (24,45.91,4.7,8081210229,1046900684);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (48,67.34,1.88,5604316342,1197263799);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (84,29.05,2.09,3872267329,7211693908);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (83,66.41,3.09,5602309411,2454447231);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (1,61.36,4.77,8167081338,436056917);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (33,45.98,4.94,9733996858,797510788);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (2,91.54,3.82,2300938170,2391835264);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (92,84.74,1.13,898024714,9618837327);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (74,36.51,2.28,9109910700,6004763659);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (70,44.36,3.84,8583277885,8772288388);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (30,53.42,2.99,5582982752,7360457440);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (18,40.16,4.95,6358639137,3643584784);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (17,87.58,4.98,6371519565,915589419);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (22,70.66,1.82,883085925,3311615131);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (54,89.4,3.07,5034187043,8268765534);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (6,80.12,3.61,2258558956,3367348872);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (37,65.94,1.45,3676648080,6936214738);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (52,28,4.83,5777278515,4529860612);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (9,55.92,1.9,8819377314,4676993722);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (47,78.28,2.78,224849972,1309510881);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (50,76.01,4.12,2872305971,4818174327);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (70,95.67,1.68,7125062237,8917734014);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (53,43.24,1.51,1301504599,16724860);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (97,85.54,4.19,579938417,3858560367);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (67,66.87,1.16,3560080819,8252577695);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (100,74.58,3.9,5653439576,9127112683);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (63,53.8,3.88,8447818721,7380148079);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (74,99.56,3.19,3467466826,6339340199);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (95,2.85,4.76,2303880319,7230904358);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (35,49.34,4.59,7168743139,3998325468);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (40,64,2.47,918245729,9332879621);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (2,23.18,4.5,2083185927,8361190554);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (70,21.29,2.35,7372047609,2088362681);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (66,74.17,4.68,4273995247,6082509978);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (83,62.91,3.15,6249183027,4839263469);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (72,8.25,1.34,3266510232,1810650860);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (89,18.9,2.12,9959314715,6978435546);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (8,18.71,1.49,4530353613,5093849219);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (6,97.29,1.6,1748834657,5781348212);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (28,74.95,3.14,6796521072,3821255234);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (79,89.56,4.77,8289557426,8073267292);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (81,34.5,2.79,468479511,57518769);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (19,23.33,4.69,4403029272,1030367671);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (30,71.43,2.66,9105320461,8184669038);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (36,86.83,2.26,416721133,2409591930);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (23,56.53,2.97,5176333163,5018026995);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (63,31.36,4.57,53874072,9922407027);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (99,46.69,4.28,261798677,9656610008);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (44,42.18,2.79,5830435594,1735611522);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (48,48,1.98,3583426428,1922798517);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (97,97.88,4.47,4464161855,8582020880);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (46,72.93,3.67,8817928178,4864496706);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (65,75.36,2.84,4061637487,5192542138);
INSERT INTO Order_Details(Quantity,Discount,Unit_Price,OD_Order_ID,O_Order_ID) VALUES (50,65.24,1.73,85060364,2697712445);


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