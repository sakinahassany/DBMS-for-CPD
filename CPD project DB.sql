drop table Student cascade constraint;
drop table Participant cascade constraint;
drop table Venue cascade constraint;
drop table Equipment cascade constraint;
drop table EquipmentBorrowing cascade constraint;
drop table Event cascade constraint;


create table Student(
matricNo varchar(10) not null,
fname varchar(10),
lname varchar(10),
email varchar(50),
telNo char(15),
kulliyah varchar(10),
equipmentNo varchar(10),
CONSTRAINT student_matricNo_PK PRIMARY KEY(matricNo));

create table Participant(
eventID char(5) not null,
matricNo varchar(10),
CONSTRAINT participant_matricNo_eventID_PK PRIMARY KEY (eventID, matricNo));

create table Venue(
venue_ID varchar(10) not null,
venue_name varchar (50),
location varchar (50),
CONSTRAINT venue_venue_ID_PK PRIMARY KEY (venue_ID));

create table Equipment(
equipmentNo varchar(5),
equipmentName char(20),
type char(10),
CONSTRAINT equipment_equipmentNo_PK PRIMARY KEY (equipmentNo));

create table EquipmentBorrowing
(borrowingid char (5) not null,
equipmentNo varchar(10),
datefrom date,
dateto date,
quantity int,
eventID char(5) not null,
CONSTRAINT equipment_borrowingid_eventID_PK PRIMARY KEY (borrowingid,eventID));

create table Event(
eventID char(5) not null,
eventname varchar(20),
organizer varchar(15),
eventdate date,
time char(20),
participant_NO varchar(50),
venue_ID varchar(10),
CONSTRAINT event_eventID_PK PRIMARY KEY (eventID));



insert into Staff
values('s1454','Raja','Alias','Administration Officer','f','0112245456','shikin@iium.edu.com','3320');

insert into Staff
values('s4155','Fauztun','Hussin','Assistant Officer','f','0183945095','aqilah@iium.edu.com','2345');

insert into Staff
values('S4057','Ismahia','Ismail','Administration Assistant','f','0112245456','ismahianis@iium.edu.com','3242');

insert into Staff
values('S2462','Khadija','Daud','Administration Assistant','f','0112245456','khadijahdaud@iium.edu.com','3331');

insert into Staff
values('S3289','Zaini','Mohammad','Technician','m','0112245456','zainim@iium.edu.com','2333');

insert into Staff
values('S3456','Ramzi','Mohammad','Audio Visual','m','0112245456','ramzi@iium.edu.com','4521');

insert into Staff
values('S6448','Ahmad','Rauof','Technician','m','0112245456','ahmadn@iium.edu.com',' 3546');

insert into Staff
values('S4536','Zinat','Ramadan','Officer','f','0112245456','zinatramadan@iium.edu.com','4211');

insert into Staff
values('S5453','Mahmood','Noor Ahmad','Administration Officer','m','0112245456','mahmood@iium.edu.com','3002');

insert into Staff
values('S3449','Faiz','Rhman','Clerk','m','0112245456','faizRhaman@iium.edu.com',' 4000');





insert into Student
values('1210383','Fatimah','Hassany','F.hassany@gmail.com','183713737','ICT','A002');

insert into Student
values('1318339','Zahrah','Ehsani','Zhehsani@yahoo.com','187172072','ENMS','A005');

insert into Student
values('1421038','Maryam','Hussainy','Mr.hussainy@yahoo.cm','182303821','LAWS','A003');

insert into Student
values('1103839','Sakinah','Nazary','Sa_Nazary@gmail.com','163327487','ENGIN','A001');

insert into Student
values('1221038','Roqayyh','Mahmoody','Mahmoody12@hotmail.com','162186577','ENGIN','A003');

insert into Student
values('1483032','Zainab','Muhamady','Zainab_324@gmail.com','136074758','ENMS','A007');

insert into Student
values('1183739','Gulsom','Mostafawi','Gmostafawi1@yahoo.com','112853795','ENMS','E002');

insert into Student
values('1223819','Fahimah','Haidary','H_fah21@hotmail.com','136283474','ICT','A006');

