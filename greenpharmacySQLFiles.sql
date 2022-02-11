create database greenpharmacy;
use greenpharmacy;
create table users(name varchar(100), email varchar(100) primary key,mobileNumber bigint, securityQuestions varchar(200), answer varchar(200),
password varchar(10), address varchar(100),
city varchar(50), state varchar(50), country varchar(50));
select * from users;
select * from medicines;

alter table medicines add column added_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

create table cart(email varchar(100),pid int,quantity int, price double, total double, address varchar(100),city varchar(50), state varchar(50), country varchar(50),mobileNumber bigint, orderDate date,deliveryDate date, paymentMethod varchar(50),transactionId varchar(50),status varchar(10));
