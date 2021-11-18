--UC1
create database address_book_services
use address_book_services

--UC2
use address_book_services
create table Address_Book(
first_name varchar(20) not null,
last_name varchar(20) not null,
address varchar(100) not null, 
city varchar(50) not null,
state varchar(200) not null,
zip bigint not null ,
phone_number bigint not null,
email varchar(50)not null
);

--UC3
insert into Address_Book values('dhiraj','hudge','tawarja colony','latur','maharashtra','413512','8149713160','dhiraj@gmail.com')
insert into Address_Book values('suraj','pawar','mataji negar','pune','karnataka','415673','8149613160','suraj@gmail.com')
insert into Address_Book values('vidyadhar','hudge','bashweshwar','amravati','andhra','413678','8179713160','vidyadhar@gmail.com')
insert into Address_Book values('trimbak','pawar','shivaji chowk','mumbai','up','748949','8149703160','trimbak@gmail.com')
insert into Address_Book values('suresh','hudge','ashok hotel','udagir','rajshthan','413562','9149713160','suresh@gmail.com')

/*Displaying adress book*/
select * from  Address_Book;

--UC4
update Address_Book set address='adarsh colny' where first_name='dhiraj';
update Address_Book set city='delhi' where first_name='suraj';
update Address_Book set state='kerala' where first_name='trimbak';

--UC5
delete from Address_Book where first_name='suresh';
delete from Address_Book where first_name='suraj';
delete from Address_Book where first_name='trimbak';

--UC6
select * from Address_Book where city='amravati' Or state='maharashtra';

--UC7
select COUNT(city) as 'number_of_contacts' from Address_Book where city='pune' group by city;
select COUNT(state) as 'number_of_contacts' from Address_Book where state='andhra' group by state;

--UC8
select * from Address_Book where city='amravati' order by first_name;

--UC9
alter table Address_Book add address_book_name varchar(50),address_book_type varchar(50);
update Address_Book set address_book_name='family address book', address_book_type='Family' where first_name='dhiraj';
update Address_Book set address_book_name='friends address book', address_book_type='Friends,' where first_name='vidyadhar';
update Address_Book set address_book_name='profession address book', address_book_type='Profession' where first_name='suraj';

--UC10
select count(address_book_type) as 'number_of_contacts' from Address_Book where address_book_type='Family';
select count(address_book_type) as 'number_of_contacts' from Address_Book where address_book_type='Friends';
select count(address_book_type) as 'number_of_contacts' from Address_Book where address_book_type='Profession'; 

--UC11
insert into Address_Book values ('nitikesh','hudge','tawarja colony','latur','maharashtra',413512,8149713160,'dhiraj@gmail.com','family address book','Family'),
('nitikesh','hudge','tawarja colony','latur','maharashtra',413512,8149713160,'dhiraj@gmail.com','friends address book','Friends');