insert into Student
values('1221847','Zubidah','Sadiqi','Sadiqi_z@gmail.com','168237428','ICT','A005');

insert into Student
values('1317937','Fithriah','Sajadi','F_sajadi@yahoo.com','112743987','ICT','A002');




insert into Participant
values('E002','1210383');

insert into Participant
values('E005','1318339');

insert into Participant
values('E003','1421038');

insert into Participant
values('E001','1103839');

insert into Participant
values('E003','1221038');

insert into Participant
values('E007','1483032');

insert into Participant
values('E002','1183739');

insert into Participant
values('E006','1223819');

insert into Participant
values('E005','1221847');

insert into Participant
values('E002','1317937');



insert into Venue
values('V001','Main_Audi','Near masjid');

insert into Venue
values('V002','KICT_HALL','KICT');

insert into Venue
values('V003','Halloween','Near_CAC');

insert into Venue
values('V004','CACbanquet','iium');

insert into Venue
values('V005','Masjid','AT_Masque');

insert into Venue
values('V006','Confrce_R','Mainbuild');

insert into Venue
values('V007','CAC_Hall','CAC');

insert into Venue
values('V008','Library','At_Library');

insert into Venue
values('V009','KICT_RC','KICT');

insert into Venue
values('V0010','CIELLC','CELPAD_LIB');


insert into Equipment
values('A001','CD-Player','sony');

insert into Equipment
values('A002','DVD-Player','nokia');

insert into Equipment
values('A003','TV25','LG');

insert into Equipment
values('A004','Loudspeaker','HP');

insert into Equipment
values('A005','LCD','Dell');


insert into Equipment
values('A006','Computer','sony');

insert into Equipment
values('A007','Plasma TV','LG');

insert into Equipment
values('A008','Vedio carry','Dell');

insert into Equipment
values('A009','Screen','HP');

insert into Equipment
values('A0010','Hailer','sony');


insert into EquipmentBorrowing
values('B001','A001','1-Jan-2014','5-Jan-2014','2','E001');

insert into EquipmentBorrowing
values('B002','A002','2-Sep2014','6-Sep-2014','1','E002');

insert into EquipmentBorrowing
values('B003','A003','3-Oct2013','4-Oct-2013','3','E003');

insert into EquipmentBorrowing
values('B004','A004','9-Feb-12','11-Feb-2012','4','E004');

insert into EquipmentBorrowing
values('B005','A005','20-Jan-14','24-Jan-2014','2','E005');

insert into EquipmentBorrowing
values('B006','A006','5-Mar-14','7-Mar-2014','3','E006');

insert into EquipmentBorrowing
values('B007','A007','19-Aug-14','30-Aug-2014','1','E007');

insert into EquipmentBorrowing
values('B008','A008','18-Apr-14','23-Apr-2014','2','E008');

insert into EquipmentBorrowing
values('B009','A009','9-Apr2014','12-Apr-2014','4','E009');

insert into EquipmentBorrowing
values('B010','A010','5-Jun-14','10-Jun-2014','3','E010');


insert into Event
values('E001','Pgraduation','KOS','1-Jan-2014','4:00pm','500','V001');

insert into Event
values('E002','EidFithr','AFSA','2-sep-2014','7:30am','1000','V002');

insert into Event
values('E003','EidAdha','INSA','3-Oct-2013','7:30am','1200','V003');

insert into Event
values('E004','Taarufweek','IWK','9-Feb-12','8:30am','2000','V004');

insert into Event
values('E005','Ugraduation','KOS','20-Jan-14','5:30pm','700','V005');

insert into Event
values('E006','Workshop','Selue','5_Mar-14', '9:00am','100','V006');

insert into Event
values('E007','Seminar','Selue','19-Aug-14', '9:30am','80','V007');

insert into Event
values('E008','Ummaticweek','ISA','18-Apr-14','9:00am','1300','V008');

insert into Event
values('E009','MuslimHero','CPD','9-Apr-2014','9:00pm','800','V009');

insert into Event
values('E010','Debate','CPD','5-Dec-14','3:40pm','600','V010');





