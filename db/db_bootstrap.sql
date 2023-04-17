-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database `segmentify`

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on segmentify.* to 'webapp'@'%';
flush privileges;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to
-- change it here too. 
USE `segmentify`;

CREATE TABLE IF NOT EXISTS `The_Mavericks`
(
    `Headquarter_Address` varchar(100) NOT NULL,
    `Reviews`             LONGTEXT,
    `Phone`               varchar(50)  NOT NULL,
    `Location`            varchar(50)  NOT NULL,
    `Fax`                 varchar(50)  NOT NULL,
    `Home_Page`           varchar(100) NOT NULL,
    `Company_ID`          INTEGER      NOT NULL,
    `Contact_Title`       varchar(50)  NOT NULL,
    `Contact_Name`        varchar(50)  NOT NULL,
    `Company_Name`        varchar(50)  NOT NULL,
    PRIMARY KEY (`Company_ID`),
    UNIQUE INDEX `uq_idx_Phone` (`Phone`),
    UNIQUE INDEX `uq_idx_Fax` (`Fax`),
    INDEX `idx_Company_ID` (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');
INSERT INTO `The_Mavericks`(`Headquarter_Address`,`Reviews`,`Phone`,`Location`,`Fax`,`Home_Page`,`Company_ID`,`Contact_Title`,`Contact_Name`,`Company_Name`) VALUES ('624 Clemons Way','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','+1 (217) 868-4751','Springfield','+1 (314) 371-2620','http://home.pl/donec/ut/dolor/morbi.html?id=cubilia&nisl=curae&venenatis=donec&lacinia=pharetra&aenean=magna&sit=vestibulum&amet=aliquet&justo=ultrices&morbi=erat&ut=tortor&odio=sollicitudin&cras=mi&mi=sit&pede=amet&malesuada=lobortis&in=sapien&imperdiet=sapien&et=non&commodo=mi&vulputate=integer&justo=ac&in=neque&blandit=duis&ultrices=bibendum&enim=morbi&lorem=non&ipsum=quam&dolor=nec&sit=dui&amet=luctus&consectetuer=rutrum&adipiscing=nulla&elit=tellus&proin=in&interdum=sagittis&mauris=dui&non=vel&ligula=nisl&pellentesque=duis&ultrices=ac&phasellus=nibh&id=fusce',3104705100,'Mr','Terence Andrick','The Mavericks');


CREATE TABLE IF NOT EXISTS `Departments`
(
    `Company_ID`  INTEGER NOT NULL,
    `Dept_Name`   varchar(50),
    `Dept_Number` INTEGER AUTO_INCREMENT,
    PRIMARY KEY (`Company_ID`, `Dept_Name`, `Dept_Number`),
    CONSTRAINT `fk_1`
        FOREIGN KEY (`Company_ID`) REFERENCES `The_Mavericks` (`Company_ID`) ON DELETE cascade,
    INDEX `idx_Company_ID` (`Company_ID`),
    INDEX `idx_Name` (`Dept_Name`),
    INDEX `idx_Number` (`Dept_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Business Development',6650);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Creative Services',6651);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Customer Service',6652);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Accounting',6653);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Human Resources',6654);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Legal',6655);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Operations',6656);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Production',6657);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Risk Management',6658);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Marketing',6659);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Sales',6660);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Technology',6661);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'General Management',6662);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Engineering',6663);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Investor Relations',6664);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Product Management',6665);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Quality Assurance',6666);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Strategic Initiatives & Programs',6667);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Board of Directors',6668);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Research and Development',6669);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Training',6670);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Support',6671);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Asset Management',6672);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Project Management',6673);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'IT',6674);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Social Media',6675);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Client Relations Management',6676);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Corporate Communications',6677);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Sourcing',6678);
INSERT INTO `Departments`(`Company_ID`,`Dept_Name`,`Dept_Number`) VALUES (3104705100,'Inspection',6679);



CREATE TABLE IF NOT EXISTS `Internal_Employees`
(
    `First_Name`  varchar(50)  NOT NULL,
    `Last_Name`   varchar(50)  NOT NULL,
    `Int_Emp_ID`  INTEGER AUTO_INCREMENT,
    `Email`       varchar(100) NOT NULL,
    `City`        varchar(50)  NOT NULL,
    `State`       varchar(50)  NOT NULL,
    `Zip_Code`    INTEGER      NOT NULL,
    `Dept_Name`   varchar(50)  NOT NULL,
    `Dept_Number` INTEGER      NOT NULL,
    `Company_ID`  INTEGER      NOT NULL,
    `Sup_ID`      INTEGER      NOT NULL,
    PRIMARY KEY (`Int_Emp_ID`),
    CONSTRAINT `fk_2`
        FOREIGN KEY (`Dept_Name`) REFERENCES `Departments` (`Dept_Name`) ON DELETE cascade,
    CONSTRAINT `fk_3`
        FOREIGN KEY (`Dept_Number`) REFERENCES `Departments` (`Dept_Number`) ON DELETE cascade,
    CONSTRAINT `fk_4`
        FOREIGN KEY (`Company_ID`) REFERENCES `Departments` (`Company_ID`) ON DELETE cascade,
    CONSTRAINT `fk_5`
        FOREIGN KEY (`Sup_ID`) REFERENCES `Internal_Employees` (`Int_Emp_ID`) ON DELETE cascade,
    UNIQUE INDEX `uq_idx_Email` (`Email`),
    INDEX `idx_ID` (`Int_Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Trudie','Robbins',230,'trobbins0@weibo.com','Boston','Massachusetts',2208,'Business Development',6650,3104705100,230);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Kate','Kingstne',231,'kkingstne1@foxnews.com','Charleston','West Virginia',25336,'Creative Services',6651,3104705100,231);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Dickie','Ezzell',232,'dezzell2@sfgate.com','Charleston','South Carolina',29424,'Customer Service',6652,3104705100,232);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Adara','Kohrsen',233,'akohrsen3@accuweather.com','Vero Beach','Florida',32964,'Accounting',6653,3104705100,233);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Darcey','Ollerenshaw',234,'dollerenshaw4@ucoz.com','San Antonio','Texas',78255,'Human Resources',6654,3104705100,234);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Maighdiln','Thickpenny',235,'mthickpenny5@tamu.edu','Kansas City','Missouri',64153,'Legal',6655,3104705100,235);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Nichole','Dishman',236,'ndishman6@elegantthemes.com','Tucson','Arizona',85715,'Operations',6656,3104705100,236);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lavena','Cutcliffe',237,'lcutcliffe7@whitehouse.gov','Littleton','Colorado',80127,'Production',6657,3104705100,237);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Bea','Marrion',238,'bmarrion8@purevolume.com','Tampa','Florida',33686,'Risk Management',6658,3104705100,238);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Colleen','Tasch',239,'ctasch9@vimeo.com','Dallas','Texas',75277,'Marketing',6659,3104705100,239);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Meade','Bockler',240,'mbocklera@studiopress.com','Tyler','Texas',75799,'Sales',6660,3104705100,240);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Beau','Braferton',241,'bbrafertonb@un.org','Miami','Florida',33147,'Technology',6661,3104705100,241);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Corny','McNally',242,'cmcnallyc@princeton.edu','Augusta','Georgia',30911,'General Management',6662,3104705100,242);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Halie','Morsley',243,'hmorsleyd@apple.com','Milwaukee','Wisconsin',53277,'Engineering',6663,3104705100,243);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Glynnis','Soppett',244,'gsoppette@guardian.co.uk','Indianapolis','Indiana',46226,'Investor Relations',6664,3104705100,244);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Alonzo','Levecque',245,'alevecquef@domainmarket.com','New York City','New York',10203,'Product Management',6665,3104705100,245);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Belicia','Bracey',246,'bbraceyg@dagondesign.com','New York City','New York',10292,'Quality Assurance',6666,3104705100,246);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jannel','Starford',247,'jstarfordh@miibeian.gov.cn','Houston','Texas',77090,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Erich','Maultby',248,'emaultbyi@friendfeed.com','Minneapolis','Minnesota',55448,'Board of Directors',6668,3104705100,248);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Erica','Landsbury',249,'elandsburyj@ocn.ne.jp','Greensboro','North Carolina',27425,'Research and Development',6669,3104705100,249);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Joanie','Padwick',250,'jpadwickk@trellian.com','Shawnee Mission','Kansas',66215,'Training',6670,3104705100,250);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Tori','McGiffie',251,'tmcgiffiel@nps.gov','Jacksonville','Florida',32209,'Support',6671,3104705100,251);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Rosy','Trelevan',252,'rtrelevanm@weebly.com','Lubbock','Texas',79491,'Asset Management',6672,3104705100,252);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Simonette','Mintoft',253,'smintoftn@time.com','Spokane','Washington',99210,'Project Management',6673,3104705100,253);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jo-anne','Radenhurst',254,'jradenhursto@sun.com','Aurora','Illinois',60505,'IT',6674,3104705100,254);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Sheilakathryn','Witchalls',255,'switchallsp@prnewswire.com','Panama City','Florida',32405,'Social Media',6675,3104705100,255);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Cris','Haggidon',256,'chaggidonq@spiegel.de','Richmond','Virginia',23242,'Client Relations Management',6676,3104705100,256);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Junia','Gimblet',257,'jgimbletr@biglobe.ne.jp','Bronx','New York',10464,'Corporate Communications',6677,3104705100,257);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Leoine','Lumsdon',258,'llumsdons@blog.com','Manassas','Virginia',22111,'Sourcing',6678,3104705100,258);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Mellicent','Spiaggia',259,'mspiaggiat@skype.com','Pasadena','California',91199,'Inspection',6679,3104705100,259);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Sacha','Dulinty',260,'sdulintyu@yolasite.com','Houston','Texas',77035,'Business Development',6650,3104705100,230);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Pedro','Ambroise',261,'pambroisev@ocn.ne.jp','Minneapolis','Minnesota',55487,'Creative Services',6651,3104705100,231);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Samaria','Tomney',262,'stomneyw@engadget.com','Fort Worth','Texas',76110,'Customer Service',6652,3104705100,232);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Ola','Wind',263,'owindx@moonfruit.com','Pasadena','Texas',77505,'Accounting',6653,3104705100,233);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jessalin','Oliphand',264,'joliphandy@japanpost.jp','Beaverton','Oregon',97075,'Human Resources',6654,3104705100,234);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Johan','Dolton',265,'jdoltonz@intel.com','Van Nuys','California',91499,'Legal',6655,3104705100,235);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Josefina','Dionisio',266,'jdionisio10@example.com','Apache Junction','Arizona',85219,'Operations',6656,3104705100,236);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Selestina','Cornilleau',267,'scornilleau11@nsw.gov.au','Boulder','Colorado',80328,'Production',6657,3104705100,237);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Darrelle','Roxburch',268,'droxburch12@jigsy.com','San Bernardino','California',92415,'Risk Management',6658,3104705100,238);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Henrik','Hallihan',269,'hhallihan13@linkedin.com','Boulder','Colorado',80310,'Marketing',6659,3104705100,239);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Nev','Brogi',270,'nbrogi14@bing.com','Toledo','Ohio',43635,'Sales',6660,3104705100,240);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Shem','Hemeret',271,'shemeret15@spiegel.de','Los Angeles','California',90081,'Technology',6661,3104705100,241);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Gabie','Btham',272,'gbtham16@java.com','Shreveport','Louisiana',71115,'General Management',6662,3104705100,242);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Rachele','Essame',273,'ressame17@imageshack.us','Jackson','Mississippi',39204,'Engineering',6663,3104705100,243);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Renaud','Basant',274,'rbasant18@altervista.org','Suffolk','Virginia',23436,'Investor Relations',6664,3104705100,244);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Felita','Bodman',275,'fbodman19@g.co','Madison','Wisconsin',53785,'Product Management',6665,3104705100,245);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Britt','Leathart',276,'bleathart1a@nationalgeographic.com','Minneapolis','Minnesota',55428,'Quality Assurance',6666,3104705100,246);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Marthena','Tollett',277,'mtollett1b@dagondesign.com','Richmond','Virginia',23289,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Faunie','Pakes',278,'fpakes1c@hao123.com','Oklahoma City','Oklahoma',73157,'Board of Directors',6668,3104705100,248);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Nadeen','McFaul',279,'nmcfaul1d@odnoklassniki.ru','Iowa City','Iowa',52245,'Research and Development',6669,3104705100,249);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Glynda','Johns',280,'gjohns1e@github.com','Tallahassee','Florida',32314,'Training',6670,3104705100,250);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Paulita','Dumbellow',281,'pdumbellow1f@cam.ac.uk','Philadelphia','Pennsylvania',19104,'Support',6671,3104705100,251);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Arnoldo','Hailey',282,'ahailey1g@thetimes.co.uk','Fredericksburg','Virginia',22405,'Asset Management',6672,3104705100,252);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Shepperd','Benitti',283,'sbenitti1h@liveinternet.ru','Detroit','Michigan',48295,'Project Management',6673,3104705100,253);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Leslie','Jelf',284,'ljelf1i@youku.com','Topeka','Kansas',66667,'IT',6674,3104705100,254);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Chip','Lissandrini',285,'clissandrini1j@unblog.fr','New York City','New York',10150,'Social Media',6675,3104705100,255);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Teodorico','Philippsohn',286,'tphilippsohn1k@reuters.com','Cincinnati','Ohio',45249,'Client Relations Management',6676,3104705100,256);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Tiffani','Eliesco',287,'teliesco1l@nsw.gov.au','Palm Bay','Florida',32909,'Corporate Communications',6677,3104705100,257);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lacy','Aslen',288,'laslen1m@va.gov','Mansfield','Ohio',44905,'Sourcing',6678,3104705100,258);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Olivette','Jandera',289,'ojandera1n@google.cn','Baton Rouge','Louisiana',70810,'Inspection',6679,3104705100,259);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Ewart','Sergean',290,'esergean1o@bloomberg.com','Saint Cloud','Minnesota',56372,'Business Development',6650,3104705100,230);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jamill','Trowsdale',291,'jtrowsdale1p@engadget.com','New York City','New York',10105,'Creative Services',6651,3104705100,231);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Fletch','Pedro',292,'fpedro1q@jalbum.net','Fort Worth','Texas',76147,'Customer Service',6652,3104705100,232);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Melanie','Gawne',293,'mgawne1r@vimeo.com','El Paso','Texas',79994,'Accounting',6653,3104705100,233);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Kimberly','Petschel',294,'kpetschel1s@mashable.com','Tacoma','Washington',98442,'Human Resources',6654,3104705100,234);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Mariana','Fardon',295,'mfardon1t@altervista.org','Miami','Florida',33261,'Legal',6655,3104705100,235);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lydon','Beckitt',296,'lbeckitt1u@blogger.com','Metairie','Louisiana',70005,'Operations',6656,3104705100,236);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Zacharias','Yoselevitch',297,'zyoselevitch1v@shinystat.com','New Orleans','Louisiana',70183,'Production',6657,3104705100,237);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Danny','Wickrath',298,'dwickrath1w@weibo.com','New York City','New York',10125,'Risk Management',6658,3104705100,238);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Tate','Fiddiman',299,'tfiddiman1x@netlog.com','Albuquerque','New Mexico',87190,'Marketing',6659,3104705100,239);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lillian','Vearncomb',300,'lvearncomb1y@goo.ne.jp','Fairbanks','Alaska',99709,'Sales',6660,3104705100,240);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Maddy','Takos',301,'mtakos1z@jigsy.com','Montgomery','Alabama',36119,'Technology',6661,3104705100,241);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Pen','Buxey',302,'pbuxey20@phoca.cz','South Bend','Indiana',46634,'General Management',6662,3104705100,242);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jard','Dawes',303,'jdawes21@google.pl','Chicago','Illinois',60663,'Engineering',6663,3104705100,243);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Berget','Pennycuick',304,'bpennycuick22@hp.com','Austin','Texas',78769,'Investor Relations',6664,3104705100,244);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Reese','De la Yglesia',305,'rdelayglesia23@nhs.uk','Inglewood','California',90310,'Product Management',6665,3104705100,245);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Sharon','O''Loghlen',306,'sologhlen24@jigsy.com','Kansas City','Missouri',64153,'Quality Assurance',6666,3104705100,246);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Karlik','Barnhart',307,'kbarnhart25@altervista.org','Pittsburgh','Pennsylvania',15230,'Strategic Initiatives & Programs',6667,3104705100,247);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Aleda','Clissett',308,'aclissett26@seesaa.net','Chandler','Arizona',85246,'Board of Directors',6668,3104705100,248);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lacey','Arsmith',309,'larsmith27@paginegialle.it','Denver','Colorado',80299,'Research and Development',6669,3104705100,249);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Anestassia','Le Provost',310,'aleprovost28@vkontakte.ru','Louisville','Kentucky',40210,'Training',6670,3104705100,250);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Cathe','McDarmid',311,'cmcdarmid29@columbia.edu','Winston Salem','North Carolina',27110,'Support',6671,3104705100,251);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Netty','Baskwell',312,'nbaskwell2a@jimdo.com','Portsmouth','New Hampshire',3804,'Asset Management',6672,3104705100,252);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lula','Westlake',313,'lwestlake2b@princeton.edu','Little Rock','Arkansas',72215,'Project Management',6673,3104705100,253);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Lucita','Rowet',314,'lrowet2c@yellowbook.com','Jacksonville','Florida',32225,'IT',6674,3104705100,254);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Angil','Ashbolt',315,'aashbolt2d@chron.com','Houston','Texas',77075,'Social Media',6675,3104705100,255);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Tod','Paige',316,'tpaige2e@altervista.org','Fresno','California',93794,'Client Relations Management',6676,3104705100,256);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Udale','Gatling',317,'ugatling2f@wikispaces.com','Los Angeles','California',90035,'Corporate Communications',6677,3104705100,257);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Eulalie','Dowzell',318,'edowzell2g@cdbaby.com','Fresno','California',93726,'Sourcing',6678,3104705100,258);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Cordelie','Couves',319,'ccouves2h@telegraph.co.uk','Roanoke','Virginia',24040,'Inspection',6679,3104705100,259);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Maggie','Cowterd',320,'mcowterd2i@pbs.org','Saint Paul','Minnesota',55188,'Business Development',6650,3104705100,230);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Jemmy','Fanthome',321,'jfanthome2j@whitehouse.gov','El Paso','Texas',79968,'Creative Services',6651,3104705100,231);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Warner','Linke',322,'wlinke2k@wikia.com','Bryan','Texas',77806,'Customer Service',6652,3104705100,232);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Samuel','Nyssens',323,'snyssens2l@msu.edu','Fort Lauderdale','Florida',33345,'Accounting',6653,3104705100,233);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Talbert','Confait',324,'tconfait2m@howstuffworks.com','Montgomery','Alabama',36134,'Human Resources',6654,3104705100,234);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Ginevra','Flawn',325,'gflawn2n@blogtalkradio.com','Baltimore','Maryland',21275,'Legal',6655,3104705100,235);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Carrissa','Beushaw',326,'cbeushaw2o@cmu.edu','Milwaukee','Wisconsin',53215,'Operations',6656,3104705100,236);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Willey','Beesley',327,'wbeesley2p@xing.com','Homestead','Florida',33034,'Production',6657,3104705100,237);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Wallas','Itzkin',328,'witzkin2q@privacy.gov.au','Omaha','Nebraska',68117,'Risk Management',6658,3104705100,238);
INSERT INTO `Internal_Employees`(`First_Name`,`Last_Name`,`Int_Emp_ID`,`Email`,`City`,`State`,`Zip_Code`,`Dept_Name`,`Dept_Number`,`Company_ID`,`Sup_ID`) VALUES ('Aindrea','Landsbury',329,'alandsbury2r@webmd.com','New York City','New York',10270,'Marketing',6659,3104705100,239);


