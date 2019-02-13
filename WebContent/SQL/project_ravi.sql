Create Table UserTable(id number primary key,
                  name varchar2(50) not null,
                  phone number(10) not null,
                  email varchar2(50) not null unique,
                  password varchar(30) not null); 
                  
CREATE SEQUENCE userSeq
MINVALUE 1
START WITH 1
INCREMENT BY 1;

select * from usertable;

Create Table ServiceProvider(id number primary key,
                           name varchar2(50) not null,
                           email varchar2(50) not null unique,
                           password varchar2(30));
                           
insert into ServiceProvider values(spSeq.nextval, 'Munna Seth', 'munna123@gmail.com', 'abcdef');
select * from SERVICEPROVIDER;
                           
CREATE SEQUENCE spSeq
MINVALUE 1
START WITH 1
INCREMENT BY 1;

Create Table ServiceCentre(id number primary key,
                           name varchar2(50) not null,
                           address varchar2(150) not null,
                           contact varchar2(30),
                           doc blob null,
                           device varchar2(30) not null,
                           company varchar2(30) not null,
                           sp_id number references ServiceProvider(id));
                           
insert into SERVICECENTRE(id,name,address,contact,device,company,sp_id) values(
scSeq.nextval,
'Samsung service centre',
'Pachpedi naka',
'07714218965',
'Samsung j7 prime 2017',
'Samsung',
1);
 
update servicecentre set device='moible' where company='Samsung';
select * from SERVICECENTRE;

CREATE SEQUENCE scSeq
MINVALUE 1
START WITH 1
INCREMENT BY 1;

Create Table Request(id number primary key,
                           customer_name varchar2(50) not null,
                           delivery_address varchar2(150) not null,
                           contact varchar2(30) not null,
                           doc blob null,
                           problem varchar2(150) not null,
                           sc_id number references ServiceCentre(id),
                           req_date timestamp ,
                           status varchar2(10) default 'pending',
                           emp_status varchar2(50) default 'pending_fetch');
                           
drop table request;
select * from request;



truncate table request;
insert into request(id,customer_name,delivery_address,contact,problem,sc_id,status,emp_status) values(
reqseq.nextval,
'Ravi',
'Hostel-H, G-32',
'9876789098',
'The camera is not working',
1,
'pending',
'pending_fetch');
                         
CREATE SEQUENCE reqSeq
MINVALUE 1
START WITH 1
INCREMENT BY 1;

drop table request;
drop table servicecentre;

SELECT owner, table_name FROM all_tables;

SELECT table_name FROM user_tables;