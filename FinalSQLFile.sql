use greenpharmacy;
create table cart(email varchar(100),pid int,Quantity int, price double, total double, 
address varchar(100),city varchar(50), state varchar(50), country varchar(50),mobileNumber bigint,
 orderDate date,deliveryDate date, paymentMethod varchar(50),transactionId varchar(50),status varchar(10));
select * from cart;







create table users(name varchar(100), email varchar(100) primary key,mobileNumber bigint, securityQuestions varchar(200), answer varchar(200),
password varchar(10), address varchar(100),
city varchar(50), state varchar(50), country varchar(50));
select * from users;
create table prescription(SNO int auto_increment primary key,  `imageFileName` varchar(50) NOT NULL);
select* from prescription;


create table allmedicines(id int primary key, name varchar(50),category varchar(50),price double, 
quantity int,  `imageFileName` varchar(50) NOT NULL);
select * from allmedicines;
create table message(id int auto_increment ,email varchar(100), subject varchar(200),body varchar(1000),primary key(id));
select * from message;

create table payment( name varchar(100),cardNumber bigint , expMonth int,expYear int, cvv int);
select * from payment;
select * from book;
create table book(name varchar(200), mobileNumber bigint,pinCode int,package varchar(100));



















drop table booklab;