CREATE TABLE IF NOT EXISTS `Projects`
(
    `Proj_Name`   varchar(50),
    `Proj_Number` INTEGER AUTO_INCREMENT,
    `Location`    varchar(50) NOT NULL,
    `Dept_Name`   varchar(50) NOT NULL,
    `Dept_Number` INTEGER     NOT NULL,
    `Company_ID`  INTEGER     NOT NULL,
    PRIMARY KEY (`Proj_Name`, `Proj_Number`),
    CONSTRAINT `fk_6`
        FOREIGN KEY (`Dept_Name`) REFERENCES `Departments` (`Dept_Name`) ON DELETE restrict,
    CONSTRAINT `fk_7`
        FOREIGN KEY (`Dept_Number`) REFERENCES `Departments` (`Dept_Number`) ON DELETE restrict,
    CONSTRAINT `fk_8`
        FOREIGN KEY (`Company_ID`) REFERENCES `Departments` (`Company_ID`) ON DELETE restrict,
    INDEX `idx_Name` (`Proj_Name`),
    INDEX `idx_Number` (`Proj_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Stringtough',6979973606,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Sonsing',2209113997,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Keylex',6943598260,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Overhold',2605141845,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Andalax',9045926474,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bitwolf',1052774504,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Veribet',2634670931,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fix San',9547222880,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fintone',5946486527,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Quo Lux',6625287482,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Prodder',2721203053,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Regrant',4568330955,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tin',9333446931,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Regrant',2300584980,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Sub-Ex',341198889,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bamity',9119007140,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tres-Zap',2494007852,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Temp',3554011363,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Keylex',3276785781,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Mat Lam Tam',2082185141,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Prodder',4276820790,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Stringtough',5037460085,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Alpha',6890237269,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Temp',2975101260,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bytecard',4015004434,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fixflex',2315990335,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Andalax',2538890438,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Job',8660703197,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fix San',9888217461,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tres-Zap',4075384942,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bitchip',6105193408,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Redhold',8203902413,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fixflex',8097451158,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Quo Lux',8789659570,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Voltsillam',7523540953,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fixflex',1143304888,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Zathin',3382990679,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Cookley',5378571456,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bitwolf',2452595950,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Viva',4612663543,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Zoolab',2710056046,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Pannier',922989400,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Sonair',8656013181,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tempsoft',5260361830,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Konklux',3641125626,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Kanlam',3357009323,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Zaam-Dox',7641929826,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Namfix',5231717266,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Otcom',6527201893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Solarbreeze',9254280259,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Trippledex',6587593445,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Treeflex',5151673505,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Latlux',756547156,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Sub-Ex',2870498632,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Konklab',6009317967,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Opela',5059052591,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Sonsing',6149453979,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Temp',4140576944,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Y-find',3499705214,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tin',8674351824,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Zaam-Dox',5580825285,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Pannier',1693822199,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bigtax',1173097945,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Overhold',4157122321,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Duobam',5958219065,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Daltfresh',3506105876,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Toughjoyfax',650567439,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Bytecard',8505490584,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Cookley',7305830275,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Veribet',6993200481,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Gembucket',9888370685,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Stronghold',1670795578,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Rank',223110175,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Opela',6326906776,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Subin',6968976390,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Voyatouch',1119132746,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Vagram',218500866,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Flexidy',3461565903,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Trippledex',1103561251,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Flowdesk',8952354893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Overhold',9968441341,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Domainer',1755065116,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Alpha',325348596,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Cookley',3487428709,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Trippledex',2460797346,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Zaam-Dox',5132946895,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Gembucket',7352663452,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Alpha',4121403657,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Fixflex',5773571919,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tresom',4125992983,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Tin',8640622930,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Redhold',6017608991,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Prodder',3045881068,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Wrapsafe',9631159353,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Gembucket',5600107005,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Greenlam',2201149240,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Trippledex',812798899,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Alpha',5169797893,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Otcom',7615924243,'11th Floor','Research and Development',6669,3104705100);
INSERT INTO `Projects`(`Proj_Name`,`Proj_Number`,`Location`,`Dept_Name`,`Dept_Number`,`Company_ID`) VALUES ('Y-Solowarm',2809979111,'11th Floor','Research and Development',6669,3104705100);


CREATE TABLE IF NOT EXISTS `Int_Emp_Proj`
(
    `Int_Emp_ID`  INTEGER     NOT NULL,
    `Proj_Name`  varchar(50) NOT NULL,
    `Proj_Number` INTEGER     NOT NULL,
    PRIMARY KEY (`Int_Emp_ID`, `Proj_Name`, `Proj_Number`),
    CONSTRAINT `fk_9`
        FOREIGN KEY (`Int_Emp_ID`) REFERENCES `Internal_Employees` (`Int_Emp_ID`) ON DELETE cascade,
    CONSTRAINT `fk_10`
        FOREIGN KEY (`Proj_Name`) REFERENCES `Projects` (`Proj_Name`) ON DELETE cascade,
    CONSTRAINT `fk_11`
        FOREIGN KEY (`Proj_Number`) REFERENCES `Projects` (`Proj_Number`) ON DELETE cascade,
    INDEX `idx_ID` (`Int_Emp_ID`),
    INDEX `idx_Proj_Name` (`Proj_Name`),
    INDEX `idx_Proj_Number` (`Proj_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (230,'Stringtough',6979973606);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (231,'Sonsing',2209113997);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (232,'Keylex',6943598260);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (233,'Overhold',2605141845);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (234,'Andalax',9045926474);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (235,'Bitwolf',1052774504);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (236,'Veribet',2634670931);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (237,'Fix San',9547222880);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (238,'Fintone',5946486527);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (239,'Quo Lux',6625287482);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (240,'Prodder',2721203053);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (241,'Regrant',4568330955);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (242,'Tin',9333446931);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (243,'Regrant',2300584980);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (244,'Sub-Ex',341198889);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (245,'Bamity',9119007140);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (246,'Tres-Zap',2494007852);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (247,'Temp',3554011363);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (248,'Keylex',3276785781);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (249,'Mat Lam Tam',2082185141);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (250,'Prodder',4276820790);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (251,'Stringtough',5037460085);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (252,'Alpha',6890237269);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (253,'Temp',2975101260);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (254,'Bytecard',4015004434);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (255,'Fixflex',2315990335);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (256,'Andalax',2538890438);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (257,'Job',8660703197);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (258,'Fix San',9888217461);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (259,'Tres-Zap',4075384942);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (260,'Bitchip',6105193408);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (261,'Redhold',8203902413);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (262,'Fixflex',8097451158);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (263,'Quo Lux',8789659570);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (264,'Voltsillam',7523540953);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (265,'Fixflex',1143304888);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (266,'Zathin',3382990679);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (267,'Cookley',5378571456);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (268,'Bitwolf',2452595950);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (269,'Viva',4612663543);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (270,'Zoolab',2710056046);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (271,'Pannier',922989400);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (272,'Sonair',8656013181);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (273,'Tempsoft',5260361830);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (274,'Konklux',3641125626);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (275,'Kanlam',3357009323);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (276,'Zaam-Dox',7641929826);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (277,'Namfix',5231717266);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (278,'Otcom',6527201893);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (279,'Solarbreeze',9254280259);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (280,'Trippledex',6587593445);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (281,'Treeflex',5151673505);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (282,'Latlux',756547156);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (283,'Sub-Ex',2870498632);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (284,'Konklab',6009317967);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (285,'Opela',5059052591);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (286,'Sonsing',6149453979);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (287,'Temp',4140576944);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (288,'Y-find',3499705214);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (289,'Tin',8674351824);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (290,'Zaam-Dox',5580825285);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (291,'Pannier',1693822199);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (292,'Bigtax',1173097945);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (293,'Overhold',4157122321);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (294,'Duobam',5958219065);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (295,'Daltfresh',3506105876);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (296,'Toughjoyfax',650567439);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (297,'Bytecard',8505490584);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (298,'Cookley',7305830275);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (299,'Veribet',6993200481);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (300,'Gembucket',9888370685);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (301,'Stronghold',1670795578);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (302,'Rank',223110175);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (303,'Opela',6326906776);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (304,'Subin',6968976390);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (305,'Voyatouch',1119132746);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (306,'Vagram',218500866);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (307,'Flexidy',3461565903);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (308,'Trippledex',1103561251);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (309,'Flowdesk',8952354893);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (310,'Overhold',9968441341);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (311,'Domainer',1755065116);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (312,'Alpha',325348596);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (313,'Cookley',3487428709);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (314,'Trippledex',2460797346);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (315,'Zaam-Dox',5132946895);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (316,'Gembucket',7352663452);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (317,'Alpha',4121403657);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (318,'Fixflex',5773571919);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (319,'Tresom',4125992983);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (320,'Tin',8640622930);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (321,'Redhold',6017608991);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (322,'Prodder',3045881068);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (323,'Wrapsafe',9631159353);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (324,'Gembucket',5600107005);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (325,'Greenlam',2201149240);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (326,'Trippledex',812798899);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (327,'Alpha',5169797893);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (328,'Otcom',7615924243);
INSERT INTO `Int_Emp_Proj`(`Int_Emp_ID`,`Proj_Name`,`Proj_Number`) VALUES (329,'Y-Solowarm',2809979111);

CREATE TABLE IF NOT EXISTS `Dept_Locs`
(
    `Dept_Name`   varchar(50) NOT NULL,
    `Dept_Number` INTEGER     NOT NULL,
    `Company_ID`  INTEGER     NOT NULL,
    `Location`    varchar(50) NOT NULL,
    PRIMARY KEY (`Dept_Name`, `Dept_Number`, `Company_ID`, `Location`),
    CONSTRAINT `fk_12`
        FOREIGN KEY (`Dept_Name`) REFERENCES `Departments` (`Dept_Name`) ON DELETE cascade,
    CONSTRAINT `fk_13`
        FOREIGN KEY (`Dept_Number`) REFERENCES `Departments` (`Dept_Number`) ON DELETE cascade,
    CONSTRAINT `fk_14`
        FOREIGN KEY (`Company_ID`) REFERENCES `Departments` (`Company_ID`) ON DELETE cascade,
    INDEX `idx_Dept_Name` (`Dept_Name`),
    INDEX `idx_Dept_Number` (`Dept_Number`),
    INDEX `idx_Company_ID` (`Company_ID`),
    INDEX `idx_Location` (`Location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Business Development',6650,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Creative Services',6651,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Customer Service',6652,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Accounting',6653,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Human Resources',6654,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Legal',6655,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Operations',6656,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Production',6657,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Risk Management',6658,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Marketing',6659,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Sales',6660,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Technology',6661,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('General Management',6662,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Engineering',6663,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Investor Relations',6664,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Product Management',6665,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Quality Assurance',6666,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Strategic Initiatives & Programs',6667,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Board of Directors',6668,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Research and Development',6669,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Training',6670,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Support',6671,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Asset Management',6672,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Project Management',6673,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('IT',6674,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Social Media',6675,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Client Relations Management',6676,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Corporate Communications',6677,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Sourcing',6678,3104705100,'Springfield');
INSERT INTO `Dept_Locs`(`Dept_Name`,`Dept_Number`,`Company_ID`,`Location`) VALUES ('Inspection',6679,3104705100,'Springfield');



CREATE TABLE IF NOT EXISTS `Dependents`
(
    `Int_Emp_ID`    INTEGER     NOT NULL,
    `Depend_Number` INTEGER AUTO_INCREMENT,
    `Depend_Name`   varchar(50) NOT NULL,
    `Gender`        varchar(50),
    `Relationship`  varchar(50) NOT NULL,
    PRIMARY KEY (`Int_Emp_ID`, `Depend_Number`),
    CONSTRAINT `fk_16`
        FOREIGN KEY (`Int_Emp_ID`) REFERENCES `Internal_Employees` (`Int_Emp_ID`) ON DELETE cascade,
    INDEX `idx_ID` (`Int_Emp_ID`),
    INDEX `idx_number` (`Depend_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (230,580,'Carson Delue','Male','vulputate nonummy');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (231,581,'Tobye Ida','Female','at');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (232,582,'Merrill Halsall','Male','dis parturient');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (233,583,'Winslow Negro','Male','proin');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (234,584,'Steward Eckersley','Male','et magnis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (235,585,'Ham Valentinuzzi','Male','nulla tellus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (236,586,'Rouvin Henner','Male','lectus vestibulum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (237,587,'Miner Dohmer','Male','turpis elementum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (238,588,'Barclay Bernakiewicz','Male','suspendisse');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (239,589,'Lowe Faltin','Agender','donec');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (240,590,'Fanni Houchin','Female','ante ipsum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (241,591,'Caleb Marlin','Male','in');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (242,592,'Katharina Pryke','Female','in libero');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (243,593,'Galina Jerrand','Non-binary','faucibus cursus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (244,594,'Tome Bathowe','Male','duis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (245,595,'Ramsey Jedrychowski','Male','in');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (246,596,'Ranee Verne','Female','nisl duis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (247,597,'Reg Forlonge','Male','tellus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (248,598,'Emile Douche','Genderfluid','nulla');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (249,599,'Farica Grouvel','Female','congue');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (250,600,'Lucia Hadye','Female','pellentesque at');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (251,601,'Lance Willis','Male','sed');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (252,602,'Alley Spikings','Male','pretium');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (253,603,'Cordy Santori','Female','integer tincidunt');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (254,604,'Ursala Hemeret','Female','erat volutpat');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (255,605,'Inez Alexander','Female','id');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (256,606,'Lilli Schermick','Genderfluid','duis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (257,607,'Glenn Lepick','Genderfluid','pede malesuada');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (258,608,'Delly Iacovini','Female','nunc');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (259,609,'Auroora MacSorley','Female','ut tellus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (260,610,'Sarina Sowden','Female','cubilia curae');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (261,611,'Mollee Krolik','Female','est');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (262,612,'Marabel Collishaw','Non-binary','massa');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (263,613,'Oralie Give','Female','in est');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (264,614,'Risa Troman','Female','posuere cubilia');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (265,615,'Felike Garcia','Bigender','libero');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (266,616,'Tadeas Russo','Male','fusce');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (267,617,'Drusi Geake','Female','elit');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (268,618,'Phillis Cruse','Genderfluid','consequat metus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (269,619,'Zeb Hourihan','Non-binary','felis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (270,620,'Quinton Hamblen','Male','nibh');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (271,621,'Rolando Rigney','Male','quis libero');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (272,622,'Brannon McKeefry','Male','ultrices posuere');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (273,623,'Gunner McLeman','Male','potenti nullam');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (274,624,'Estelle Gravenell','Female','orci');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (275,625,'Mari Frodsham','Female','pellentesque at');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (276,626,'Zsa zsa D''Adda','Female','cubilia');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (277,627,'Fabio Klemke','Male','at');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (278,628,'Oliviero Tebbutt','Male','at turpis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (279,629,'Mozes Pankhurst.','Male','molestie');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (280,630,'Angele Patience','Genderqueer','at velit');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (281,631,'Sheff Marran','Male','lacus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (282,632,'Geno Murrey','Male','mauris ullamcorper');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (283,633,'Martainn Downgate','Polygender','nunc viverra');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (284,634,'Gusta Couroy','Female','ante');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (285,635,'Roze Thunnercliff','Female','id ornare');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (286,636,'Trace Wibberley','Polygender','eu');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (287,637,'Kaiser Karpman','Male','at diam');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (288,638,'Obediah Rowantree','Male','cubilia curae');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (289,639,'Gilemette Craw','Agender','at nulla');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (290,640,'Chas Bissatt','Male','integer');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (291,641,'Amber Davisson','Female','rhoncus');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (292,642,'Horst O''Feeny','Male','mattis nibh');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (293,643,'Wilek Reape','Male','duis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (294,644,'Melamie Freshwater','Female','semper');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (295,645,'Kelsey Learmond','Female','tincidunt');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (296,646,'Whitby Reasce','Male','ipsum dolor');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (297,647,'Chane Putten','Male','ac leo');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (298,648,'Brooke Mardall','Polygender','a');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (299,649,'Brander Veneur','Male','vitae');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (300,650,'Frederic Caunce','Male','vestibulum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (301,651,'Silvano Pickworth','Genderfluid','felis sed');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (302,652,'Haze Crichley','Male','habitasse');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (303,653,'Auberon Albasiny','Male','sed vel');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (304,654,'Witty Dunne','Male','cum sociis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (305,655,'Aldon McGrady','Bigender','odio in');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (306,656,'Egon Wraggs','Male','sapien');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (307,657,'Von Pawling','Male','pede');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (308,658,'Corrianne Fullom','Female','magna');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (309,659,'Yank Ionnisian','Male','diam vitae');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (310,660,'David Davey','Male','feugiat et');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (311,661,'Jerrie Bemand','Female','at dolor');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (312,662,'Toby House','Male','mauris non');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (313,663,'Yancey Bradburn','Male','interdum venenatis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (314,664,'Benson Yakubowicz','Male','dignissim vestibulum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (315,665,'Mathilde Le Provest','Female','turpis nec');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (316,666,'Dalston Vittel','Male','quisque id');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (317,667,'Flynn Willshee','Male','tincidunt');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (318,668,'Elvyn Roskrug','Male','felis sed');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (319,669,'Tommy Kelway','Female','congue etiam');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (320,670,'Rania Haugeh','Female','augue');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (321,671,'Vergil Brownlea','Male','libero quis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (322,672,'Kaleb Capelle','Male','quam');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (323,673,'Ches Umpleby','Male','magna vestibulum');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (324,674,'Knox Ferraro','Male','augue');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (325,675,'Alejandrina Schiefersten','Female','odio');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (326,676,'Hildagarde Wringe','Female','curabitur convallis');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (327,677,'Jarrod Tolworth','Male','pulvinar');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (328,678,'Carmon Farrow','Female','ultrices');
INSERT INTO `Dependents`(`Int_Emp_ID`,`Depend_Number`,`Depend_Name`,`Gender`,`Relationship`) VALUES (329,679,'Moe Uttridge','Male','id');



CREATE TABLE IF NOT EXISTS `Prospective_Clients`
(
    `Company_Name`        varchar(50) NOT NULL,
    `Contact_Title`       varchar(50) NOT NULL,
    `Contact_Name`        varchar(50) NOT NULL,
    `Headquarter_Address` varchar(50) NOT NULL,
    `Email`               varchar(50) NOT NULL,
    `Fax`                 varchar(50) NOT NULL,
    `Phone`               varchar(50) NOT NULL,
    `Prosp_Client_ID`     INTEGER AUTO_INCREMENT,
    PRIMARY KEY (`Prosp_Client_ID`),
    UNIQUE INDEX `uq_idx_Email` (`Email`),
    UNIQUE INDEX `uq_idx_Fax` (`Fax`),
    UNIQUE INDEX `uq_idx_Phone` (`Phone`),
    INDEX `idx_Prosp_Client_ID` (`Prosp_Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Flipstorm','Rev','Wainwright Tacey','8 Merchant Place','wtacey0@csmonitor.com','+63 (207) 228-1260','+63 (234) 291-4917',2236025599);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Divape','Honorable','Oswell Hannant','00 Alpine Terrace','ohannant1@lulu.com','+351 (974) 635-3029','+46 (704) 718-0108',4771435731);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Tanoodle','Mr','Roosevelt Caffery','3 Loeprich Center','rcaffery2@people.com.cn','+389 (503) 861-7417','+48 (392) 847-7563',8945823166);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Trilith','Ms','Alidia Vern','671 Merchant Trail','avern3@about.me','+237 (836) 409-7322','+86 (470) 202-1068',3598540787);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Yodoo','Honorable','Garland Figgins','062 Clyde Gallagher Road','gfiggins4@youtube.com','+33 (827) 416-4305','+86 (822) 401-8689',5532260761);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Edgetag','Honorable','Carlyn Bantick','8806 Basil Parkway','cbantick5@businesswire.com','+380 (101) 702-9036','+52 (681) 163-1190',7714328193);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Jabbertype','Honorable','Denny Ellershaw','5 Southridge Center','dellershaw6@oakley.com','+423 (344) 794-1947','+55 (467) 200-6988',2974294278);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Riffpedia','Honorable','Woody Tatlock','76821 Karstens Way','wtatlock7@wunderground.com','+86 (484) 483-9964','+63 (556) 637-2943',3263142879);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Jatri','Dr','Johna Thornborrow','806 Hollow Ridge Avenue','jthornborrow8@csmonitor.com','+353 (951) 496-6316','+234 (582) 748-2829',7853502575);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Tagopia','Dr','Laureen Mabb','86713 North Plaza','lmabb9@infoseek.co.jp','+7 (649) 251-9147','+86 (833) 331-8054',0567485951);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Bluejam','Ms','Avivah Smethurst','59089 Hallows Lane','asmethursta@ox.ac.uk','+357 (377) 637-7631','+86 (337) 996-7437',1174425458);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Jetwire','Dr','Marion Caulier','56 Northridge Parkway','mcaulierb@sun.com','+374 (506) 967-3784','+51 (651) 752-4014',8700622001);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Jabberstorm','Dr','Gillie Guiu','2 Warner Circle','gguiuc@github.io','+351 (326) 988-4594','+62 (862) 244-8307',0225799812);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voomm','Mrs','Mathilde Budgey','9369 Golf Trail','mbudgeyd@google.pl','+48 (139) 188-5939','+230 (620) 752-0459',9166283302);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Yozio','Mrs','Cristie Toombes','3 Lukken Parkway','ctoombese@unblog.fr','+48 (517) 195-7787','+86 (493) 776-8526',8784378778);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voonte','Dr','Howie Biesterfeld','37 Doe Crossing Plaza','hbiesterfeldf@goo.gl','+63 (332) 234-7315','+358 (921) 397-0768',6867534198);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Mita','Mrs','Idelle Kinnoch','197 Little Fleur Drive','ikinnochg@scientificamerican.com','+39 (178) 603-2512','+591 (960) 869-1947',3371738191);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('LiveZ','Ms','Eveleen Adamovitch','5 Susan Place','eadamovitchh@army.mil','+255 (270) 388-8078','+222 (629) 734-7147',9485808682);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voonder','Mrs','Putnam Blakebrough','31 Wayridge Street','pblakebroughi@google.co.jp','+352 (738) 420-5125','+33 (715) 693-5193',6609210217);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Topicstorm','Mrs','Simona Desorts','59654 Bunting Court','sdesortsj@wufoo.com','+82 (623) 997-3607','+1 (634) 385-1325',7041062775);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Divanoodle','Honorable','Alanah Vigours','2087 Porter Trail','avigoursk@reddit.com','+86 (839) 741-4139','+1 (619) 355-9529',6117699034);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Wikido','Dr','Johnnie Keir','2765 Portage Road','jkeirl@forbes.com','+55 (259) 163-7589','+86 (739) 324-1327',0770244661);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Feednation','Mrs','Jacquette Kerss','0 Veith Terrace','jkerssm@cloudflare.com','+66 (510) 505-2569','+86 (869) 631-4806',8116673416);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voomm','Ms','Keelby McGahern','27644 John Wall Park','kmcgahernn@berkeley.edu','+62 (938) 473-5781','+46 (970) 473-0061',0675556759);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhynyx','Mr','Cosimo Gisborne','802 Basil Point','cgisborneo@usnews.com','+66 (937) 593-6909','+86 (771) 845-6304',7698896994);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Bubblebox','Mr','Abbot Claughton','71528 Debra Crossing','aclaughtonp@deviantart.com','+62 (877) 979-8669','+86 (484) 903-5409',2230921711);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhynyx','Mrs','Marcellus Wrates','53879 West Parkway','mwratesq@shop-pro.jp','+62 (523) 213-7919','+595 (819) 903-6573',8394869270);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Skimia','Dr','Shaun Girtin','37 Golden Leaf Alley','sgirtinr@marriott.com','+86 (373) 534-3589','+92 (694) 356-3588',0875154573);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Realcube','Dr','Ferdie Trobey','675 Gerald Point','ftrobeys@mozilla.com','+86 (627) 770-2668','+63 (701) 415-6184',5771562955);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Meezzy','Mr','Corabelle Sutherley','31697 3rd Crossing','csutherleyt@dailymail.co.uk','+86 (591) 987-7699','+51 (896) 143-1554',6185142813);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Thoughtstorm','Mrs','Kristofor Maxfield','9720 Browning Center','kmaxfieldu@joomla.org','+7 (436) 992-1104','+62 (671) 460-8512',7125916309);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Plajo','Ms','Sid Connachan','09806 Ramsey Point','sconnachanv@com.com','+86 (837) 949-3700','+86 (716) 201-9950',2349454258);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Skyble','Ms','Karalee Stickens','90782 Mifflin Circle','kstickensw@cnbc.com','+56 (805) 890-3247','+380 (362) 723-5449',6493807506);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Kimia','Mr','Chaunce Wrathmall','490 Stuart Avenue','cwrathmallx@webs.com','+55 (601) 133-7908','+62 (938) 540-7954',8093969837);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Centidel','Rev','Cyrille Dunbabin','88 Killdeer Drive','cdunbabiny@about.com','+62 (934) 823-7652','+86 (237) 166-3565',9405641190);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Yodo','Mrs','Jeane Goodsal','7165 Longview Parkway','jgoodsalz@edublogs.org','+62 (156) 116-0861','+86 (962) 835-3547',3964277754);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Photojam','Mrs','Victoir Windle','631 Tomscot Drive','vwindle10@hatena.ne.jp','+86 (963) 101-9912','+47 (286) 760-2867',6688515199);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Centidel','Ms','Cilka Friedenbach','4988 Karstens Parkway','cfriedenbach11@ucoz.com','+62 (857) 629-7259','+66 (702) 386-7158',9037189539);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Realcube','Mr','Nichol Sproson','567 Logan Way','nsproson12@apple.com','+46 (841) 991-0278','+30 (619) 246-4243',9267413619);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhyzio','Mrs','Elden Irlam','5395 Vidon Terrace','eirlam13@ca.gov','+374 (467) 508-7574','+7 (719) 292-6769',6509622491);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhynoodle','Ms','Noam Gailor','09422 Crowley Parkway','ngailor14@icq.com','+54 (808) 340-6659','+86 (285) 697-9709',1518785468);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Fanoodle','Mr','Alisha Flaverty','96 Mayfield Junction','aflaverty15@comsenz.com','+62 (388) 456-6170','+7 (399) 636-0004',6104772366);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Fliptune','Honorable','Lita Abrami','14 Mccormick Place','labrami16@wsj.com','+62 (733) 225-9948','+351 (952) 491-1962',5451990204);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Zava','Dr','Rebecka Dysart','7797 Crest Line Terrace','rdysart17@blogger.com','+504 (532) 838-8484','+31 (298) 349-7849',2132770069);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhyloo','Mrs','Muriel Levitt','3925 Mayer Way','mlevitt18@economist.com','+389 (546) 231-7827','+63 (680) 698-4140',6243391841);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Quinu','Mrs','Mile Malthouse','2 Hermina Avenue','mmalthouse19@dion.ne.jp','+63 (474) 647-6951','+33 (192) 687-2369',9633950376);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voonte','Honorable','Donnamarie Ciccetti','4308 John Wall Circle','dciccetti1a@blogspot.com','+7 (675) 674-8751','+86 (837) 160-3659',4137906149);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voonyx','Dr','Mireille Seckom','8602 Nevada Center','mseckom1b@cpanel.net','+1 (918) 790-3483','+86 (287) 885-5784',2017824984);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Photojam','Ms','Bert Fiander','9438 Basil Terrace','bfiander1c@irs.gov','+86 (994) 249-1113','+375 (412) 569-5722',4120659798);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Thoughtmix','Mr','Hebert Dumphy','7815 Kipling Place','hdumphy1d@flickr.com','+233 (859) 987-0326','+375 (167) 643-5497',7510924146);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Youtags','Mrs','Westleigh Camell','109 Troy Trail','wcamell1e@nytimes.com','+62 (743) 408-3835','+7 (900) 621-5585',7426160289);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Oozz','Dr','Dom Stormont','35933 4th Way','dstormont1f@shop-pro.jp','+7 (604) 310-1136','+62 (495) 430-1353',1938318250);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Realpoint','Mrs','Doloritas Scragg','4 South Park','dscragg1g@rakuten.co.jp','+48 (549) 718-6003','+86 (108) 348-9928',2260282032);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Gigashots','Dr','Pippa Mathis','3381 Rusk Plaza','pmathis1h@arizona.edu','+63 (334) 539-4000','+420 (329) 251-9926',1096533456);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Fanoodle','Ms','Tania Sandifer','091 Melvin Point','tsandifer1i@paypal.com','+54 (524) 793-6342','+298 (345) 464-4413',3304980091);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Twitterwire','Mr','Vassili Pidwell','9 Troy Lane','vpidwell1j@goodreads.com','+62 (897) 331-9911','+351 (784) 873-9490',1028645872);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Rhynoodle','Rev','Dallis McManamon','69 Lakeland Pass','dmcmanamon1k@vinaora.com','+86 (725) 941-5949','+62 (802) 159-6766',5457123367);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Topicshots','Mrs','Taddeusz Marskell','6 Messerschmidt Court','tmarskell1l@utexas.edu','+48 (947) 680-7969','+420 (934) 704-9499',6340300170);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Tagtune','Ms','Chic Burnitt','0683 Larry Alley','cburnitt1m@berkeley.edu','+7 (902) 421-8861','+63 (111) 497-5169',4443330216);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Vinder','Dr','Shell Conre','65393 Crowley Junction','sconre1n@ucsd.edu','+55 (524) 968-6515','+381 (379) 621-0779',2373579510);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Ntag','Honorable','Moyna Guirard','11 Homewood Trail','mguirard1o@hp.com','+380 (553) 781-7883','+593 (344) 190-6004',2480137163);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Twitterbeat','Mr','Sammy Chapple','880 Del Mar Trail','schapple1p@forbes.com','+86 (843) 624-4366','+30 (279) 300-6117',6025057648);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('JumpXS','Rev','Isadora Lowseley','77187 Kipling Avenue','ilowseley1q@upenn.edu','+86 (291) 952-2597','+62 (927) 972-3412',9251492808);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Voonte','Mrs','Rossie Deetlefs','29578 Forest Parkway','rdeetlefs1r@edublogs.org','+31 (148) 191-9813','+374 (419) 635-8319',7493803617);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Oba','Rev','Virginie Kleinplac','7 South Trail','vkleinplac1s@nasa.gov','+995 (782) 373-0740','+84 (481) 274-9668',8262859855);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Topdrive','Dr','Charlena De Domenico','8091 Linden Crossing','cde1t@huffingtonpost.com','+351 (627) 194-8229','+976 (400) 582-0252',5025039827);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Wordpedia','Dr','Derron Eary','79 Melby Court','deary1u@smh.com.au','+62 (566) 248-0777','+55 (465) 678-9883',1590220242);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Tagcat','Rev','Trenna Mulmuray','74066 Schmedeman Parkway','tmulmuray1v@squarespace.com','+212 (710) 508-6469','+886 (117) 750-6061',5610096081);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Yotz','Dr','Daron Telezhkin','08 Dryden Street','dtelezhkin1w@mashable.com','+55 (588) 911-1853','+251 (447) 234-3413',6421662765);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Meevee','Dr','Krystyna Schoffler','6 Cambridge Parkway','kschoffler1x@businesswire.com','+420 (561) 115-4267','+58 (158) 482-2057',5546621923);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Linkbridge','Honorable','Kalinda Verrill','82326 Superior Road','kverrill1y@nih.gov','+7 (259) 192-7665','+55 (433) 723-8746',6532042757);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Eamia','Honorable','Bibbye Featherstonehaugh','7 4th Avenue','bfeatherstonehaugh1z@ed.gov','+502 (526) 918-7450','+86 (874) 190-2143',3702927433);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('LiveZ','Ms','Marylynne Duval','3199 Lunder Hill','mduval20@is.gd','+86 (358) 482-7289','+52 (915) 469-6929',0071893709);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Twiyo','Mr','Goldina Matussov','8 Paget Pass','gmatussov21@addtoany.com','+7 (195) 270-0850','+55 (655) 454-1233',7246782478);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Youtags','Honorable','Benoit Whitmarsh','682 Debs Hill','bwhitmarsh22@tamu.edu','+62 (706) 804-1785','+420 (503) 953-9490',7185660394);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Browseblab','Dr','Frederigo Berthelet','3 Schmedeman Hill','fberthelet23@1688.com','+92 (944) 672-9269','+353 (827) 781-8745',8732628048);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Avaveo','Rev','Winny Rouke','059 Hoffman Drive','wrouke24@irs.gov','+7 (388) 117-5988','+226 (413) 965-3937',8422301520);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Topdrive','Ms','Salem Hinnerk','5605 Artisan Point','shinnerk25@springer.com','+33 (264) 938-6356','+505 (536) 463-6546',7004354393);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Yodel','Rev','Cherin McGlew','153 Rieder Court','cmcglew26@ftc.gov','+689 (845) 143-1243','+86 (754) 132-7038',9730425973);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Katz','Honorable','Adelice Dakhno','1 Magdeline Junction','adakhno27@huffingtonpost.com','+62 (861) 339-9716','+62 (998) 954-9541',0441875114);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Kanoodle','Honorable','Lorenza Crean','6 Farwell Junction','lcrean28@stumbleupon.com','+66 (627) 566-9296','+235 (136) 644-7129',5203765952);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Demimbu','Honorable','Janessa Rijkeseis','5 Parkside Avenue','jrijkeseis29@opera.com','+55 (455) 191-7287','+55 (187) 631-3986',4088351843);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Eimbee','Rev','Bobbi Dandison','94 Crownhardt Drive','bdandison2a@quantcast.com','+95 (819) 570-3901','+1 (758) 379-1527',5119710999);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Brainlounge','Dr','Chrystel Linford','7 Miller Terrace','clinford2b@amazon.com','+351 (444) 546-0625','+33 (801) 213-1989',5951225892);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Linktype','Dr','Goldi Hounsham','34514 Schurz Place','ghounsham2c@goodreads.com','+86 (270) 229-0069','+33 (602) 893-6712',2897474904);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Kayveo','Ms','Dian Giuroni','81566 Golden Leaf Place','dgiuroni2d@gnu.org','+62 (893) 728-8328','+7 (550) 300-2489',9254537349);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Zoomdog','Mrs','Vania Ivison','87 Everett Hill','vivison2e@china.com.cn','+86 (428) 547-8052','+380 (503) 970-8817',7338852901);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Mycat','Rev','Kenneth Goby','95 Oak Crossing','kgoby2f@patch.com','+1 (824) 700-6433','+62 (818) 326-0606',5264247285);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Tazzy','Mr','Opaline Heigold','81 Porter Hill','oheigold2g@a8.net','+7 (979) 207-9790','+55 (656) 727-8327',1866110403);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Avavee','Dr','Benedict Crat','92927 Kenwood Center','bcrat2h@fema.gov','+52 (216) 418-8880','+86 (261) 225-4579',7229045282);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Pixope','Dr','Johann Thoresby','88 Corben Junction','jthoresby2i@themeforest.net','+970 (342) 826-3792','+33 (734) 186-4737',3381355333);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Talane','Dr','Johannah Maycock','407 Ramsey Court','jmaycock2j@marketwatch.com','+48 (962) 276-9249','+86 (454) 903-9959',8636345057);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Flipstorm','Mr','Rosa Larrat','75 David Place','rlarrat2k@vkontakte.ru','+7 (789) 118-3772','+86 (433) 271-3953',2085761933);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Gabvine','Ms','Mart Fellenor','54033 Bluestem Alley','mfellenor2l@oakley.com','+7 (446) 866-8200','+255 (191) 732-6021',1688288139);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Centidel','Dr','Evangelin Barratt','68 Hoard Alley','ebarratt2m@vimeo.com','+63 (667) 597-6128','+249 (454) 754-2855',3003456555);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Feedspan','Mr','Reube Fulkes','2 7th Park','rfulkes2n@constantcontact.com','+7 (143) 286-4820','+57 (876) 145-6230',8976372239);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Thoughtbeat','Mr','Kerry Cutbirth','8364 Mayfield Court','kcutbirth2o@cbsnews.com','+86 (743) 786-4204','+420 (686) 590-4279',1006694781);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Avamba','Ms','Loretta MacKill','2 Daystar Trail','lmackill2p@ox.ac.uk','+82 (652) 112-9652','+420 (557) 633-2723',8437741467);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Jabbercube','Dr','Carmel Gantley','72 Sunbrook Circle','cgantley2q@free.fr','+7 (794) 530-5224','+86 (559) 976-2598',5979724672);
INSERT INTO `Prospective_Clients`(`Company_Name`,`Contact_Title`,`Contact_Name`,`Headquarter_Address`,`Email`,`Fax`,`Phone`,`Prosp_Client_ID`) VALUES ('Aimbo','Rev','Kippy Bogace','22634 Heffernan Lane','kbogace2r@mail.ru','+351 (557) 529-4840','+33 (511) 652-3045',3191254633);


CREATE TABLE IF NOT EXISTS `Prosp_Client_Locs`
(
    `Prosp_Client_ID` INTEGER     NOT NULL,
    `Location`        varchar(50) NOT NULL,
    PRIMARY KEY (`Prosp_Client_ID`, `Location`),
    CONSTRAINT `fk_17`
        FOREIGN KEY (`Prosp_Client_ID`) REFERENCES `Prospective_Clients` (`Prosp_Client_ID`) ON DELETE cascade,
    INDEX `idx_Prosp_Client_ID` (`Prosp_Client_ID`),
    INDEX `idx_Locations` (`Location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2236025599,'Raoyang');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (4771435731,'Kuala Lumpur');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8945823166,'Hirado');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3598540787,'Hongcao');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5532260761,'Francisco Villa');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7714328193,'Haozhai');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2974294278,'Maurole');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3263142879,'Imider');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7853502575,'Khomutovo');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (567485951,'Salām Khēl');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1174425458,'Ono');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8700622001,'Kloangrotat');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (225799812,'Pemberton');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9166283302,'Bunirasa');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8784378778,'Soledade');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6867534198,'Marly-le-Roi');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3371738191,'Bagneux');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9485808682,'Uk');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6609210217,'Bukovany');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7041062775,'Manorom');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6117699034,'Zbąszynek');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (770244661,'Armavir');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8116673416,'Fu’an');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (675556759,'Yamkino');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7698896994,'Sande Vila Nova');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2230921711,'Čajetina');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8394869270,'Novodmitriyevskaya');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (875154573,'Madrid');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5771562955,'Puerto Esperanza');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6185142813,'Brämhult');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7125916309,'Lozova');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2349454258,'Bethel Town');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6493807506,'Bảo Lộc');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8093969837,'Khān Neshīn');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9405641190,'Herby');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3964277754,'Loukhi');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6688515199,'Hefei');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9037189539,'Ikar');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9267413619,'Gedera');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6509622491,'Štěchovice');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1518785468,'Pittsburgh');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6104772366,'Dami');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5451990204,'Şafwá');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2132770069,'Margahayu');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6243391841,'Alagoinhas');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9633950376,'Gnojnica');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (4137906149,'Petrovo-Dal’neye');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2017824984,'Carman');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (4120659798,'Zheleznovodsk');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7510924146,'Semey');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7426160289,'Yahil’nytsya');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1938318250,'Amparita');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2260282032,'Luniao');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1096533456,'Waco');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3304980091,'Chabany');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1028645872,'Shimen');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5457123367,'Puerto Rico');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6340300170,'Knoxville');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (4443330216,'Pontevedra');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2373579510,'Francisco Beltrão');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2480137163,'Meudon');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6025057648,'Arlington');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9251492808,'Rancamaya');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7493803617,'Qinggis Han');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8262859855,'Gedongmulyo');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5025039827,'Burqah');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1590220242,'Jianyangping');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5610096081,'Sanyang');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6421662765,'Medang');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5546621923,'Otjiwarongo');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (6532042757,'Dublin');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3702927433,'Saint-Quentin-en-Yvelines');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (71893709,'Ké-Macina');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7246782478,'Miami');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7185660394,'Sovetskoye');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8732628048,'Ribeirão Preto');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8422301520,'Lazaro Cardenas');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7004354393,'Qifang');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9730425973,'Fernandópolis');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (441875114,'Cervantes');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5203765952,'Betio Village');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (4088351843,'Musawa');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5119710999,'Zicheng');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5951225892,'Skála');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2897474904,'Stockholm');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (9254537349,'Binitayan');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7338852901,'Luzino');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5264247285,'Yongfeng');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1866110403,'Charneca da Cotovia');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (7229045282,'Sicamous');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3381355333,'Teodoro Sampaio');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8636345057,'Douliu');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (2085761933,'Ralevka');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1688288139,'Skaudvilė');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3003456555,'Ngembel');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8976372239,'Miłosław');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (1006694781,'Moutfort');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (8437741467,'Le Tampon');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (5979724672,'Zhangdiyingzi');
