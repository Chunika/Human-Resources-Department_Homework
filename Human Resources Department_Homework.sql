create database HumanResourcesDepartment;

use HumanResourcesDepartment;

create table contacts
(
contact_id int auto_increment not null,
name_employ varchar(20) not null,  
surname_employ varchar(20) not null,
phone varchar(20) not null, 
primary key(contact_id)
);

create table business_data
( 
business_data_id int auto_increment not null,
salary int not null,
title_job varchar(20) not null, 
primary key(business_data_id)
);

create table personal_data
(
personal_data_id int auto_increment not null,
date_of_birth date not null,
family_status enum ('married', 'unmarried', 'widow', 'widover'), 
email varchar (40) not null,
primary key(personal_data_id)
);

insert into contacts (name_employ, phone, surname_employ) 
values 
('Dmytriy Pietukhov', '+380665789609', 'arbuz_sanchos'),
('Eugeniy Kladberov', '+380968079765', 'Gats'),
('Matvey ???', '+380981217043', 'Diller_228'),
('Lena Alekseeva', '+380989870215', 'Elena_1987');

insert into business_data (salary, title_job)
values 
(70492, 'unemployed'),
(10000, 'front_end_middle'),
(43243, 'full_end_senior'),
(432942394, 'massagist');

insert into personal_data (date_of_birth, family_status, email)  
values 
('2007-11-01', 'unmarried', 'hoika4@gmail.com'),
('2007-07-11', 'widover', 'leonchik@gmail.com'),
('2011-09-12', 'widow', 'legenda1488@gmail.com'),  
('2007-09-12', 'married', 'massagist@gmail.com');
