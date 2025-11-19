create database sample;
use sample;
create table employees(id int auto_increment primary key,name varchar(25),position varchar(15),salary int);
create table products(product_id int primary key,name varchar(25),price int ,stock_quantity int);
alter table employees
add column email varchar(255) not null unique;
alter table employees
modify column salary decimal(10,2);
alter table employees
drop column position;
alter table employees
add column position varchar(15);
alter table employees
drop column email;
alter table employees
add column email varchar(255);
insert into employees (name, position, salary) values ('John Doe', 'Manager', 60000);
insert into products(product_id,name,price,stock_quantity) values('101','Soap',50,3);
insert into products(product_id,name,price,stock_quantity) values('102','Tooth Paste',200,5), ('103','Tooth Brush',20,10),('104','Detergent',300,2);
update employees set salary = 70000 where id = 1;
SET SQL_SAFE_UPDATES = 0;
update employees set position = 'Senior Staff' where salary > 50000 ;
delete from employees where name = 'John Doe';
delete from products where stock_quantity = 0;
select * from employees ;
insert into employees (name, position, salary) values ('John Doe', 'Manager', 60000);
select * from employees ;
select name,salary from employees where salary > 50000;
select count(*) from products where price >20;
select count(*) as Product_Above_20 from products where price >20;
drop table products;
alter table employee
drop column email;