INSERT INTO `Prosp_Client_Locs`(`Prosp_Client_ID`,`Location`) VALUES (3191254633,'Hässelby');


CREATE TABLE IF NOT EXISTS `Services`
(
    `Service_Name`    varchar(50)   NOT NULL,
    `Price`           DECIMAL(4, 2) NOT NULL,
    `Discontinued`    BOOLEAN,
    `Service_ID`      INTEGER AUTO_INCREMENT,
    `Serv_Company_ID` INTEGER       NOT NULL,
    PRIMARY KEY (`Serv_Company_ID`, `Service_ID`),
    CONSTRAINT `fk_18`
        FOREIGN KEY (`Serv_Company_ID`) REFERENCES `The_Mavericks` (`Company_ID`) ON DELETE cascade,
    INDEX `idx_Company_ID` (`Serv_Company_ID`),
    INDEX `idx_Service_ID` (`Service_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Quo Lux','$14,460.80','FALSE',4976560562,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Flowdesk','$17,279.84','FALSE',2146349026,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stronghold','$19,779.07','FALSE',7034880573,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Pannier','$14,396.61','TRUE',4451940362,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Job','$14,065.35','FALSE',8465821836,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Vagram','$11,779.58','TRUE',4409227548,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Alphazap','$17,640.67','FALSE',4457892300,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Job','$18,436.14','TRUE',7815675522,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Overhold','$16,010.28','FALSE',2944473921,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stringtough','$19,756.73','TRUE',7064737892,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Namfix','$18,444.93','FALSE',7614860470,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Mat Lam Tam','$17,574.03','TRUE',8129916800,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Tin','$11,410.56','FALSE',1658613899,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Viva','$15,912.01','FALSE',4013436779,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Greenlam','$12,369.33','TRUE',9882148395,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zamit','$11,075.47','FALSE',3564245944,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zathin','$11,634.55','TRUE',4502083208,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zaam-Dox','$10,382.06','FALSE',5337758691,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Holdlamis','$15,999.28','FALSE',6910897846,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Cardify','$10,949.32','FALSE',3780151359,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Alpha','$18,669.21','TRUE',4550784326,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sonsing','$12,981.71','FALSE',8100902534,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Bamity','$19,661.73','TRUE',6455129059,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Kanlam','$15,868.77','TRUE',1164397826,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Home Ing','$16,061.24','FALSE',8235434148,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Alphazap','$15,153.73','FALSE',7542145533,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Biodex','$14,388.47','FALSE',3383146766,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Rank','$12,941.92','TRUE',8721613753,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Home Ing','$13,602.83','FALSE',9307407150,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Quo Lux','$16,777.05','FALSE',1827929553,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('It','$13,517.91','TRUE',117730785,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Voltsillam','$15,278.15','TRUE',8456321192,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Y-find','$19,699.96','FALSE',5650803048,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Aerified','$16,669.56','FALSE',3446849440,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zathin','$12,507.11','FALSE',2444085302,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Tresom','$18,075.43','FALSE',1802782729,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Holdlamis','$14,959.25','TRUE',8077683126,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stringtough','$15,001.73','TRUE',7698644421,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Regrant','$12,384.64','FALSE',2811577637,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Holdlamis','$12,707.03','TRUE',9317200877,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Matsoft','$15,617.81','FALSE',3488885216,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Trippledex','$18,255.22','FALSE',8935655813,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Latlux','$19,744.09','TRUE',8960055611,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stringtough','$10,434.03','TRUE',1744090467,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Voltsillam','$12,927.95','FALSE',3661541358,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Flexidy','$12,183.57','FALSE',4747725180,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zaam-Dox','$15,456.44','TRUE',8801009348,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Veribet','$19,930.98','TRUE',775451037,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Regrant','$14,124.04','FALSE',9855773217,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Y-Solowarm','$18,250.33','FALSE',2632226007,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Flexidy','$10,487.62','FALSE',3386324452,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Solarbreeze','$12,620.67','FALSE',4828714693,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Daltfresh','$12,724.95','FALSE',2591101353,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Transcof','$12,277.63','FALSE',5619806669,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Solarbreeze','$19,633.07','FALSE',3410679820,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sonair','$18,763.64','TRUE',2551004403,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Trippledex','$11,011.53','TRUE',8857723798,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sub-Ex','$14,802.94','TRUE',8656946854,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Toughjoyfax','$19,690.20','FALSE',2085636586,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Bytecard','$12,535.21','TRUE',1360092595,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Wrapsafe','$19,928.18','FALSE',5343613470,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Daltfresh','$12,958.99','FALSE',8891750204,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Domainer','$17,042.71','FALSE',6024378335,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Domainer','$16,409.57','TRUE',6338502683,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Alpha','$13,049.31','FALSE',387798374,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Tres-Zap','$12,130.77','TRUE',2025231571,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Andalax','$17,614.58','FALSE',6330678650,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Bytecard','$12,009.25','TRUE',9302207226,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Latlux','$19,748.23','TRUE',7127296987,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sonair','$10,691.84','FALSE',4210828092,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Flowdesk','$16,526.42','TRUE',5195827346,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Bamity','$12,409.60','TRUE',5335662182,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stringtough','$19,257.89','TRUE',3798597758,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Treeflex','$14,784.98','FALSE',7999777080,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Voltsillam','$13,721.92','FALSE',3117065865,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Subin','$10,632.00','TRUE',1765264774,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stronghold','$14,954.07','FALSE',6105638507,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Namfix','$14,954.31','TRUE',6387829496,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Quo Lux','$15,794.09','FALSE',5808687276,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Bigtax','$18,470.04','TRUE',4398907750,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sonsing','$12,113.29','FALSE',2002703817,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Andalax','$19,824.42','FALSE',1276151012,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Span','$18,741.97','FALSE',5110667497,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Voyatouch','$12,579.74','FALSE',518270165,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Stim','$19,942.79','FALSE',9873063404,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Y-Solowarm','$14,834.40','FALSE',836986644,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Greenlam','$18,205.24','TRUE',4940220885,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Redhold','$14,412.68','FALSE',2745897500,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zathin','$11,271.12','FALSE',2318810168,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Lotlux','$11,582.71','FALSE',7807563176,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Tres-Zap','$10,103.58','TRUE',7978270459,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Cardguard','$15,084.98','FALSE',1863209514,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Veribet','$16,233.08','FALSE',8972845876,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Sonair','$11,709.84','FALSE',3173885295,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Temp','$15,262.25','TRUE',6744558749,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Veribet','$11,384.85','FALSE',9120744218,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Vagram','$19,145.35','FALSE',2805336747,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Fixflex','$17,375.39','TRUE',1077756577,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zaam-Dox','$15,509.84','FALSE',9906461233,3104705100);
INSERT INTO `Services`(`Service_Name`,`Price`,`Discontinued`,`Service_ID`,`Serv_Company_ID`) VALUES ('Zamit','$19,875.54','FALSE',716880148,3104705100);


CREATE TABLE IF NOT EXISTS `Prosp_Serv`
(
    `Prosp_Client_ID` INTEGER NOT NULL,
    `Service_ID`      INTEGER NOT NULL,
    `Serv_Company_ID` INTEGER NOT NULL,
    CONSTRAINT `fk_19`
        FOREIGN KEY (`Prosp_Client_ID`) REFERENCES `Prospective_Clients` (`Prosp_Client_ID`) ON DELETE cascade,
    CONSTRAINT `fk_20`
        FOREIGN KEY (`Service_ID`) REFERENCES `Services` (`Service_ID`) ON DELETE cascade,
    CONSTRAINT `fk_21`
        FOREIGN KEY (`Serv_Company_ID`) REFERENCES `Services` (`Serv_Company_ID`) ON DELETE cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2236025599,4976560562,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4771435731,2146349026,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8945823166,7034880573,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3598540787,4451940362,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5532260761,8465821836,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7714328193,4409227548,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2974294278,4457892300,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3263142879,7815675522,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7853502575,2944473921,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (567485951,7064737892,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1174425458,7614860470,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8700622001,8129916800,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (225799812,1658613899,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9166283302,4013436779,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8784378778,9882148395,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6867534198,3564245944,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3371738191,4502083208,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9485808682,5337758691,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6609210217,6910897846,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7041062775,3780151359,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6117699034,4550784326,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (770244661,8100902534,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8116673416,6455129059,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (675556759,1164397826,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7698896994,8235434148,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2230921711,7542145533,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8394869270,3383146766,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (875154573,8721613753,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5771562955,9307407150,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6185142813,1827929553,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7125916309,117730785,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2349454258,8456321192,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6493807506,5650803048,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8093969837,3446849440,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9405641190,2444085302,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3964277754,1802782729,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6688515199,8077683126,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9037189539,7698644421,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9267413619,2811577637,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6509622491,9317200877,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1518785468,3488885216,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6104772366,8935655813,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5451990204,8960055611,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2132770069,1744090467,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6243391841,3661541358,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9633950376,4747725180,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4137906149,8801009348,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2017824984,775451037,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4120659798,9855773217,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7510924146,2632226007,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7426160289,3386324452,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1938318250,4828714693,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2260282032,2591101353,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1096533456,5619806669,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3304980091,3410679820,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1028645872,2551004403,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5457123367,8857723798,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6340300170,8656946854,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4443330216,2085636586,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2373579510,1360092595,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2480137163,5343613470,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6025057648,8891750204,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9251492808,6024378335,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7493803617,6338502683,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8262859855,387798374,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5025039827,2025231571,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1590220242,6330678650,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5610096081,9302207226,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6421662765,7127296987,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5546621923,4210828092,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6532042757,5195827346,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3702927433,5335662182,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (71893709,3798597758,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7246782478,7999777080,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7185660394,3117065865,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8732628048,1765264774,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8422301520,6105638507,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7004354393,6387829496,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9730425973,5808687276,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (441875114,4398907750,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5203765952,2002703817,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4088351843,1276151012,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5119710999,5110667497,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5951225892,518270165,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2897474904,9873063404,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9254537349,836986644,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7338852901,4940220885,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5264247285,2745897500,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1866110403,2318810168,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7229045282,7807563176,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3381355333,7978270459,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8636345057,1863209514,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2085761933,8972845876,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1688288139,3173885295,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3003456555,6744558749,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8976372239,9120744218,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1006694781,2805336747,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8437741467,1077756577,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5979724672,9906461233,3104705100);
INSERT INTO `Prosp_Serv`(`Prosp_Client_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3191254633,716880148,3104705100);


CREATE TABLE IF NOT EXISTS `Current_Clients`
(
    `Contact_Name`        varchar(50) NOT NULL,
    `Company_Name`        varchar(50) NOT NULL,
    `Contact_Title`       varchar(50),
    `Headquarter_Address` varchar(50) NOT NULL,
    `Phone`               varchar(50) NOT NULL,
    `Fax`                 varchar(50) NOT NULL,
    `Demographics`        LONGTEXT    NOT NULL,
    `Client_Company_ID`   INTEGER     NOT NULL,
    `Int_Emp_ID`          INTEGER     NOT NULL,
    `Curr_Client_ID`      INTEGER AUTO_INCREMENT,
    `Reports`             LONGTEXT,
    PRIMARY KEY (`Client_Company_ID`, `Int_Emp_ID`, `Curr_Client_ID`),
    CONSTRAINT `fk_22`
        FOREIGN KEY (`Int_Emp_ID`) REFERENCES `Internal_Employees` (`Int_Emp_ID`) ON DELETE cascade,
    UNIQUE INDEX `idx_Phone` (`Phone`),
    UNIQUE INDEX `idx_Fax` (`Fax`),
    INDEX `idx_Client_Company_ID` (`Client_Company_ID`),
    INDEX `idx_Int_Emp_ID` (`Int_Emp_Id`),
    INDEX `idx_Curr_Client_ID` (`Curr_Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Maria Bridges','Oyope','Mr','139 Sauthoff Court','+356 (863) 194-6805','+966 (966) 654-3311','neque sapien placerat ante nulla justo aliquam quis turpis',9134530606,230,9467661993,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Latisha Bond','Riffpedia','Mr','13 Maywood Parkway','+93 (120) 131-9772','+86 (450) 332-3026','ac lobortis vel dapibus at diam nam',1262586062,231,7468186278,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Brendon Sculpher','Omba','Mrs','619 Kipling Pass','+216 (477) 289-7024','+62 (742) 162-7711','porttitor pede justo eu massa donec dapibus duis at velit',7370314812,232,6664649489,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Ulrick Leuren','Vinte','Rev','8515 Maple Wood Center','+86 (207) 402-9457','+63 (898) 290-7022','maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices',4087716309,233,9429212265,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Isidoro Jeffs','Dabfeed','Mrs','108 Daystar Way','+30 (768) 734-6206','+62 (320) 281-0793','vel sem sed sagittis nam congue risus semper',4955806457,234,775550353,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Nalani Theodoris','Devcast','Ms','46306 Sloan Crossing','+7 (167) 551-6457','+233 (887) 483-1832','blandit nam nulla integer pede justo',8582387245,235,1265294704,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Margaret Whybrow','Thoughtsphere','Ms','00174 Texas Parkway','+57 (778) 824-8510','+62 (702) 238-6699','tortor risus dapibus augue vel accumsan tellus nisi eu',4084794120,236,9078229721,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Timmy Shemilt','Omba','Rev','15 Packers Hill','+63 (780) 436-9012','+63 (800) 139-0065','quam pede lobortis ligula sit amet eleifend pede libero quis',2099173958,237,4788639181,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Janis Statton','Devpoint','Ms','81390 Eastwood Court','+57 (166) 209-2705','+51 (443) 244-9724','interdum venenatis turpis enim blandit mi',8231266844,238,267345917,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Niko Ferrey','Feedmix','Rev','73 5th Center','+84 (498) 733-6303','+33 (681) 429-7327','aenean fermentum donec ut mauris eget',2798444527,239,6895570020,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Rosalie Shickle','Dabtype','Ms','0198 Burrows Trail','+63 (766) 836-3285','+81 (773) 528-7768','curabitur gravida nisi at nibh in',4752739259,240,5342435234,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Anni Moret','Topdrive','Mr','22 Marquette Junction','+86 (223) 661-8580','+381 (832) 449-7577','nulla facilisi cras non velit nec nisi vulputate nonummy',3666413048,241,2104432235,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Coriss Crathorne','Fliptune','Mr','431 Hansons Junction','+236 (233) 144-2141','+351 (628) 877-4253','pede venenatis non sodales sed tincidunt eu',9821053580,242,3654911803,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Gerrilee Kaley','Zooxo','Rev','26 Bellgrove Hill','+595 (265) 327-7481','+51 (916) 529-8370','in quis justo maecenas rhoncus',5803701521,243,4587202983,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Benito Cretney','Yoveo','Ms','93914 Melody Center','+56 (306) 923-1354','+351 (156) 581-8378','cubilia curae nulla dapibus dolor vel est donec odio justo',9528989446,244,1292725192,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Elonore Lennox','Voonder','Rev','3 Autumn Leaf Drive','+82 (878) 877-8484','+62 (639) 989-1074','lectus aliquam sit amet diam',5401776284,245,1836055536,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Alisun Feechum','Cogidoo','Mr','8 Victoria Point','+1 (575) 432-6718','+62 (996) 681-4816','id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum',9388551869,246,4900207969,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Donalt Ivasyushkin','Skynoodle','Dr','5 Morningstar Circle','+967 (934) 725-7514','+86 (352) 156-6661','amet sapien dignissim vestibulum vestibulum ante',7503367997,247,4762453366,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Charlotta Milley','Jabbersphere','Dr','84329 Glendale Alley','+62 (382) 970-3934','+62 (919) 437-6737','suspendisse potenti in eleifend quam',8292934057,248,280881169,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Monro Ayce','Realblab','Honorable','3 Mariners Cove Hill','+1 (803) 723-4994','+53 (392) 619-2085','eget semper rutrum nulla nunc purus',7814993946,249,6743546569,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Joell Bigby','Feedmix','Rev','0358 Weeping Birch Junction','+82 (687) 654-2219','+507 (812) 828-5367','ac lobortis vel dapibus at',1590499735,250,9691562529,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wade Jeayes','Topicblab','Rev','73094 Glendale Drive','+7 (816) 577-8630','+63 (268) 586-3620','orci pede venenatis non sodales sed tincidunt eu felis',3954047861,251,934193630,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Avigdor Wenderott','Riffwire','Honorable','4 Algoma Lane','+47 (447) 600-2646','+46 (191) 763-9594','id luctus nec molestie sed',6091179942,252,6969232263,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Donia Kennington','Skippad','Mr','059 Havey Way','+86 (988) 125-0698','+33 (371) 213-3620','ac neque duis bibendum morbi non quam',9735432668,253,9874873604,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Ethe Dyerson','Kamba','Mr','55333 Homewood Parkway','+63 (823) 737-3692','+86 (981) 948-1485','ligula suspendisse ornare consequat lectus',217680364,254,4133836626,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Pedro Smees','Zoomdog','Honorable','03 Nevada Alley','+48 (720) 342-3436','+62 (398) 655-9992','nec euismod scelerisque quam turpis adipiscing lorem vitae',2392670897,255,5884506260,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Gale Crellin','Mybuzz','Mr','3 Drewry Circle','+92 (760) 703-4030','+7 (732) 309-5420','ac tellus semper interdum mauris ullamcorper purus',9415969504,256,920935192,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wilhelmine Koubu','Jaxbean','Mr','79 Waywood Terrace','+86 (321) 781-8401','+51 (657) 156-5335','in tempus sit amet sem fusce consequat nulla nisl nunc',4912704458,257,9516262457,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Kai Dewey','Rhynoodle','Ms','4635 Fuller Trail','+63 (972) 877-5897','+86 (326) 992-7882','diam vitae quam suspendisse potenti nullam porttitor',4914419610,258,5128406008,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Haily Philot','Wikizz','Rev','4674 Vermont Street','+351 (789) 646-9587','+55 (471) 320-1663','blandit ultrices enim lorem ipsum dolor sit amet consectetuer',5408867110,259,1469214873,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Roselin Blunkett','Yozio','Ms','62380 Oriole Junction','+86 (302) 985-1039','+33 (509) 852-5006','sagittis nam congue risus semper porta',4595879032,260,9572590979,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Cletus Grassett','Twitterbeat','Dr','5555 Manitowish Pass','+57 (641) 485-6332','+86 (296) 837-4391','sit amet sem fusce consequat nulla',1386755222,261,617541159,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Pru Mussetti','Feedfish','Ms','28682 Del Sol Parkway','+86 (126) 661-8229','+86 (954) 320-0330','dapibus augue vel accumsan tellus',5437962347,262,8710416889,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wye Halfhyde','Jatri','Mr','900 Magdeline Plaza','+237 (756) 979-1959','+63 (809) 156-3562','aliquam lacus morbi quis tortor id nulla ultrices',7333417514,263,7923583056,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Jeremie Vela','Gabcube','Rev','4 Lakewood Gardens Lane','+1 (863) 839-9921','+86 (209) 467-5900','eget elit sodales scelerisque mauris sit amet',4883319008,264,2641745550,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Emile Marton','Twimm','Mrs','8576 Fairview Avenue','+86 (883) 286-6255','+48 (690) 544-0991','at diam nam tristique tortor eu pede',7614794109,265,9187020556,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Tammi Kildea','Katz','Honorable','4072 Northport Center','+66 (901) 277-5596','+86 (621) 332-4751','orci nullam molestie nibh in lectus pellentesque',8023036165,266,2688993151,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Renelle Scullin','Skimia','Rev','29479 Magdeline Terrace','+93 (857) 156-6518','+55 (390) 869-6665','blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing',3015197401,267,3845496061,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Gwendolin Frear','Twitterwire','Rev','4 Loftsgordon Avenue','+63 (984) 283-8177','+387 (297) 157-3591','integer a nibh in quis justo maecenas',1748122282,268,9064744149,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Alberik Smidmor','Gigashots','Dr','8 Arrowood Parkway','+86 (128) 862-8920','+98 (597) 126-8440','sed vel enim sit amet',8952458613,269,7561109407,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Boycie Lemmon','Jabbertype','Rev','0 Veith Alley','+351 (615) 929-9495','+1 (817) 590-5618','leo rhoncus sed vestibulum sit amet cursus id turpis integer',9007550101,270,2149725401,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Harlan Claiden','Tazz','Dr','263 Rutledge Court','+86 (938) 545-7870','+86 (129) 810-3167','ultrices enim lorem ipsum dolor sit amet consectetuer',9350940434,271,4822461327,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Freeland Gerdes','Kwinu','Honorable','339 Rockefeller Park','+386 (180) 868-4988','+81 (506) 407-2722','volutpat dui maecenas tristique est',4527553127,272,9652783064,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Lonee Harm','Browsecat','Dr','7728 Golf View Trail','+55 (554) 420-2438','+84 (104) 746-4049','quis turpis sed ante vivamus tortor duis',1214596819,273,6477074524,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Maximilianus Tow','Kamba','Dr','426 Main Drive','+86 (242) 640-5005','+86 (972) 997-6662','cursus vestibulum proin eu mi nulla ac',9415046937,274,7666795068,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Briny Jordan','Topiczoom','Mrs','6 Portage Avenue','+7 (833) 338-5716','+7 (714) 176-1660','nibh in lectus pellentesque at nulla suspendisse potenti',4667311177,275,1958031631,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Keelia Rocco','Meetz','Ms','2 Redwing Center','+220 (578) 176-9039','+48 (587) 839-6755','orci luctus et ultrices posuere cubilia curae',508979900,276,5330803322,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Jena Galletley','Eabox','Honorable','140 Grim Point','+351 (532) 889-5743','+51 (272) 995-4699','molestie nibh in lectus pellentesque at nulla',8724468223,277,316160024,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Nani Pelham','Linktype','Honorable','16295 Farwell Pass','+60 (216) 718-9219','+63 (122) 874-9040','fermentum justo nec condimentum neque sapien placerat ante nulla justo',7963915467,278,8914181707,'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Candace Morgue','Geba','Rev','6 Lerdahl Avenue','+357 (491) 276-0246','+7 (542) 884-4005','donec vitae nisi nam ultrices libero non mattis pulvinar nulla',277005736,279,700120343,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Doloritas St Ange','Fivespan','Mrs','8 Eggendart Plaza','+351 (821) 853-4028','+58 (501) 873-3555','condimentum neque sapien placerat ante',4637651980,280,1103865749,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Zachery Berford','Skalith','Ms','5389 School Place','+62 (214) 855-8846','+7 (821) 663-8669','id nulla ultrices aliquet maecenas leo odio',8670682494,281,124599532,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Silvia Roote','Chatterpoint','Rev','7885 Starling Drive','+81 (532) 942-0129','+234 (431) 240-9366','nulla justo aliquam quis turpis',9161831352,282,8457926322,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Gordy Varey','Topicblab','Mr','9 Farmco Junction','+55 (362) 944-6583','+46 (659) 341-1227','et magnis dis parturient montes nascetur ridiculus mus',2734533901,283,3882304685,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Danica Turrell','Skalith','Mr','9 Randy Drive','+358 (737) 445-3991','+98 (558) 657-0636','in est risus auctor sed tristique',388601647,284,9572221698,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Riordan Jakeway','Flipstorm','Ms','65043 Del Mar Alley','+62 (826) 469-5051','+81 (275) 111-1298','morbi porttitor lorem id ligula suspendisse ornare consequat lectus',2292441756,285,7287503204,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Rafaelita Babin','Realcube','Honorable','8237 Claremont Park','+86 (344) 169-4621','+81 (260) 640-4700','aliquet pulvinar sed nisl nunc rhoncus dui vel',3945013690,286,4985292400,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Tony Crewes','Jaloo','Rev','57968 Schiller Junction','+63 (927) 740-8958','+992 (615) 549-9208','orci luctus et ultrices posuere cubilia curae mauris viverra diam',6875380668,287,3288442019,'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Panchito Hendriksen','Twiyo','Ms','13572 Bellgrove Junction','+62 (604) 133-3784','+1 (773) 605-5594','arcu libero rutrum ac lobortis vel',4506509951,288,667453369,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Janaya Crandon','Oozz','Ms','46591 Cardinal Alley','+420 (815) 983-9740','+86 (906) 688-8733','auctor gravida sem praesent id massa id nisl venenatis lacinia',9316935113,289,4018821344,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Mano Wheatcroft','Realcube','Dr','48040 Bobwhite Circle','+236 (874) 923-1849','+7 (698) 820-4296','amet sem fusce consequat nulla nisl nunc nisl',1581184158,290,7330047384,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Edee Roma','Zoonoodle','Rev','452 Mcbride Drive','+86 (582) 526-9744','+86 (396) 389-4026','quam turpis adipiscing lorem vitae mattis nibh ligula',8357805604,291,8533194579,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Katey Molen','Linkbridge','Rev','14 Lerdahl Way','+63 (664) 767-9052','+33 (270) 489-3642','condimentum id luctus nec molestie sed justo pellentesque viverra pede',1562579835,292,6418489780,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Linzy Josskoviz','Aimbo','Dr','33 Butterfield Junction','+30 (282) 661-5577','+57 (615) 271-9916','aliquam erat volutpat in congue etiam justo etiam',8686869378,293,994431473,'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Ealasaid Buckeridge','Zoomlounge','Dr','43 Little Fleur Crossing','+86 (531) 283-3182','+375 (422) 869-1990','massa quis augue luctus tincidunt nulla mollis',6296947844,294,7729088584,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Anatole Cockburn','Demivee','Mrs','8400 Monica Street','+86 (455) 730-6109','+55 (382) 722-8715','sapien varius ut blandit non interdum in ante vestibulum',9169393893,295,9148178551,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Emelia Kingswood','Realfire','Dr','5 Dwight Junction','+44 (938) 687-4181','+7 (248) 221-1405','bibendum felis sed interdum venenatis',1092440208,296,1422982750,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Demetris Artist','Tambee','Dr','2280 Service Street','+420 (955) 184-4944','+374 (244) 885-7222','odio cras mi pede malesuada in imperdiet et commodo',6018780747,297,2681670667,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Polly Stammers','Photolist','Mr','28 Farmco Circle','+963 (926) 588-5027','+33 (209) 110-1243','ligula vehicula consequat morbi a',5200476968,298,9740901948,'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wallas Piscopo','Skyble','Mr','56973 Continental Terrace','+63 (955) 437-6570','+86 (533) 676-2754','ultrices mattis odio donec vitae nisi nam ultrices libero non',8540115174,299,6639733382,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Rutherford Doudney','Realpoint','Dr','8239 Meadow Ridge Way','+55 (602) 248-7630','+55 (275) 317-7220','nulla facilisi cras non velit nec nisi vulputate nonummy maecenas',9541545106,300,1283710765,'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Quentin Egger','Realblab','Rev','0768 Meadow Ridge Road','+380 (743) 276-4648','+502 (645) 298-3686','nonummy maecenas tincidunt lacus at',2744231037,301,1834508770,'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Annora Turfitt','Brainsphere','Mr','5277 Hooker Plaza','+975 (279) 557-0982','+351 (212) 484-1556','a libero nam dui proin leo odio porttitor id',1382306547,302,8510683441,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Ddene Benoiton','Yabox','Dr','46 Elka Terrace','+86 (338) 609-3517','+380 (581) 847-7532','turpis integer aliquet massa id lobortis convallis tortor risus',4079076924,303,1034074180,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Anallise Rennebeck','Babbleblab','Mr','41738 Merry Terrace','+46 (694) 498-1191','+7 (115) 954-1204','curabitur gravida nisi at nibh in hac habitasse platea',9266006475,304,3129976000,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Aubry Feckey','Skipfire','Mr','25084 American Ash Lane','+81 (684) 511-9184','+380 (542) 824-3638','augue vestibulum rutrum rutrum neque',5057944991,305,6086726213,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Jenny Almon','Browsedrive','Mrs','89 Debra Drive','+57 (748) 600-9050','+48 (298) 252-3787','at nunc commodo placerat praesent blandit nam nulla',6949584326,306,1708061614,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Brear Rubinov','Zoovu','Dr','82120 Sullivan Avenue','+63 (288) 977-2895','+81 (722) 573-6200','orci luctus et ultrices posuere cubilia curae',9176126927,307,9044477420,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Trixie Pavelka','Feedfish','Mr','44 Kingsford Parkway','+358 (579) 498-1026','+95 (543) 962-5546','elit proin risus praesent lectus',5372970898,308,7968983878,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wildon Digby','Jaxspan','Mrs','5 Kinsman Drive','+380 (615) 979-6494','+86 (558) 260-0559','purus sit amet nulla quisque arcu libero rutrum',597726647,309,4126237259,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Sianna Sanbroke','Omba','Honorable','70865 Division Circle','+55 (674) 610-0953','+63 (264) 912-8257','ut massa quis augue luctus tincidunt nulla mollis molestie lorem',2136848577,310,6354571686,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Kacey Bodham','Youspan','Mr','26 Browning Park','+62 (313) 135-1311','+86 (573) 798-1012','aliquam sit amet diam in magna bibendum imperdiet nullam orci',9359370029,311,2999813961,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Hayden Kennifeck','Lazz','Mr','086 Heffernan Point','+1 (817) 322-2963','+233 (366) 173-9750','ut erat curabitur gravida nisi at',9356820821,312,4973144177,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Morly Leroux','Plajo','Ms','69463 Cody Trail','+48 (519) 238-2801','+385 (987) 218-2103','arcu libero rutrum ac lobortis vel dapibus at diam nam',2937442161,313,2986648800,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Willdon Suffield','Eare','Mrs','024 Tomscot Way','+62 (580) 167-7952','+7 (338) 983-9140','est et tempus semper est quam pharetra magna ac',5210102513,314,7255363261,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Susan Dilland','Jetpulse','Honorable','62902 Fairview Park','+351 (694) 518-2682','+62 (368) 363-5465','lectus in quam fringilla rhoncus mauris enim',3457946647,315,5372592028,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Klemens Pickard','Voonix','Honorable','5516 Knutson Place','+33 (716) 885-4752','+7 (487) 695-9475','dolor sit amet consectetuer adipiscing elit proin',5158698260,316,7932134218,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Kendricks Dimmock','Flashpoint','Mr','9686 Norway Maple Lane','+7 (383) 247-9985','+62 (158) 958-0037','consequat lectus in est risus',2772874214,317,6803107973,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Clari Siely','Centizu','Mrs','20853 Del Sol Circle','+234 (323) 135-6836','+55 (956) 367-3415','amet consectetuer adipiscing elit proin interdum mauris non',8909369256,318,4379265374,'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Bil Breitling','Browsetype','Ms','02163 Canary Park','+51 (514) 549-8202','+55 (471) 603-9652','interdum mauris ullamcorper purus sit amet nulla quisque',4568671914,319,1277412774,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Pansy Tocqueville','Voonix','Mrs','70 International Lane','+86 (848) 813-5563','+86 (317) 604-5800','risus auctor sed tristique in',4690768943,320,1028829108,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Wendell Theis','Browsecat','Mrs','2 Gerald Court','+1 (599) 497-5328','+62 (950) 856-9448','tortor quis turpis sed ante vivamus tortor duis mattis egestas',8312003495,321,2482304504,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Erina Merrigan','Kimia','Ms','41 Porter Pass','+232 (336) 814-9781','+1 (571) 505-9029','velit donec diam neque vestibulum eget vulputate ut',6534568802,322,724605517,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Jake Jaggers','Brainlounge','Mr','12424 Hanover Hill','+86 (592) 504-7278','+7 (910) 985-9012','aenean fermentum donec ut mauris eget massa tempor convallis nulla',822259613,323,8189098039,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Ransom Tetford','Lajo','Dr','69620 Canary Circle','+62 (262) 339-4268','+86 (354) 120-6142','in hac habitasse platea dictumst maecenas',2290534536,324,8285427528,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Kyrstin Sinkinson','Skinix','Mrs','15472 Leroy Circle','+86 (360) 945-4001','+218 (138) 275-5295','ornare consequat lectus in est risus auctor sed',3201643394,325,3421413339,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Cassaundra Boler','Vinder','Honorable','66753 Tomscot Center','+63 (582) 722-9683','+86 (519) 648-9003','in faucibus orci luctus et ultrices posuere cubilia curae donec',9298565526,326,723021244,'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Julius Sarfati','Zoomzone','Dr','748 Maple Wood Street','+7 (815) 702-9573','+385 (954) 127-0148','rutrum rutrum neque aenean auctor gravida',390345164,327,186753888,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Lilah Meriot','Abata','Honorable','31 Continental Crossing','+7 (312) 462-6685','+86 (404) 791-6561','morbi a ipsum integer a nibh in',4996464089,328,8674939457,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `Current_Clients`(`Contact_Name`,`Company_Name`,`Contact_Title`,`Headquarter_Address`,`Phone`,`Fax`,`Demographics`,`Client_Company_ID`,`Int_Emp_ID`,`Curr_Client_ID`,`Reports`) VALUES ('Vivia Ternault','Linkbridge','Rev','73032 Darwin Pass','+66 (945) 688-9020','+355 (715) 466-2349','parturient montes nascetur ridiculus mus',115318763,329,5810139965,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');



CREATE TABLE IF NOT EXISTS `Curr_Services`
(
    `Curr_Client_ID`    INTEGER NOT NULL,
    `Client_Company_ID` INTEGER NOT NULL,
    `Service_ID`        INTEGER NOT NULL,
    `Serv_Company_ID`   INTEGER NOT NULL,
    CONSTRAINT fk_23
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Current_Clients` (`Curr_Client_ID`) ON DELETE cascade,
    CONSTRAINT fk_24
        FOREIGN KEY (`Client_Company_ID`) REFERENCES `Current_Clients` (`Client_Company_ID`) ON DELETE cascade,
    CONSTRAINT fk_25
        FOREIGN KEY (`Service_ID`) REFERENCES `Services` (`Service_ID`) ON DELETE cascade,
    CONSTRAINT fk_26
        FOREIGN KEY (`Serv_Company_ID`) REFERENCES `Services` (`Serv_Company_ID`) ON DELETE cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9467661993,9134530606,4976560562,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7468186278,1262586062,2146349026,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6664649489,7370314812,7034880573,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9429212265,4087716309,4451940362,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (775550353,4955806457,8465821836,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1265294704,8582387245,4409227548,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9078229721,4084794120,4457892300,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4788639181,2099173958,7815675522,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (267345917,8231266844,2944473921,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6895570020,2798444527,7064737892,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5342435234,4752739259,7614860470,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2104432235,3666413048,8129916800,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3654911803,9821053580,1658613899,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4587202983,5803701521,4013436779,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1292725192,9528989446,9882148395,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1836055536,5401776284,3564245944,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4900207969,9388551869,4502083208,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4762453366,7503367997,5337758691,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (280881169,8292934057,6910897846,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6743546569,7814993946,3780151359,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9691562529,1590499735,4550784326,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (934193630,3954047861,8100902534,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6969232263,6091179942,6455129059,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9874873604,9735432668,1164397826,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4133836626,217680364,8235434148,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5884506260,2392670897,7542145533,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (920935192,9415969504,3383146766,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9516262457,4912704458,8721613753,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5128406008,4914419610,9307407150,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1469214873,5408867110,1827929553,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9572590979,4595879032,117730785,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (617541159,1386755222,8456321192,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8710416889,5437962347,5650803048,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7923583056,7333417514,3446849440,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2641745550,4883319008,2444085302,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9187020556,7614794109,1802782729,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2688993151,8023036165,8077683126,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3845496061,3015197401,7698644421,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9064744149,1748122282,2811577637,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7561109407,8952458613,9317200877,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2149725401,9007550101,3488885216,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4822461327,9350940434,8935655813,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9652783064,4527553127,8960055611,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6477074524,1214596819,1744090467,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7666795068,9415046937,3661541358,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1958031631,4667311177,4747725180,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5330803322,508979900,8801009348,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (316160024,8724468223,775451037,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8914181707,7963915467,9855773217,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (700120343,277005736,2632226007,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1103865749,4637651980,3386324452,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (124599532,8670682494,4828714693,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8457926322,9161831352,2591101353,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3882304685,2734533901,5619806669,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9572221698,388601647,3410679820,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7287503204,2292441756,2551004403,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4985292400,3945013690,8857723798,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3288442019,6875380668,8656946854,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (667453369,4506509951,2085636586,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4018821344,9316935113,1360092595,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7330047384,1581184158,5343613470,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8533194579,8357805604,8891750204,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6418489780,1562579835,6024378335,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (994431473,8686869378,6338502683,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7729088584,6296947844,387798374,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9148178551,9169393893,2025231571,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1422982750,1092440208,6330678650,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2681670667,6018780747,9302207226,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9740901948,5200476968,7127296987,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6639733382,8540115174,4210828092,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1283710765,9541545106,5195827346,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1834508770,2744231037,5335662182,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8510683441,1382306547,3798597758,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1034074180,4079076924,7999777080,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3129976000,9266006475,3117065865,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6086726213,5057944991,1765264774,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1708061614,6949584326,6105638507,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (9044477420,9176126927,6387829496,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7968983878,5372970898,5808687276,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4126237259,597726647,4398907750,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6354571686,2136848577,2002703817,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2999813961,9359370029,1276151012,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4973144177,9356820821,5110667497,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2986648800,2937442161,518270165,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7255363261,5210102513,9873063404,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5372592028,3457946647,836986644,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (7932134218,5158698260,4940220885,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (6803107973,2772874214,2745897500,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (4379265374,8909369256,2318810168,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1277412774,4568671914,7807563176,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (1028829108,4690768943,7978270459,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (2482304504,8312003495,1863209514,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (724605517,6534568802,8972845876,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8189098039,822259613,3173885295,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8285427528,2290534536,6744558749,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (3421413339,3201643394,9120744218,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (723021244,9298565526,2805336747,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (186753888,390345164,1077756577,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (8674939457,4996464089,9906461233,3104705100);
INSERT INTO `Curr_Services`(`Curr_Client_ID`,`Client_Company_ID`,`Service_ID`,`Serv_Company_ID`) VALUES (5810139965,115318763,716880148,3104705100);



CREATE TABLE IF NOT EXISTS `Curr_Client_Locs`
(
    `Client_Company_ID` INTEGER     NOT NULL,
    `Curr_Client_ID`    INTEGER     NOT NULL,
    Location          varchar(50) NOT NULL,
    PRIMARY KEY (`Client_Company_ID`, `Curr_Client_ID`, Location),
    CONSTRAINT fk_27
        FOREIGN KEY (`Client_Company_ID`) REFERENCES `Current_Clients` (`Client_Company_ID`) ON DELETE cascade,
    CONSTRAINT fk_28
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Current_Clients` (`Curr_Client_ID`) ON DELETE cascade,
    INDEX idx_Client_Company_ID (`Client_Company_ID`),
    INDEX idx_Curr_Client_ID (`Curr_Client_ID`),
    INDEX idx_Locations (`Location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9134530606,9467661993,'Nanga Eboko');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1262586062,7468186278,'Rio Branco do Sul');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7370314812,6664649489,'Nice');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4087716309,9429212265,'Stockholm');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4955806457,775550353,'Nīkshahr');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8582387245,1265294704,'Denton');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4084794120,9078229721,'Venado Tuerto');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2099173958,4788639181,'Lakateng');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8231266844,267345917,'Molodohvardiys’k');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2798444527,6895570020,'Quimistán');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4752739259,5342435234,'Puerto Santander');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3666413048,2104432235,'Amparafaravola');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9821053580,3654911803,'Sopron');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5803701521,4587202983,'Dongtai');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9528989446,1292725192,'Sutton');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5401776284,1836055536,'Yabrūd');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9388551869,4900207969,'Hengjing');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7503367997,4762453366,'Kocēni');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8292934057,280881169,'Lameira');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7814993946,6743546569,'Lewopao');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1590499735,9691562529,'Umm Şalāl ‘Alī');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3954047861,934193630,'Bishan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6091179942,6969232263,'Železná Ruda');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9735432668,9874873604,'Pacucha');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (217680364,4133836626,'Estrada');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2392670897,5884506260,'Terong');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9415969504,920935192,'Springfield');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4912704458,9516262457,'Luofang');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4914419610,5128406008,'Xin’an');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5408867110,1469214873,'Ginowan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4595879032,9572590979,'Heung-hai');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1386755222,617541159,'Nioki');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5437962347,8710416889,'Mezhevoy');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7333417514,7923583056,'Muan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4883319008,2641745550,'Lopandino');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7614794109,9187020556,'Xiyang');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8023036165,2688993151,'Iwase');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3015197401,3845496061,'Longsha');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1748122282,9064744149,'Ijuí');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8952458613,7561109407,'Las Varas');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9007550101,2149725401,'Vília');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9350940434,4822461327,'Zhushan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4527553127,9652783064,'Longbu');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1214596819,6477074524,'Labuan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9415046937,7666795068,'Trzebiatów');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4667311177,1958031631,'Pshada');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (508979900,5330803322,'Aral');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8724468223,316160024,'Yantian');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (7963915467,8914181707,'Moch');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (277005736,700120343,'Plereyan');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4637651980,1103865749,'Almoínhas Velhas');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8670682494,124599532,'Concepcion');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9161831352,8457926322,'Divinópolis');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2734533901,3882304685,'Uryupinsk');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (388601647,9572221698,'Rivadavia');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2292441756,7287503204,'Mukacheve');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3945013690,4985292400,'Quinta do Sobrado');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6875380668,3288442019,'Ressano Garcia');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4506509951,667453369,'Rana');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9316935113,4018821344,'Gaoua');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1581184158,7330047384,'Xiaoguwei');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8357805604,8533194579,'Beaufort');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1562579835,6418489780,'Vale de Rolas');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8686869378,994431473,'São Fidélis');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6296947844,7729088584,'Casalinho');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9169393893,9148178551,'Granada');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1092440208,1422982750,'Raciążek');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6018780747,2681670667,'Stamáta');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5200476968,9740901948,'Takarazuka');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8540115174,6639733382,'Beselga');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9541545106,1283710765,'Parung');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2744231037,1834508770,'Barrio San Luis');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (1382306547,8510683441,'Achoma');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4079076924,1034074180,'Picoto');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9266006475,3129976000,'Mueang Phuket');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5057944991,6086726213,'Guapimirim');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6949584326,1708061614,'Shixian');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9176126927,9044477420,'København');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5372970898,7968983878,'Santiago de Cuba');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (597726647,4126237259,'Thika');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2136848577,6354571686,'Pingshi');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9359370029,2999813961,'Uinskoye');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9356820821,4973144177,'Aţ Ţafīlah');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2937442161,2986648800,'Miyang');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5210102513,7255363261,'Amersfoort');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3457946647,5372592028,'Zhukovka');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (5158698260,7932134218,'Petaling Jaya');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2772874214,6803107973,'South River');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8909369256,4379265374,'Marale');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4568671914,1277412774,'Kulykiv');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4690768943,1028829108,'Keroak');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (8312003495,2482304504,'Delareyville');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (6534568802,724605517,'Veisiejai');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (822259613,8189098039,'Szlachta');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (2290534536,8285427528,'Kingisepp');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (3201643394,3421413339,'Uruobo-Okija');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (9298565526,723021244,'Basseterre');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (390345164,186753888,'Krabi');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (4996464089,8674939457,'Poręba Spytkowska');
