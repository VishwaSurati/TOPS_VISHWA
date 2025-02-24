create database managment;

create table company(
company_id int primary key,
company_name varchar(45),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10)
);

create table contact(
contact_id int primary key,
company_id int,
first_name varchar(45),
last_namr varchar(45),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10),
email varchar(45),
ph varchar(12)
);

create table employee(
employee_id int primary key,
first_name varchar(45),
last_name varchar(45),
salary decimal(10,2),
hire_date date,
job_title varchar(25),
email varchar(45),
ph varchar(12)
);

create table contactemployee(
contactemployee_id int primary key,
contact_id int,
employee_id int,
contact_date date,
Description varchar(100)
);





