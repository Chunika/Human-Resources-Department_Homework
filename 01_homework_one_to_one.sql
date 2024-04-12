create database shop;

use shop;

create table customers
(
customers_id int auto_increment not null,
name varchar (40),
surname varchar (40),
phoneNumber varchar (12) default 'unknown',
primary key (customers_id)
);

create table orders
(
orders_id int auto_increment not null,
customers_id int auto_increment not null,
carsType varchar (40) not null,
carsModel varchar (40) not null,
carsSpeed int not null,
primary key (orders_id),
foreign key (customers_id) references customers(customers_id)
);

insert into customers
(name, surname, phoneNumber)
values 
('Dima', 'Piektuhov', 380989870215),
('Evgeniya', 'Pemova', 380125747195),
('Maksim', 'Melnichenko', 380429494474);

insert into orders 
(orders_id, carsType, carsModel, carsSpeed)
values
(568381, 'Sedan', 'Mersedes GLC AMG', '120'),
(749456, 'Crossover', 'BMW X5', '140'),
(678987, 'Sedan', 'Land Rover Discovery', '120');

select *from orders;