INSERT INTO `Curr_Client_Locs`(`Client_Company_ID`,`Curr_Client_ID`,`Location`) VALUES (115318763,5810139965,'Krajan Timur Mlokorejo');



CREATE TABLE IF NOT EXISTS `Comp_Comp`
(
    `Client_Company_ID` INTEGER NOT NULL,
    `Curr_Client_ID`    INTEGER NOT NULL,
    CONSTRAINT `fk_29`
        FOREIGN KEY (`Client_Company_ID`) REFERENCES `Current_Clients` (`Client_Company_ID`) ON DELETE cascade,
    CONSTRAINT `fk_30`
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Current_Clients` (`Curr_Client_ID`) ON DELETE cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9134530606,9467661993);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1262586062,7468186278);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7370314812,6664649489);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4087716309,9429212265);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4955806457,775550353);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8582387245,1265294704);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4084794120,9078229721);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2099173958,4788639181);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8231266844,267345917);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2798444527,6895570020);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4752739259,5342435234);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3666413048,2104432235);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9821053580,3654911803);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5803701521,4587202983);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9528989446,1292725192);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5401776284,1836055536);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9388551869,4900207969);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7503367997,4762453366);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8292934057,280881169);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7814993946,6743546569);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1590499735,9691562529);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3954047861,934193630);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6091179942,6969232263);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9735432668,9874873604);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (217680364,4133836626);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2392670897,5884506260);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9415969504,920935192);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4912704458,9516262457);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4914419610,5128406008);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5408867110,1469214873);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4595879032,9572590979);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1386755222,617541159);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5437962347,8710416889);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7333417514,7923583056);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4883319008,2641745550);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7614794109,9187020556);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8023036165,2688993151);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3015197401,3845496061);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1748122282,9064744149);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8952458613,7561109407);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9007550101,2149725401);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9350940434,4822461327);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4527553127,9652783064);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1214596819,6477074524);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9415046937,7666795068);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4667311177,1958031631);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (508979900,5330803322);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8724468223,316160024);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (7963915467,8914181707);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (277005736,700120343);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4637651980,1103865749);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8670682494,124599532);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9161831352,8457926322);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2734533901,3882304685);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (388601647,9572221698);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2292441756,7287503204);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3945013690,4985292400);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6875380668,3288442019);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4506509951,667453369);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9316935113,4018821344);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1581184158,7330047384);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8357805604,8533194579);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1562579835,6418489780);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8686869378,994431473);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6296947844,7729088584);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9169393893,9148178551);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1092440208,1422982750);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6018780747,2681670667);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5200476968,9740901948);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8540115174,6639733382);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9541545106,1283710765);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2744231037,1834508770);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (1382306547,8510683441);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4079076924,1034074180);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9266006475,3129976000);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5057944991,6086726213);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6949584326,1708061614);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9176126927,9044477420);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5372970898,7968983878);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (597726647,4126237259);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2136848577,6354571686);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9359370029,2999813961);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9356820821,4973144177);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2937442161,2986648800);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5210102513,7255363261);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3457946647,5372592028);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (5158698260,7932134218);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2772874214,6803107973);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8909369256,4379265374);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4568671914,1277412774);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4690768943,1028829108);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (8312003495,2482304504);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (6534568802,724605517);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (822259613,8189098039);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (2290534536,8285427528);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (3201643394,3421413339);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (9298565526,723021244);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (390345164,186753888);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (4996464089,8674939457);
INSERT INTO `Comp_Comp`(`Client_Company_ID`,`Curr_Client_ID`) VALUES (115318763,5810139965);

CREATE TABLE IF NOT EXISTS `Marketing_Department`
(
    `Supervisor_ID`  INTEGER NOT NULL,
    `Department_ID`  INTEGER AUTO_INCREMENT,
    `Curr_Client_ID` INTEGER NOT NULL,
    PRIMARY KEY (`Department_ID`),
    CONSTRAINT `fk_31`
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Current_Clients` (`Curr_Client_ID`) ON DELETE restrict,
    INDEX `idx_Department_ID` (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (1,6659,9467661993);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (2,6659,7468186278);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (3,6659,6664649489);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (4,6659,9429212265);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (5,6659,775550353);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (6,6659,1265294704);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (7,6659,9078229721);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (8,6659,4788639181);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (9,6659,267345917);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (10,6659,6895570020);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (11,6659,5342435234);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (12,6659,2104432235);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (13,6659,3654911803);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (14,6659,4587202983);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (15,6659,1292725192);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (16,6659,1836055536);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (17,6659,4900207969);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (18,6659,4762453366);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (19,6659,280881169);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (20,6659,6743546569);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (21,6659,9691562529);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (22,6659,934193630);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (23,6659,6969232263);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (24,6659,9874873604);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (25,6659,4133836626);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (26,6659,5884506260);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (27,6659,920935192);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (28,6659,9516262457);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (29,6659,5128406008);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (30,6659,1469214873);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (31,6659,9572590979);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (32,6659,617541159);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (33,6659,8710416889);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (34,6659,7923583056);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (35,6659,2641745550);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (36,6659,9187020556);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (37,6659,2688993151);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (38,6659,3845496061);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (39,6659,9064744149);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (40,6659,7561109407);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (41,6659,2149725401);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (42,6659,4822461327);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (43,6659,9652783064);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (44,6659,6477074524);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (45,6659,7666795068);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (46,6659,1958031631);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (47,6659,5330803322);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (48,6659,316160024);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (49,6659,8914181707);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (50,6659,700120343);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (51,6659,1103865749);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (52,6659,124599532);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (53,6659,8457926322);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (54,6659,3882304685);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (55,6659,9572221698);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (56,6659,7287503204);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (57,6659,4985292400);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (58,6659,3288442019);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (59,6659,667453369);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (60,6659,4018821344);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (61,6659,7330047384);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (62,6659,8533194579);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (63,6659,6418489780);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (64,6659,994431473);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (65,6659,7729088584);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (66,6659,9148178551);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (67,6659,1422982750);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (68,6659,2681670667);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (69,6659,9740901948);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (70,6659,6639733382);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (71,6659,1283710765);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (72,6659,1834508770);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (73,6659,8510683441);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (74,6659,1034074180);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (75,6659,3129976000);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (76,6659,6086726213);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (77,6659,1708061614);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (78,6659,9044477420);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (79,6659,7968983878);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (80,6659,4126237259);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (81,6659,6354571686);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (82,6659,2999813961);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (83,6659,4973144177);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (84,6659,2986648800);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (85,6659,7255363261);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (86,6659,5372592028);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (87,6659,7932134218);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (88,6659,6803107973);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (89,6659,4379265374);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (90,6659,1277412774);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (91,6659,1028829108);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (92,6659,2482304504);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (93,6659,724605517);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (94,6659,8189098039);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (95,6659,8285427528);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (96,6659,3421413339);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (97,6659,723021244);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (98,6659,186753888);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (99,6659,8674939457);
INSERT INTO `Marketing_Department`(`Supervisor_ID`,`Department_ID`,`Curr_Client_ID`) VALUES (100,6659,5810139965);


CREATE TABLE IF NOT EXISTS `Applications`
(
    `App_Name`          varchar(50)   NOT NULL,
    `Price`             DECIMAL(7, 2) NOT NULL,
    `App_ID`            INTEGER AUTO_INCREMENT,
    `Department_ID`     INTEGER       NOT NULL,
    `Service_ID`        INTEGER       NOT NULL,
    `Spending_Analysis` LONGTEXT,
    `Customer_Report`   LONGTEXT,
    `Product_Report`    LONGTEXT,
    PRIMARY KEY (`Department_ID`, `Service_ID`, `App_ID`),
    CONSTRAINT `fk_32`
        FOREIGN KEY (`Department_ID`) REFERENCES `Marketing_Department` (`Department_ID`) ON DELETE cascade,
    CONSTRAINT `fk_33`
        FOREIGN KEY (`Service_ID`) REFERENCES `Services` (`Service_ID`) ON DELETE cascade,
    INDEX `idx_Department_ID` (`Department_ID`),
    INDEX `idx_Service_ID` (`Service_ID`),
    INDEX `idx_App_ID` (`App_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Flexidy','$24,852.71',2104016258,6659,4976560562,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zamit','$35,580.72',6958645839,6659,2146349026,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Holdlamis','$45,628.99',2520047488,6659,7034880573,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Quo Lux','$22,441.68',5077860092,6659,4451940362,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zamit','$45,647.09',2159927961,6659,8465821836,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Asoka','$41,383.53',9248744117,6659,4409227548,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Flexidy','$44,811.04',311532284,6659,4457892300,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('It','$31,151.18',7117262087,6659,7815675522,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Tresom','$30,070.73',2379027382,6659,2944473921,'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cardify','$31,375.93',8222390015,6659,7064737892,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Opela','$27,369.24',2537692179,6659,7614860470,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Bamity','$43,768.90',4029060412,6659,8129916800,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Daltfresh','$24,431.55',8943575319,6659,1658613899,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Flexidy','$46,393.56',1400084741,6659,4013436779,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Greenlam','$26,153.16',5007928879,6659,9882148395,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Pannier','$34,135.00',791920445,6659,3564245944,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Trippledex','$42,409.01',221816836,6659,4502083208,'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Ventosanzap','$47,688.04',8629376945,6659,5337758691,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cardify','$27,105.91',2251206310,6659,6910897846,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Ventosanzap','$41,640.07',2011031664,6659,3780151359,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('It','$29,693.71',2405642980,6659,4550784326,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Toughjoyfax','$28,638.69',2983137899,6659,8100902534,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Namfix','$34,902.91',6637979341,6659,6455129059,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Subin','$41,685.78',5407408554,6659,1164397826,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Subin','$31,442.50',9145132062,6659,8235434148,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Alpha','$37,624.35',3169489550,6659,7542145533,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Sub-Ex','$20,859.48',815326726,6659,3383146766,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cookley','$49,863.77',5342680697,6659,8721613753,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zaam-Dox','$36,365.07',2856934358,6659,9307407150,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Lotlux','$29,181.58',8770214395,6659,1827929553,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Stim','$29,770.17',6598298792,6659,117730785,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Ventosanzap','$21,106.97',6063695044,6659,8456321192,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Bamity','$22,415.03',3360896726,6659,5650803048,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Konklux','$28,224.26',6271201644,6659,3446849440,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Ronstring','$22,110.56',7931745574,6659,2444085302,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Toughjoyfax','$23,411.83',5462864949,6659,1802782729,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Alphazap','$44,590.43',523808445,6659,8077683126,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Stronghold','$20,711.54',2568911905,6659,7698644421,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zontrax','$34,331.21',645718556,6659,2811577637,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zontrax','$46,634.89',2401666354,6659,9317200877,'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Solarbreeze','$40,089.76',174667906,6659,3488885216,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Aerified','$39,706.50',6178840314,6659,8935655813,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Flowdesk','$44,580.05',5974835514,6659,8960055611,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Alpha','$31,143.59',7234669205,6659,1744090467,'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Toughjoyfax','$31,914.35',1492190608,6659,3661541358,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Tres-Zap','$45,669.32',9605664089,6659,4747725180,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Transcof','$40,331.50',1341758826,6659,8801009348,'Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Duobam','$45,382.30',1626780919,6659,775451037,'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Alphazap','$48,298.53',2817929152,6659,9855773217,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$22,661.99',5392019269,6659,2632226007,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Daltfresh','$45,810.10',9892519124,6659,3386324452,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Biodex','$34,813.33',9491552732,6659,4828714693,'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Veribet','$35,660.14',7329174483,6659,2591101353,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Span','$29,926.59',437557227,6659,5619806669,'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Y-Solowarm','$26,150.08',7808412171,6659,3410679820,'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Opela','$24,594.63',2281971104,6659,2551004403,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$42,349.12',2976381429,6659,8857723798,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Holdlamis','$35,759.40',973069430,6659,8656946854,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cardguard','$36,508.54',5350042661,6659,2085636586,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Biodex','$21,071.67',4527594141,6659,1360092595,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cookley','$38,366.77',4595470185,6659,5343613470,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Sonair','$39,041.97',4665777349,6659,8891750204,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Trippledex','$49,197.51',8866449482,6659,6024378335,'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cardify','$31,961.20',7706088324,6659,6338502683,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Asoka','$33,785.71',3525408838,6659,387798374,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Holdlamis','$43,955.13',261483625,6659,2025231571,'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Biodex','$43,853.84',7947116261,6659,6330678650,'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Voltsillam','$36,091.64',638890578,6659,9302207226,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Mat Lam Tam','$48,533.45',6727901562,6659,7127296987,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Temp','$32,111.06',593306074,6659,4210828092,'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Fintone','$20,014.45',684594382,6659,5195827346,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Bytecard','$31,608.60',6636908246,6659,5335662182,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Tresom','$47,476.91',6079485117,6659,3798597758,'In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Fixflex','$47,678.62',3959696183,6659,7999777080,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Keylex','$46,591.08',6532688754,6659,3117065865,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Y-Solowarm','$39,597.90',2240144270,6659,1765264774,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$27,879.55',6495674562,6659,6105638507,'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Zaam-Dox','$49,167.93',767883586,6659,6387829496,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\n\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Temp','$45,118.15',6002724788,6659,5808687276,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\n\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Tampflex','$33,033.70',5764702380,6659,4398907750,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Bytecard','$45,228.73',4166844156,6659,2002703817,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$26,530.90',5763894162,6659,1276151012,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Gembucket','$43,184.15',134664124,6659,5110667497,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Duobam','$36,833.77',7746573371,6659,518270165,'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Sonsing','$23,112.72',7930648133,6659,9873063404,'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\n\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Viva','$40,053.74',9021104881,6659,836986644,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Fintone','$36,998.50',6244311744,6659,4940220885,'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Sonair','$37,892.27',114707243,6659,2745897500,'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Toughjoyfax','$36,320.70',4259672177,6659,2318810168,'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cookley','$34,239.28',1603497714,6659,7807563176,'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Tempsoft','$20,092.19',5074543770,6659,7978270459,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Redhold','$48,599.51',8594897871,6659,1863209514,'Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','In congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\n\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Cookley','$28,740.50',3589722355,6659,8972845876,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\n\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\n\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\n\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$27,182.00',4606085452,6659,3173885295,'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.\n\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Bytecard','$45,182.91',9829779475,6659,6744558749,'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\n\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\n\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Sonsing','$38,987.98',3535059763,6659,9120744218,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\n\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\n\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Stringtough','$25,956.49',8429305122,6659,2805336747,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\n\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\n\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Trippledex','$43,242.38',3963670967,6659,1077756577,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\n\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Kanlam','$20,076.12',667110836,6659,9906461233,'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\n\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
INSERT INTO `Applications`(`App_Name`,`Price`,`App_ID`,`Department_ID`,`Service_ID`,`Spending_Analysis`,`Customer_Report`,`Product_Report`) VALUES ('Latlux','$40,462.69',7592248611,6659,716880148,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\n\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');


CREATE TABLE IF NOT EXISTS `Categories`
(
    `Cat_Name`    varchar(50),
    `Category_ID` INTEGER AUTO_INCREMENT,
    PRIMARY KEY (`Category_ID`),
    INDEX `idx_Category_ID` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Lettuce - Spring Mix',1270934228);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Longos - Cheese Tortellini',4840397252);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Soup - Campbells - Tomato',0967002052);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Jaboulet Cotes Du Rhone',5516395305);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Gelatine Powder',3393610511);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Cabbage - Nappa',1836856717);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Cookie - Dough Variety',9655307565);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Beer - Corona',7099429825);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pepper - Gypsy Pepper',4366741067);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Glass - Wine, Plastic, Clear 5 Oz',2126377504);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Vinegar - Sherry',2225448140);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pesto - Primerba, Paste',4296314424);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Tart Shells - Barquettes, Savory',9323247812);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Anchovy Paste - 56 G Tube',9599830415);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Longos - Penne With Pesto',3858987573);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Soup - Knorr, Classic Can. Chili',7303394257);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Chardonnay Mondavi',6712694663);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Quinoa',7191200766);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pasta - Lasagne, Fresh',4833751801);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Chateau Bonnet',9305887104);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Flour - Buckwheat, Dark',7935235384);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Turkey - Breast, Double',4310850197);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Oil - Cooking Spray',8465282072);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wonton Wrappers',1044442867);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Placido Pinot Grigo',0417382332);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Cheese - Grie Des Champ',6181814183);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Lemonade - Black Cherry, 591 Ml',1121139787);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Lamb - Ground',6263552735);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Bagel - Ched Chs Presliced',4692469749);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Taro Leaves',0890341346);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Soup - Campbells Chili Veg',0728308401);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Montecillo Rioja Crianza',4308253357);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Bouillion - Fish',9762949617);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Sunflower Seed Raw',3414096374);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Chutney Sauce - Mango',4180315882);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Island Oasis - Peach Daiquiri',5554489338);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pie Box - Cello Window 2.5',9886336978);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Chicken - White Meat, No Tender',1773721097);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Syrup - Kahlua Chocolate',2156940630);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Sprouts Dikon',7801687302);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Mushroom - White Button',8909339896);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pork - Tenderloin, Fresh',7255425607);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Clams - Canned',8410834081);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Cardamon Ground',2206905515);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Parsley - Fresh',6324614387);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Rabbit - Frozen',4748805595);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Beef - Tenderloin Tails',8843812696);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Beets - Golden',7378954667);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Capon - Whole',6056667723);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pears - Anjou',3008042007);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Mushroom - Shitake, Fresh',4455821848);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Barossa Valley Estate',8672204085);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Chinese Foods - Pepper Beef',4607934917);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Puree - Pear',4256118020);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Rosemary - Primerba, Paste',5354762782);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Beef - Tender Tips',5249366775);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Table Cloth 53x69 White',1934270393);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Sproutsmustard Cress',0382555856);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Veal - Inside Round / Top, Lean',9484787533);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Tomatoes Tear Drop',4260536818);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Maintenance Removal Charge',7327037950);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Veal - Insides, Grains',0209075872);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Island Oasis - Wildberry',2042863130);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pepper - Black, Whole',4396112394);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Sprite, Diet - 355ml',7547252125);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Glass Clear 7 Oz Xl',9108952140);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Rice Pilaf, Dry,package',3138327192);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Chutney Sauce',1808258118);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Flounder - Fresh',3984463960);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pasta - Lasagne, Fresh',4975054515);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Creme De Cacao White',9121310629);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Ecolab - Ster Bac',1817249649);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Turkey - Breast, Bone - In',5205985267);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Salmon Steak - Cohoe 8 Oz',2586956427);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Mayonnaise - Individual Pkg',8185546894);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Poppy Seed',2324453886);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Sauce - Marinara',0206681720);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Dc - Frozen Momji',0770823343);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Water - San Pellegrino',5226637136);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Steampan - Half Size Shallow',3502707197);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Chocolate - Pistoles, White',6750582664);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Bagels Poppyseed',0667029664);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pork - Butt, Boneless',2772235254);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Lamb - Bones',9778799180);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Quinoa',4806218286);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Coconut - Shredded, Sweet',1411953339);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Long Island Ice Tea',2171467150);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Ice Cream - Turtles Stick Bar',7739580228);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Breakfast Quesadillas',1198473207);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Wine - Fontanafredda Barolo',2869061366);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Hagen Daza - Dk Choocolate',0233870997);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pork - Sausage Casing',4955837697);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Green Tea Refresher',3524051669);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Oil - Margarine',0809072157);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Bread - Kimel Stick Poly',9036729912);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Ice Cream Bar - Hageen Daz To',3145268430);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Longos - Chicken Cordon Bleu',2465518054);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Rice - Long Grain',4029397352);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Dill - Primerba, Paste',4417707073);
INSERT INTO `Categories`(`Cat_Name`,`Category_ID`) VALUES ('Pasta - Elbows, Macaroni, Dry',7693562664);



CREATE TABLE IF NOT EXISTS `Client_Products`
(
    `CP_Name`        varchar(50),
    `Unit_Price`     DECIMAL(5, 2) NOT NULL,
    `Product_ID`     INTEGER AUTO_INCREMENT,
    `Category_ID`    INTEGER       NOT NULL,
    `Curr_Client_ID` INTEGER       NOT NULL,
    PRIMARY KEY (`Curr_Client_ID`, `Product_ID`),
    CONSTRAINT `fk_34`
        FOREIGN KEY (`Category_ID`) REFERENCES `Categories` (`Category_ID`) ON DELETE restrict,
    CONSTRAINT `fk_35`
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Current_Clients` (`Curr_Client_ID`) ON DELETE cascade,
    INDEX `idx_Curr_Client_ID` (`Curr_Client_ID`),
    INDEX `idx_Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Wine - Trimbach Pinot Blanc','$4.14',8318809335,1270934228,9467661993);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cookies - Englishbay Oatmeal','$0.51',6898935038,4840397252,7468186278);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Mcgillicuddy Vanilla Schnap','$1.20',8644487485,967002052,6664649489);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Rosemary - Dry','$4.65',5697631146,5516395305,9429212265);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Veal - Knuckle','$0.03',5556894213,3393610511,775550353);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Squid - Breaded','$0.31',2131521855,1836856717,1265294704);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Five Alive Citrus','$4.12',5895786308,9655307565,9078229721);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cookie Chocolate Chip With','$1.85',6193705732,7099429825,4788639181);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Arrowroot','$4.08',9986693934,4366741067,267345917);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Langers - Mango Nectar','$3.08',1959326155,2126377504,6895570020);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Water - Green Tea Refresher','$1.68',5130045939,2225448140,5342435234);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Chicken - Livers','$0.36',5415896201,4296314424,2104432235);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pepper - Chili Powder','$4.81',8035692283,9323247812,3654911803);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lighter - Bbq','$0.05',7372502624,9599830415,4587202983);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Kellogs All Bran Bars','$2.55',4527151622,3858987573,1292725192);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lettuce - Romaine','$4.11',881499951,7303394257,1836055536);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Beets - Golden','$4.13',3716743658,6712694663,4900207969);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Everfresh Products','$4.88',7226477718,7191200766,4762453366);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lemonade - Strawberry, 591 Ml','$2.37',7666796463,4833751801,280881169);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Rice - Aborio','$2.21',6095529522,9305887104,6743546569);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cheese - Roquefort Pappillon','$3.19',7914147427,7935235384,9691562529);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pork - Chop, Frenched','$4.13',1194031935,4310850197,934193630);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Bread - Pumpernickle, Rounds','$1.82',2884885676,8465282072,6969232263);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Rice - Aborio','$0.82',6499823627,1044442867,9874873604);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lettuce - Red Leaf','$4.42',3520400073,417382332,4133836626);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cheese - Comte','$1.13',9416217492,6181814183,5884506260);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Soup Campbells - Tomato Bisque','$1.58',7517288334,1121139787,920935192);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pie Pecan','$3.56',5945093564,6263552735,9516262457);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pasta - Canelloni, Single Serve','$1.33',8166737116,4692469749,5128406008);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Roe - White Fish','$3.68',6095288274,890341346,1469214873);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Loquat','$4.79',2017026530,728308401,9572590979);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Eel Fresh','$3.14',5453126752,4308253357,617541159);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Fennel - Seeds','$2.20',2982222027,9762949617,8710416889);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pork - Loin, Boneless','$3.61',6481112346,3414096374,7923583056);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lobster - Tail 6 Oz','$1.62',3046164572,4180315882,2641745550);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Nescafe - Frothy French Vanilla','$4.39',3020293170,5554489338,9187020556);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Appetizer - Asian Shrimp Roll','$2.55',1838924469,9886336978,2688993151);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Jameson - Irish Whiskey','$2.15',7175658060,1773721097,3845496061);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Fennel - Seeds','$4.30',7442730094,2156940630,9064744149);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Foam Espresso Cup Plain White','$2.58',6065541060,7801687302,7561109407);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Wild Boar - Tenderloin','$0.56',8246214063,8909339896,2149725401);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lettuce - Red Leaf','$3.91',7080919177,7255425607,4822461327);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Onions Granulated','$0.89',6353254520,8410834081,9652783064);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cabbage Roll','$3.53',4213729257,2206905515,6477074524);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Wine - Magnotta - Cab Sauv','$2.98',9520710299,6324614387,7666795068);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Salami - Genova','$4.04',4707111858,4748805595,1958031631);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Beef - Rib Roast, Capless','$0.32',3103331886,8843812696,5330803322);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Sauce - Sesame Thai Dressing','$1.81',1296468291,7378954667,316160024);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Wine - Zinfandel Rosenblum','$3.48',802249620,6056667723,8914181707);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pepper - Black, Crushed','$2.42',2594193135,3008042007,700120343);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Sherbet - Raspberry','$1.27',8418932171,4455821848,1103865749);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Bread Base - Gold Formel','$2.91',8606089796,8672204085,124599532);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Island Oasis - Lemonade','$1.62',3287153390,4607934917,8457926322);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Bagel - 12 Grain Preslice','$1.01',2227122544,4256118020,3882304685);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cheese - Parmesan Cubes','$2.24',3507568233,5354762782,9572221698);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Yeast Dry - Fermipan','$1.42',7626992040,5249366775,7287503204);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Flower - Dish Garden','$4.52',471658138,1934270393,4985292400);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Shrimp - 100 / 200 Cold Water','$2.49',6336680916,382555856,3288442019);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Beef - Tenderloin','$0.85',5093317705,9484787533,667453369);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Jello - Assorted','$2.34',1122436823,4260536818,4018821344);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Table Cloth 120 Round White','$4.51',9617061961,7327037950,7330047384);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('French Pastry - Mini Chocolate','$0.91',2857595808,209075872,8533194579);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Yogurt - Plain','$3.10',4102673,2042863130,6418489780);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cognac - Courvaisier','$4.31',6973215580,4396112394,994431473);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Bread - Dark Rye, Loaf','$4.06',7791393379,7547252125,7729088584);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Basil - Seedlings Cookstown','$0.21',8734838996,9108952140,9148178551);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Chicken - Bones','$3.23',6715167915,3138327192,1422982750);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Tray - 16in Rnd Blk','$1.48',7364907661,1808258118,2681670667);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Juice - Prune','$4.39',4407953039,3984463960,9740901948);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Clams - Bay','$0.82',1526493004,4975054515,6639733382);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Sugar - Crumb','$0.14',1195565763,9121310629,1283710765);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Urban Zen Drinks','$4.11',2698475692,1817249649,1834508770);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Loquat','$2.04',3636850849,5205985267,8510683441);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Tomatoes - Roma','$3.76',8925673606,2586956427,1034074180);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Flour - Fast / Rapid','$1.98',9782305138,8185546894,3129976000);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lobster - Live','$2.98',2519618981,2324453886,6086726213);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Nut - Pecan, Halves','$0.42',2794997718,206681720,1708061614);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Chef Hat 20cm','$1.37',3487408929,770823343,9044477420);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Oregano - Dry, Rubbed','$0.01',2576211569,5226637136,7968983878);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Spice - Montreal Steak Spice','$0.98',1662988508,3502707197,4126237259);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Beans - Kidney White','$4.90',6876584488,6750582664,6354571686);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Eggroll','$1.47',528714511,667029664,2999813961);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Mousse - Passion Fruit','$0.68',1653626674,2772235254,4973144177);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Smoked Tongue','$2.23',8612802792,9778799180,2986648800);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Octopus','$1.66',6296345836,4806218286,7255363261);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Fond - Neutral','$3.46',2426478047,1411953339,5372592028);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Iced Tea - Lemon, 340ml','$4.43',8676137234,2171467150,7932134218);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Roe - Lump Fish, Black','$4.96',1029413606,7739580228,6803107973);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cheese - Roquefort Pappillon','$1.88',1323269703,1198473207,4379265374);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Ginsing - Fresh','$0.30',489385702,2869061366,1277412774);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Bay Leaf Ground','$1.17',8604507302,233870997,1028829108);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Chambord Royal','$0.19',3856313346,4955837697,2482304504);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Soup - French Can Pea','$2.94',9528501613,3524051669,724605517);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Maintenance Removal Charge','$1.51',5468334089,809072157,8189098039);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Wine - Alicanca Vinho Verde','$2.20',1578456940,9036729912,8285427528);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Appetizer - Asian Shrimp Roll','$3.67',1797179535,3145268430,3421413339);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Ezy Change Mophandle','$1.22',7218472672,2465518054,723021244);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Pepper - Chipotle, Canned','$4.99',6641362728,4029397352,186753888);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Lettuce - Mini Greens, Whole','$3.32',1118914066,4417707073,8674939457);
INSERT INTO `Client_Products`(`CP_Name`,`Unit_Price`,`Product_ID`,`Category_ID`,`Curr_Client_ID`) VALUES ('Cheese Cloth No 60','$2.29',7720600029,7693562664,5810139965);



CREATE TABLE IF NOT EXISTS `Orders`
(
    `O_Customer_ID` INTEGER,
    `O_Order_ID`    INTEGER AUTO_INCREMENT,
    `Service_ID`    INTEGER NOT NULL,
    `App_ID`        INTEGER NOT NULL,
    PRIMARY KEY (`O_Order_ID`),
    CONSTRAINT `fk_36`
        FOREIGN KEY (`Service_ID`) REFERENCES `Applications` (`Service_ID`) ON DELETE restrict,
    CONSTRAINT `fk_37`
        FOREIGN KEY (`App_ID`) REFERENCES `Applications` (`App_ID`) ON DELETE restrict,
    INDEX `idx_O_Order_ID` (`O_Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4828072535,6961461808,4976560562,2104016258);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3950580239,7906908899,2146349026,6958645839);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6591579710,379973790,7034880573,2520047488);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (480824924,8439379773,4451940362,5077860092);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8999068307,1899052011,8465821836,2159927961);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6000713371,5628656348,4409227548,9248744117);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8893879492,9689127381,4457892300,311532284);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9931579854,6120256059,7815675522,7117262087);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7912780327,9589036694,2944473921,2379027382);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8514950878,6767156523,7064737892,8222390015);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2928633944,5152193728,7614860470,2537692179);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2806547237,7894489964,8129916800,4029060412);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3061956786,7048179813,1658613899,8943575319);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1050885848,1769208488,4013436779,1400084741);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5129463021,1360471308,9882148395,5007928879);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4736957956,4025070472,3564245944,791920445);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2273196687,9206801538,4502083208,221816836);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8394371752,3713305595,5337758691,8629376945);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7880490140,7866523061,6910897846,2251206310);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (878125205,6819996128,3780151359,2011031664);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5097415450,9232066084,4550784326,2405642980);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2045638685,3039400126,8100902534,2983137899);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8335418500,126297819,6455129059,6637979341);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4491293104,5651462198,1164397826,5407408554);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2968982842,9065729194,8235434148,9145132062);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6423578249,3517588989,7542145533,3169489550);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3887127269,9435616798,3383146766,815326726);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6635649166,6584891771,8721613753,5342680697);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2083896068,6084355099,9307407150,2856934358);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (761779086,2823170448,1827929553,8770214395);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3930303957,6410179871,117730785,6598298792);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6719310283,3986468862,8456321192,6063695044);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5985212416,2293534340,5650803048,3360896726);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5760082639,8621079631,3446849440,6271201644);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2451048271,8252416594,2444085302,7931745574);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4752572001,8787066025,1802782729,5462864949);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6276115355,7544148254,8077683126,523808445);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5023869733,9730397341,7698644421,2568911905);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2430203170,572719663,2811577637,645718556);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5590284724,9980125284,9317200877,2401666354);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4746773491,5255769002,3488885216,174667906);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8328648547,3446003452,8935655813,6178840314);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1414932553,4696262391,8960055611,5974835514);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7176028842,5547855707,1744090467,7234669205);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1745783946,7163912366,3661541358,1492190608);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2913141110,9598723836,4747725180,9605664089);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8797617105,1046900684,8801009348,1341758826);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (697859258,1197263799,775451037,1626780919);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9431428814,7211693908,9855773217,2817929152);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6348224996,2454447231,2632226007,5392019269);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3708835948,436056917,3386324452,9892519124);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (106564536,797510788,4828714693,9491552732);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2276890886,2391835264,2591101353,7329174483);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2374417034,9618837327,5619806669,437557227);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9988824750,6004763659,3410679820,7808412171);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6703119724,8772288388,2551004403,2281971104);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7735378394,7360457440,8857723798,2976381429);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1510577858,3643584784,8656946854,973069430);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9612913250,915589419,2085636586,5350042661);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (124516653,3311615131,1360092595,4527594141);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8631113999,8268765534,5343613470,4595470185);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2469292336,3367348872,8891750204,4665777349);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6077980706,6936214738,6024378335,8866449482);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6396409089,4529860612,6338502683,7706088324);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1726861635,4676993722,387798374,3525408838);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3495165797,1309510881,2025231571,261483625);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5454614254,4818174327,6330678650,7947116261);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (540541419,8917734014,9302207226,638890578);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8116866605,16724860,7127296987,6727901562);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3680611153,3858560367,4210828092,593306074);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9146953620,8252577695,5195827346,684594382);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2921365138,9127112683,5335662182,6636908246);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7404218306,7380148079,3798597758,6079485117);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (9032743880,6339340199,7999777080,3959696183);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6695788901,7230904358,3117065865,6532688754);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6975816077,3998325468,1765264774,2240144270);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7419833095,9332879621,6105638507,6495674562);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7527627190,8361190554,6387829496,767883586);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1910361771,2088362681,5808687276,6002724788);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (846916959,6082509978,4398907750,5764702380);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6000144377,4839263469,2002703817,4166844156);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5842502798,1810650860,1276151012,5763894162);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (6618206022,6978435546,5110667497,134664124);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4814791399,5093849219,518270165,7746573371);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (8317699668,5781348212,9873063404,7930648133);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (794870406,3821255234,836986644,9021104881);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (492904693,8073267292,4940220885,6244311744);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (1427900256,57518769,2745897500,114707243);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2442703343,1030367671,2318810168,4259672177);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (4306946681,8184669038,7807563176,1603497714);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3002566837,2409591930,7978270459,5074543770);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3529940445,5018026995,1863209514,8594897871);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2593958677,9922407027,8972845876,3589722355);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (401119432,9656610008,3173885295,4606085452);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (3298042676,1735611522,6744558749,9829779475);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (228537363,1922798517,9120744218,3535059763);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (5588689127,8582020880,2805336747,8429305122);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (897174348,4864496706,1077756577,3963670967);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (2282022440,5192542138,9906461233,667110836);
