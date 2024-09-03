 CREATE DATABASE COUNTRY_FIELD;
 
 USE COUNTRY_FIELD; 
 
 CREATE TABLE COUNTRY_FIELD 
 (COUNTRY_ID INT PRIMARY KEY ,
 COUNTRY_NAME VARCHAR(30) ,
 POPULATION  DECIMAL(30), 
 AREA VARCHAR (30)
 );
 
 INSERT INTO COUNTRY_FIELD (COUNTRY_ID,COUNTRY_NAME,POPULATION,AREA) VALUES
 
 (1 ,'India' ,500000 , 2973190),
 (2 ,'China' ,400000 , 9388211),
 (3 ,'United State',450000 , 9147420),
 (4 ,'United Kindom' ,350000 , 770880),
 (5 ,'Nigeria' ,250000 , 910770),
 (6 ,'Brazil' ,250000 , 8358140),
 (7 ,'Canada' ,3550000 , 16376870),
 (8 ,'Ethiopia' ,450900 ,1000000),
 (9 ,'Mexico' ,239000 , 1943950),
 (10 ,'Philippines' ,270000 , 298170);
 
 SELECT * FROM COUNTRY_FIELD;
 
 
 CREATE TABLE PERSON_FIELDS(PERSON_ID INT PRIMARY KEY NOT NULL,
 F_NAME VARCHAR (30)
 ,L_NAME VARCHAR(30)
 ,POPULATION DECIMAL(30)
 ,RATING DECIMAL(3.1)
 ,COUNTRY_ID DECIMAL (30)
 , COUNTRY_NAME VARCHAR(30)
 );
 SELECT * FROM PERSON_FIELDS;
 
 INSERT INTO PERSON_FIELDS (PERSON_ID,F_NAME,L_NAME,POPULATION,RATING,COUNTRY_ID,COUNTRY_NAME) VALUES
 
 (30,'Linto' ,'Jhon' , 500000 ,2.0 , 1 ,'Inidia'),
 (29, 'Mirchel' ,'Khan' ,400000 ,1.0 , 2 ,null),
 (28, 'Mubarak' ,'Sidhik',450000 ,1.6 , 3 ,'United States'),
(27, 'Siraj' ,'Sahid' ,350000 ,2.7 , 4 , 'Pakistan'),
(26, 'Rhul' ,'Menon' , 250000 ,1.6 , 5 ,'Nigeria'),
(25, 'Namitha' ,'Premodh' ,250000 ,6.5 ,6 ,'Brazil'),
(24, 'Vidhu'  ,'Predhavan' ,355000 ,4.6 , 7 ,null),
(23, 'Nikhil' , 'Sanker' , 450900 ,3.9 , 8 ,'Ethiopia'),
(22, 'Virat' ,'Kholi' , 230900 ,1.4 ,  9 ,null),
(21, 'Rohit' ,'Sharma' ,270000 ,5.9 , 10 , 'Philippines');



SELECT * FROM PERSON_FIELDS;
 

#(1)List the distinct country names from the Persons table
SELECT DISTINCT COUNTRY_NAME FROM PERSON_FIELDS; 

#(2)Select first names and last names from the Persons table with aliases.
 select F_NAME AS FIRST_NAME,L_NAME AS LAST_NAME FROM PERSON_FIELDS;
 
 
#(3) Find all persons with a rating greater than 4.0.
elect fname as greater_than_4 from persons where rating>4.0;

CREATE DATABASE COUNTRY;
use country;
create table country (id int primary key, country_name varchar(20), population int, area varchar(20));
insert into country (id,country_name,population,area)  values
(1,'USA', 33100, 9833517),
(2,'Canada', 3777, 9976140),
(3,'UK', 67888, 243610),
(4,'India', 138000, 3287263),
(5,'Australia', 256, 7692024),
(6,'Germany', 8370006, 357022),
(7,'France', 652000, 551695),
(8,'Japan', 1260000, 377975),
(9,'Brazil', 2120000, 8515767),
(10,'South Africa', 593000, 1219090);
create table persons(id int primary key, fname varchar(20), lname varchar(20), population int ,
rating decimal(2.1), country_id int, country_name varchar(20) );
insert into persons (id,fname,lname,population,rating,country_id,country_name) values
(1, 'John', 'Doe', 50000000, 4.2, 1,'India'),
(2, 'Jane', 'Smith', 30000000, 3.5, 2,null),
(3, 'Emily', 'Jones', 20000000, 4.8, 3,null),
(4, 'Michael', 'Brown', 150000000, 4.1, 4,'USA'),
(5, 'Olivia', 'Taylor', 7000000, 4.6, 5,'India'),
(6, 'Sophia', 'Lee', 30000000, 4.7, 6,'Australia'),
(7, 'Liam', 'Wilson', 50000000, 4.0, 7,'France'),
(8, 'Ava', 'Johnson', 80000000, 3.9, 8,'South Africa'),
(9, 'Isabella', 'Davis', 100000000, 4.5, 9,null),
(10, 'Ethan', 'Martinez', 45000000, 4.3, 10,'South Africa');
 #alter table persons modify rating decimal (3,1);
 #truncate table persons;
 #SELECT DISTINCT country_name FROM Persons JOIN Country ON Persons.Country_Id = Country.Id ;
 select fname as FIRST_NAME, lname as LAST_NAME FROM persons;
 select fname as greater_than_4 from persons where rating>4.0;
 select country_name from country where population>1000000;
#select * from persons join country on persons.country_Id = country.Id
#WHERE Country_name = 'USA' and Rating > 4.5;
select Country_name from Country where Population between 500000 AND 2000000;
select Country_name from Country where Country_name not like 'C%';

select fname as FIRST_NAME, lname as LAST_NAME FROM persons;
 