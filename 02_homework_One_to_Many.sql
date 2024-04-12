create database fish;

use fish;

create table customers
(
customers_id int auto_increment not null,
First_Name varchar (80) not null,
Last_Name varchar (80) not null,
primary key (customers_id)
);

create table fishOrders
(
fishOrders_id int auto_increment not null,
customers_id int not null,
date dateTime int not null,
primary key (fishOrders_id),
foreign key(customers_id) references customers(customers_id)
);

insert into customers
(First_Name, Last_Name)
values
('Jamal', 'Kozachok'),
('Misha', 'Sigmanenko');

insert into fishOrders
(customers_id, date)
values
(1, now()), 
(2, now()),
(2, now()),
(1, now());