INSERT INTO `Orders`(`O_Customer_ID`,`O_Order_ID`,`Service_ID`,`App_ID`) VALUES (7244535147,2697712445,716880148,7592248611);

CREATE TABLE IF NOT EXISTS `Order_Details`
(
    `Quantity`    INTEGER,
    `Discount`    DECIMAL(4, 2),
    `Unit_Price`  DECIMAL(5, 2) NOT NULL,
    `OD_Order_ID` INTEGER AUTO_INCREMENT,
    `O_Order_ID`  INTEGER       NOT NULL,
    PRIMARY KEY (`OD_Order_ID`),
    CONSTRAINT `fk_38`
        FOREIGN KEY (`O_Order_ID`) REFERENCES `Orders` (`O_Order_ID`) ON DELETE restrict,
    INDEX `idx_OD_Order_ID` (`OD_Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (20,14.05,2.25,9465906573,6961461808);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (69,22.13,3.43,1722837802,7906908899);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (21,27.33,1.61,4142264656,379973790);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (37,89.71,3.42,1139930567,8439379773);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (100,18.04,1.99,3841069754,1899052011);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (37,67.95,3.78,5342171865,5628656348);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (85,39.97,4.43,2468396189,9689127381);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (95,31.76,3.88,8875474982,6120256059);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (53,40.64,1.57,1848777523,9589036694);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (24,10.86,1.02,1993270019,6767156523);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (6,76.66,2.32,6067717425,5152193728);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (32,78.22,3.74,1847789544,7894489964);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (62,64.45,1.62,8494012665,7048179813);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (21,79.35,1.97,4678629963,1769208488);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (46,58.91,2.63,6849460714,1360471308);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (88,61.25,4.39,7855621717,4025070472);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (89,45.06,2.55,3561410073,9206801538);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (56,63.83,4.19,5386380230,3713305595);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (48,72.09,3.57,3689025354,7866523061);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (31,15.15,4.67,4603256787,6819996128);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (3,9.04,4.89,2115146670,9232066084);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (69,92.83,3.31,404920101,3039400126);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (46,19.61,1.46,1781061416,126297819);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (15,15.6,3.59,119284111,5651462198);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (70,82.85,1.59,6437101393,9065729194);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (80,69.22,2.88,4128692352,3517588989);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (2,92.8,4.16,3154036547,9435616798);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (5,67.97,3.12,5885616078,6584891771);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (73,51.7,2.65,7633268190,6084355099);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (64,26.22,1.5,7722746292,2823170448);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (57,17.4,4.96,991680049,6410179871);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (40,22.33,4.57,5125973009,3986468862);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (95,77.58,4.89,4826254075,2293534340);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (14,61.15,1.24,4913736035,8621079631);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (30,95.82,4.61,1054912866,8252416594);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (77,81.01,1.28,5685446888,8787066025);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (1,15.21,3.53,4106106280,7544148254);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (2,65.84,4.88,847146316,9730397341);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (5,10.77,1.96,5172287043,572719663);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (27,60.66,2.74,6337697316,9980125284);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (52,68.9,2.17,624779394,5255769002);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (47,24.17,2.23,6438675628,3446003452);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (84,56.23,3.61,7233951233,4696262391);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (40,75.86,4.3,4100054823,5547855707);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (57,76.74,3.75,1394307543,7163912366);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (33,65.87,2.05,7665041760,9598723836);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (24,45.91,4.7,8081210229,1046900684);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (48,67.34,1.88,5604316342,1197263799);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (84,29.05,2.09,3872267329,7211693908);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (83,66.41,3.09,5602309411,2454447231);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (1,61.36,4.77,8167081338,436056917);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (33,45.98,4.94,9733996858,797510788);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (2,91.54,3.82,2300938170,2391835264);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (92,84.74,1.13,898024714,9618837327);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (74,36.51,2.28,9109910700,6004763659);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (70,44.36,3.84,8583277885,8772288388);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (30,53.42,2.99,5582982752,7360457440);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (18,40.16,4.95,6358639137,3643584784);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (17,87.58,4.98,6371519565,915589419);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (22,70.66,1.82,883085925,3311615131);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (54,89.4,3.07,5034187043,8268765534);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (6,80.12,3.61,2258558956,3367348872);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (37,65.94,1.45,3676648080,6936214738);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (52,28,4.83,5777278515,4529860612);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (9,55.92,1.9,8819377314,4676993722);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (47,78.28,2.78,224849972,1309510881);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (50,76.01,4.12,2872305971,4818174327);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (70,95.67,1.68,7125062237,8917734014);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (53,43.24,1.51,1301504599,16724860);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (97,85.54,4.19,579938417,3858560367);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (67,66.87,1.16,3560080819,8252577695);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (100,74.58,3.9,5653439576,9127112683);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (63,53.8,3.88,8447818721,7380148079);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (74,99.56,3.19,3467466826,6339340199);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (95,2.85,4.76,2303880319,7230904358);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (35,49.34,4.59,7168743139,3998325468);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (40,64,2.47,918245729,9332879621);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (2,23.18,4.5,2083185927,8361190554);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (70,21.29,2.35,7372047609,2088362681);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (66,74.17,4.68,4273995247,6082509978);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (83,62.91,3.15,6249183027,4839263469);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (72,8.25,1.34,3266510232,1810650860);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (89,18.9,2.12,9959314715,6978435546);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (8,18.71,1.49,4530353613,5093849219);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (6,97.29,1.6,1748834657,5781348212);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (28,74.95,3.14,6796521072,3821255234);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (79,89.56,4.77,8289557426,8073267292);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (81,34.5,2.79,468479511,57518769);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (19,23.33,4.69,4403029272,1030367671);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (30,71.43,2.66,9105320461,8184669038);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (36,86.83,2.26,416721133,2409591930);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (23,56.53,2.97,5176333163,5018026995);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (63,31.36,4.57,53874072,9922407027);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (99,46.69,4.28,261798677,9656610008);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (44,42.18,2.79,5830435594,1735611522);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (48,48,1.98,3583426428,1922798517);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (97,97.88,4.47,4464161855,8582020880);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (46,72.93,3.67,8817928178,4864496706);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (65,75.36,2.84,4061637487,5192542138);
INSERT INTO `Order_Details`(`Quantity`,`Discount`,`Unit_Price`,`OD_Order_ID`,`O_Order_ID`) VALUES (50,65.24,1.73,85060364,2697712445);


CREATE TABLE IF NOT EXISTS `Client_Order`
(
    `Curr_Client_ID` INTEGER NOT NULL,
    `Product_ID`     INTEGER NOT NULL,
    `OD_Order_ID`    INTEGER NOT NULL,
    CONSTRAINT `fk_39`
        FOREIGN KEY (`Curr_Client_ID`) REFERENCES `Client_Products` (`Curr_Client_ID`) ON DELETE cascade,
    CONSTRAINT `fk_40`
        FOREIGN KEY (`Product_ID`) REFERENCES `Client_Products` (`Product_ID`) ON DELETE cascade,
    CONSTRAINT `fk_41`
        FOREIGN KEY (`OD_Order_ID`) REFERENCES `Order_Details` (`OD_Order_ID`) ON DELETE cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9467661993,8318809335,9465906573);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7468186278,6898935038,1722837802);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6664649489,8644487485,4142264656);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9429212265,5697631146,1139930567);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (775550353,5556894213,3841069754);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1265294704,2131521855,5342171865);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9078229721,5895786308,2468396189);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4788639181,6193705732,8875474982);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (267345917,9986693934,1848777523);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6895570020,1959326155,1993270019);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5342435234,5130045939,6067717425);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2104432235,5415896201,1847789544);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3654911803,8035692283,8494012665);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4587202983,7372502624,4678629963);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1292725192,4527151622,6849460714);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1836055536,881499951,7855621717);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4900207969,3716743658,3561410073);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4762453366,7226477718,5386380230);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (280881169,7666796463,3689025354);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6743546569,6095529522,4603256787);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9691562529,7914147427,2115146670);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (934193630,1194031935,404920101);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6969232263,2884885676,1781061416);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9874873604,6499823627,119284111);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4133836626,3520400073,6437101393);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5884506260,9416217492,4128692352);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (920935192,7517288334,3154036547);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9516262457,5945093564,5885616078);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5128406008,8166737116,7633268190);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1469214873,6095288274,7722746292);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9572590979,2017026530,991680049);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (617541159,5453126752,5125973009);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8710416889,2982222027,4826254075);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7923583056,6481112346,4913736035);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2641745550,3046164572,1054912866);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9187020556,3020293170,5685446888);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2688993151,1838924469,4106106280);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3845496061,7175658060,847146316);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9064744149,7442730094,5172287043);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7561109407,6065541060,6337697316);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2149725401,8246214063,624779394);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4822461327,7080919177,6438675628);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9652783064,6353254520,7233951233);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6477074524,4213729257,4100054823);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7666795068,9520710299,1394307543);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1958031631,4707111858,7665041760);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5330803322,3103331886,8081210229);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (316160024,1296468291,5604316342);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8914181707,802249620,3872267329);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (700120343,2594193135,5602309411);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1103865749,8418932171,8167081338);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (124599532,8606089796,9733996858);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8457926322,3287153390,2300938170);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3882304685,2227122544,898024714);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9572221698,3507568233,9109910700);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7287503204,7626992040,8583277885);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4985292400,471658138,5582982752);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3288442019,6336680916,6358639137);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (667453369,5093317705,6371519565);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4018821344,1122436823,883085925);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7330047384,9617061961,5034187043);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8533194579,2857595808,2258558956);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6418489780,4102673,3676648080);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (994431473,6973215580,5777278515);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7729088584,7791393379,8819377314);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9148178551,8734838996,224849972);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1422982750,6715167915,2872305971);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2681670667,7364907661,7125062237);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9740901948,4407953039,1301504599);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6639733382,1526493004,579938417);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1283710765,1195565763,3560080819);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1834508770,2698475692,5653439576);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8510683441,3636850849,8447818721);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1034074180,8925673606,3467466826);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3129976000,9782305138,2303880319);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6086726213,2519618981,7168743139);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1708061614,2794997718,918245729);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (9044477420,3487408929,2083185927);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7968983878,2576211569,7372047609);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4126237259,1662988508,4273995247);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6354571686,6876584488,6249183027);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2999813961,528714511,3266510232);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4973144177,1653626674,9959314715);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2986648800,8612802792,4530353613);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7255363261,6296345836,1748834657);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5372592028,2426478047,6796521072);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (7932134218,8676137234,8289557426);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (6803107973,1029413606,468479511);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (4379265374,1323269703,4403029272);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1277412774,489385702,9105320461);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (1028829108,8604507302,416721133);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (2482304504,3856313346,5176333163);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (724605517,9528501613,53874072);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8189098039,5468334089,261798677);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8285427528,1578456940,5830435594);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (3421413339,1797179535,3583426428);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (723021244,7218472672,4464161855);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (186753888,6641362728,8817928178);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (8674939457,1118914066,4061637487);
INSERT INTO `Client_Order`(`Curr_Client_ID`,`Product_ID`,`OD_Order_ID`) VALUES (5810139965,7720600029,85060364);



CREATE TABLE IF NOT EXISTS `Customer_Information`
(
    `Address`        varchar(50) NOT NULL,
    `Phone`          varchar(50) NOT NULL,
    `Contact_Title`  varchar(50),
    `First_Name`     varchar(50) NOT NULL,
    `Last_Name`      varchar(50) NOT NULL,
    `Demographics`   varchar(50) NOT NULL,
    `CI_Customer_ID` INTEGER AUTO_INCREMENT,
    `O_Order_ID`     INTEGER     NOT NULL,
    PRIMARY KEY (`O_Order_ID`, `CI_Customer_ID`),
    CONSTRAINT `fk_42`
        FOREIGN KEY (`O_Order_ID`) REFERENCES `Orders` (`O_Order_ID`) ON DELETE restrict,
    UNIQUE INDEX `idx_Phone` (`Phone`),
    INDEX `idx_O_Order_ID` (`O_Order_ID`),
    INDEX `idx_CI_Customer_ID` (`CI_Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('85249 Erie Pass','+62 (443) 247-6221','Ms','Ezri','Cussons','molestie sed justo pellentesque',1,6961461808);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('26809 Fulton Trail','+62 (196) 889-4157','Honorable','Humfried','Aspland','mus etiam vel',2,7906908899);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('6 Namekagon Hill','+7 (207) 269-5768','Ms','Yelena','Budgeon','odio odio elementum',3,379973790);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('2 Swallow Terrace','+595 (515) 340-3558','Dr','Moses','Stowell','ut mauris eget massa',4,8439379773);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('57 Lighthouse Bay Avenue','+55 (775) 386-2706','Rev','Lib','Dunklee','vel',5,1899052011);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('8 Elmside Court','+1 (202) 886-2384','Honorable','Marcellina','Raylton','ac nulla sed',6,5628656348);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('28 Jackson Street','+7 (761) 700-9126','Ms','Essa','Beggs','platea dictumst etiam faucibus',7,9689127381);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('77 Wayridge Alley','+86 (307) 844-4109','Mrs','Vidovik','Jollie','sapien cum',8,6120256059);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('93 Clemons Lane','+63 (484) 719-1963','Dr','Maurene','Kinghorn','tortor id nulla ultrices',9,9589036694);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('665 David Road','+502 (273) 263-0018','Dr','Averyl','Dunbleton','eget rutrum at lorem',10,6767156523);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('1049 Roxbury Junction','+62 (608) 742-1540','Rev','Broderic','Haye','dis parturient montes nascetur ridiculus',11,5152193728);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7 Tony Plaza','+86 (266) 232-1599','Rev','Linnie','Peris','odio consequat varius',12,7894489964);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('6916 Bartillon Crossing','+84 (626) 125-4142','Mrs','Duff','Itschakov','ultrices enim',13,7048179813);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('64846 Sutherland Avenue','+1 (757) 769-7108','Ms','Mabel','Mityushkin','nulla eget eros elementum',14,1769208488);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('6336 Raven Crossing','+86 (563) 168-3002','Honorable','Curran','Streetfield','id turpis integer aliquet',15,1360471308);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('71946 Fair Oaks Street','+7 (656) 460-2873','Honorable','Heinrick','Accombe','ultrices posuere',16,4025070472);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('56 Grover Street','+251 (600) 102-6418','Rev','Flynn','D''Alesco','quam suspendisse potenti',17,9206801538);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('041 Blaine Parkway','+86 (144) 249-4110','Honorable','Dicky','Fisbey','platea dictumst aliquam',18,3713305595);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('41 Butternut Lane','+233 (984) 672-5775','Ms','Leoine','Kief','sit amet consectetuer adipiscing elit',19,7866523061);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('3190 Little Fleur Junction','+420 (243) 868-0611','Honorable','Nickolaus','Napier','id consequat',20,6819996128);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('8 Upham Parkway','+46 (352) 276-2682','Rev','Siffre','Copnall','neque sapien placerat ante nulla',21,9232066084);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('619 Carioca Parkway','+51 (446) 717-4914','Ms','Rosemonde','O'' Molan','pede justo',22,3039400126);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('66 Kipling Drive','+86 (336) 247-0425','Mr','Fanechka','Tallquist','venenatis lacinia aenean sit',23,126297819);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('83410 Lindbergh Alley','+60 (314) 341-4186','Dr','Kim','Stokell','lectus in quam fringilla',24,5651462198);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('57910 Summer Ridge Park','+595 (829) 589-0148','Mrs','Nat','Pavlovsky','suspendisse',25,9065729194);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0767 Dixon Drive','+86 (902) 848-6111','Ms','Wilhelmine','Cammocke','eget orci vehicula condimentum',26,3517588989);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('8176 Oxford Circle','+86 (400) 453-3089','Ms','Gwenette','Yeell','id turpis integer aliquet',27,9435616798);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('56 Hansons Point','+86 (384) 695-7964','Honorable','Lacey','Pietasch','congue elementum in hac',28,6584891771);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('5 Chive Hill','+58 (423) 112-2044','Dr','Caldwell','Petrashov','molestie lorem quisque',29,6084355099);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('79 Scott Way','+998 (458) 846-2634','Dr','Giorgi','Crone','mattis egestas metus aenean',30,2823170448);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('8722 Eggendart Park','+86 (903) 643-1036','Honorable','Rodolph','Lowless','duis consequat',31,6410179871);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('74 Oneill Park','+1 (453) 305-0884','Mrs','Silvie','Aspinal','nulla suscipit ligula',32,3986468862);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('89 Carberry Point','+86 (368) 123-2219','Honorable','Sherwin','Pighills','cras mi pede malesuada',33,2293534340);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('29 Pennsylvania Center','+380 (918) 655-2770','Dr','Cristian','Rowter','at diam nam tristique tortor',34,8621079631);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0387 High Crossing Street','+7 (373) 250-5870','Honorable','Phillipe','Brosnan','quisque porta volutpat',35,8252416594);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('40 Northport Alley','+46 (670) 262-7000','Dr','Konstantine','Allwright','eros viverra eget congue eget',36,8787066025);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('768 Forest Dale Drive','+86 (318) 220-5365','Rev','Farrah','Rillatt','varius ut blandit non',37,7544148254);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('5 Forest Pass','+86 (599) 324-7711','Mr','Kip','Shortell','in tempor turpis',38,9730397341);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('72268 Victoria Junction','+998 (258) 940-6278','Dr','Mariejeanne','Luno','rutrum',39,572719663);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('835 Lerdahl Circle','+48 (589) 662-2507','Dr','Alanah','Tewes','turpis adipiscing lorem',40,9980125284);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('31 South Avenue','+62 (252) 731-0000','Ms','Cosette','Wincer','amet justo',41,5255769002);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7835 Grayhawk Place','+48 (559) 637-5850','Ms','Shaun','McKomb','sapien sapien non mi integer',42,3446003452);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('731 Garrison Center','+86 (236) 141-2947','Dr','Sigmund','Cutmare','suspendisse accumsan tortor quis turpis',43,4696262391);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('78 Twin Pines Court','+62 (549) 952-3623','Mrs','May','Knoton','proin at turpis a',44,5547855707);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('919 Holmberg Crossing','+63 (413) 639-2135','Mrs','Kingsly','Cavaney','quis',45,7163912366);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('6532 Anhalt Alley','+62 (424) 857-6836','Ms','Lacey','Leeds','morbi vel',46,9598723836);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('211 Coleman Street','+55 (873) 225-1720','Mr','Tabb','Brooks','rhoncus aliquam lacus',47,1046900684);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('17 Susan Parkway','+970 (948) 718-2370','Honorable','Bell','Kolak','ut rhoncus',48,1197263799);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('16532 American Ash Lane','+86 (467) 200-7635','Ms','Pearle','O''Daly','ac tellus semper interdum',49,7211693908);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('39834 Marquette Way','+63 (719) 578-9694','Dr','Betteann','Doddemeede','tincidunt lacus at velit vivamus',50,2454447231);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0910 Bartelt Plaza','+967 (348) 767-6235','Rev','Nikos','Lapping','blandit',51,436056917);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7 Green Ridge Lane','+504 (244) 743-9731','Honorable','Dari','Seden','est donec odio',52,797510788);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7587 Mendota Terrace','+62 (677) 329-6468','Dr','Codi','Janeway','suscipit nulla elit ac',53,2391835264);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('8850 Evergreen Road','+998 (366) 621-1933','Honorable','Tish','Elener','laoreet ut rhoncus',54,9618837327);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('6 Arizona Place','+86 (209) 944-1045','Mrs','Morie','Snelling','dolor quis odio consequat varius',55,6004763659);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('64493 Fairfield Lane','+86 (208) 848-4566','Mrs','Germaine','Searl','integer aliquet massa',56,8772288388);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('3 Goodland Pass','+46 (988) 349-8433','Rev','Walden','Hoult','in felis',57,7360457440);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('222 Riverside Alley','+46 (993) 884-4119','Mrs','Bethanne','Corlett','dui luctus rutrum nulla',58,3643584784);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('482 Red Cloud Plaza','+49 (386) 506-1803','Rev','Daile','Mellonby','justo',59,915589419);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('44 Forest Run Court','+46 (453) 483-5946','Mrs','Sue','Wilcocks','velit donec diam neque',60,3311615131);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9873 Marquette Way','+57 (646) 419-8647','Honorable','Daryl','Kinman','vestibulum sed',61,8268765534);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('1 Glendale Avenue','+62 (712) 272-6700','Ms','Gearalt','Valerius','quam nec dui luctus rutrum',62,3367348872);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0 Dixon Road','+86 (392) 317-7623','Rev','Gerrie','Le Marchant','duis bibendum',63,6936214738);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('13660 Jay Center','+62 (332) 204-5069','Ms','Cele','Klimuk','cubilia curae mauris viverra diam',64,4529860612);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('428 Sachtjen Crossing','+351 (356) 801-8887','Mrs','Carmencita','Towell','nisl aenean lectus',65,4676993722);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('2364 Green Ridge Alley','+380 (757) 161-2983','Honorable','Staci','Woofenden','faucibus orci luctus et ultrices',66,1309510881);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('4076 Schiller Circle','+380 (649) 806-8284','Dr','Harri','Jerrard','lectus',67,4818174327);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('25 Atwood Trail','+86 (736) 544-2510','Dr','Kristian','Meadus','interdum eu tincidunt in leo',68,8917734014);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('5528 Stone Corner Place','+62 (601) 667-5686','Ms','Uri','Vogt','congue',69,16724860);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('612 Bartillon Junction','+86 (666) 719-5944','Ms','Emmaline','Winsome','risus dapibus augue vel',70,3858560367);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0343 Cherokee Junction','+86 (100) 998-4155','Mr','Lida','Rushbrook','nunc',71,8252577695);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9206 Kropf Hill','+46 (992) 672-2979','Mr','Dunc','Kares','montes nascetur ridiculus mus vivamus',72,9127112683);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('401 Columbus Circle','+86 (991) 338-1433','Mr','Adriana','Marran','ac est lacinia',73,7380148079);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('2761 Buhler Way','+976 (818) 162-0626','Dr','Mateo','Roggeman','erat id mauris',74,6339340199);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('15925 Dexter Way','+52 (625) 622-1808','Mr','Deirdre','Di Antonio','ut volutpat sapien arcu sed',75,7230904358);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('55 Bonner Road','+62 (737) 634-4849','Mr','Donnamarie','Chuck','sodales scelerisque',76,3998325468);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9 Dixon Trail','+967 (585) 562-3607','Ms','Morna','Conrard','mattis odio donec vitae',77,9332879621);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7407 Truax Parkway','+995 (413) 523-7757','Honorable','Caitlin','McGrady','vestibulum velit id pretium iaculis',78,8361190554);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('737 Granby Court','+86 (753) 834-5065','Honorable','Noelyn','Grimwood','quisque id',79,2088362681);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('5 Saint Paul Alley','+86 (630) 922-7193','Mrs','Bax','Drinkhall','odio cras mi pede malesuada',80,6082509978);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('433 Acker Pass','+62 (278) 151-9651','Dr','Samuel','Speaks','natoque penatibus et',81,4839263469);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('1168 Longview Parkway','+46 (562) 576-5030','Rev','Dan','Saulter','at diam nam tristique tortor',82,1810650860);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('22219 Claremont Avenue','+351 (779) 575-1262','Mrs','Afton','Ganley','a ipsum integer a nibh',83,6978435546);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('30359 Summit Drive','+51 (256) 546-2497','Ms','Alley','Allston','praesent blandit nam nulla',84,5093849219);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('269 Butterfield Drive','+33 (522) 556-4463','Mr','Norean','Huson','urna ut tellus nulla ut',85,5781348212);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('67 Twin Pines Hill','+251 (697) 895-9767','Mrs','Gregorio','Geach','praesent id massa',86,3821255234);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('57 Melrose Center','+380 (105) 228-5374','Mr','Sallyanne','Kaaskooper','turpis adipiscing lorem vitae',87,8073267292);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('303 Burrows Avenue','+86 (207) 332-2732','Mrs','Anderea','Borsnall','aenean sit amet justo',88,57518769);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('632 Mesta Street','+63 (115) 992-8959','Mrs','Mimi','Biner','odio',89,1030367671);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('3593 Daystar Park','+86 (724) 805-5791','Mrs','Torrey','Eade','molestie',90,8184669038);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9 Brickson Park Junction','+355 (648) 868-6189','Mrs','Kathleen','Schimank','sapien placerat ante nulla justo',91,2409591930);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('7352 Forest Road','+7 (410) 356-4006','Mrs','Kelsey','MacPaden','quam fringilla',92,5018026995);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('3564 Weeping Birch Alley','+51 (389) 126-9995','Mr','Vidovic','Milberry','sollicitudin mi',93,9922407027);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('39 Lukken Point','+46 (314) 483-0973','Mrs','Hugibert','Shepeard','in',94,9656610008);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9 Claremont Parkway','+1 (131) 391-3824','Honorable','Bobbe','Bourtoumieux','ultrices mattis odio donec',95,1735611522);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('0 8th Terrace','+62 (678) 861-3335','Mr','Celene','Sterman','semper rutrum',96,1922798517);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('864 Colorado Road','+994 (451) 629-2424','Mr','Udale','Larchiere','ultrices posuere',97,8582020880);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('59 Maywood Terrace','+63 (662) 604-3545','Rev','Virgie','Manus','augue vel',98,4864496706);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('9 Holy Cross Pass','+227 (985) 546-4480','Mrs','Irvine','Stebbings','sodales',99,5192542138);
INSERT INTO `Customer_Information`(`Address`,`Phone`,`Contact_Title`,`First_Name`,`Last_Name`,`Demographics`,`CI_Customer_ID`,`O_Order_ID`) VALUES ('51831 Farmco Trail','+82 (353) 743-1142','Mrs','Miquela','Atcheson','orci',100,2697712445);


-- #DROP DATABASE segmentify;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;