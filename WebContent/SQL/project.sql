Create Table UserTable(id number primary key,
                  name varchar2(50) not null,
                  phone number(10) not null,
                  email varchar2(50) not null unique,
                  password varchar(30) not null); 
                  
CREATE SEQUENCE sequence
MINVALUE 1
START WITH 1
INCREMENT BY 1;

select * from usertable;

CREATE TABLE GO_SERVICE_EMPLOYEE(
ID NUMBER PRIMARY KEY,
NAME VARCHAR(50),
EMAIL VARCHAR(50) UNIQUE NOT NULL,
PASSWORD VARCHAR(50) NOT NULL,
MOBILE VARCHAR(50) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL
);

CREATE SEQUENCE sequence_employee
MINVALUE 1
START WITH 1
INCREMENT BY 1;

insert into go_service_employee values(
sequence_employee.nextval, 'Somen', 'somenp8@gmail.com','111111',8982371826,'Hostel h');

select * from go_service_employee;

truncate table go_service_employee;

drop table go_service_employee;

delete * from go_service_employee where email ='somenp8@gmail.com' and password='123456';

select * from go_service_employee where email ='somenp8@gmail.com' and password='123456';

//Delivery boys

CREATE TABLE delivery_boys(
ID NUMBER PRIMARY KEY,
REQUESTID NUMBER,
NAME VARCHAR(50),
MOBILE VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50) UNIQUE NOT NULL,
status varchar(40) default ('Available'),
requests varchar(40),
work_status varchar(40)
);

CREATE SEQUENCE sequence_delivery_boys
MINVALUE 1
START WITH 1
INCREMENT BY 1;


select * from delivery_boys;

truncate table delivery_boys;
insert into delivery_boys values(sequence_delivery_boys.nextval,0,'Somen','8770680049','somenpalia@gmail.com','Available','null','null'); 

drop table delivery_boys;

update delivery_boys set requests='Approve' where email='somenpalia@gmail.com';

select * from delivery_boys where email='somenpalia@gmail.com' and mobile='8770680049';

select * from request;
http://localhost:8089/GoService/delivery_boys_login?email=somenpalia%40gmail.com&mobile=8770680049
