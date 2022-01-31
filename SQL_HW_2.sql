--  Создать таблицу employees + Наполнить таблицу employee 70 строками.
    
create table employees (
id serial primary key,
employee_name varchar(50) not null
);
select * from employees;

insert into employees (id,employee_name) values (1,'Nata');
select * from employees;

insert into employees (id,employee_name) values
(2,'Olga'),(3,'Alex'),(4,'Fill'),(5,'Dmitriy'),(6,'Lera'),(7,'Vika'),(8,'Bram'),(9,'Judy Jenkins'),(10,'Michael Fox'),
(11,'Rita Lopez'),(12,'Ben Gilbert'),(13,'Becky Jackson'),
(14,'Thomas Adams'),(15,'Douglas Wilson'),(16,'David Wells'),(17,'Lucille Harris'),(18,'Jose Schmidt'),
(19,'Nicole Torres'),
(20,'Frank Spencer'),(21,'Shirley Todd'),(22,'Harold Jennings'),(23,'Charles Jones'),(24,'Jennifer Smith'),
(25,'Beverly Simmons'),
(26,'Barbara Gonzales'),(27,'Jose Sherman'),(28,'Ruth Hernandez'),(29,'Glenn Pena'),(30,'Dorothy Jones'),
(31,'Antonio Williams'),
(32,'Cheryl Dixon'),(33,'Arlene Schmidt'),(34,'Anna Brown'),(35,'Bill Logan'),(36,'Deanna Saunders'),(37,'Steven Simpson'),
(38,'Susan Gonzalez'),(39,'Virginia Smith'),(40,'Wanda Parsons'),(41,'Emma'),(42,'Carlos McDaniel'),(43,'Michael Richards'),
(44,'John Kelley'),(45,'Charles Bailey'),(46,'Joe Miller'),(47,'Mary Owen'),(48,'Ruth Smith'),(49,'Marilyn Garcia'),
(50,'Betty Benson'),
(51,'Robert Jones'),(52,'Kim Jimenez'),(53,'Mary Estrada'),(54,'Andrea Chapman'),(55,'Kyle Smith'),(56,'Donald Hopkins'),
(57,'Janet Jones'),
(58,'Leah Stanley'),(59,'Luis Hill'),(60,'Amy Allen'),(61,'David Hudson'),(62,'Edward Thornton'),(63,'Donald Wright'),
(64,'Alicia Ryan'),
(65,'George Spencer'),(66,'Janice Lynch'),(67,'Tracey Lewis'),(68,'Linda George'),(69,'Anna V'),(70,'Anna Lee');

select * from employees;

--     3) Создать таблицу salary - Наполнить таблицу salary 15 строками
create table salary (
id serial  primary key,
monthly_salary int not null
);

insert into salary (monthly_salary) values (1000);
insert into salary (monthly_salary) values (1100),(1200),(1300),(1400),(1500),(1600),(1700),(1800),(1900),(2000),
(2100), (2200),(2300),(2400),(2500);
select * from salary;

  -- Создать таблицу employee_salary + Наполнить таблицу employee_salary 40 строками 
  --- + в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id, salary_id) values 
(3,7), (1,4), (5,9), (40,13), (23,4), (11,2), (52,10), (15,13),(26,4),(16,1),(33,7);
insert into employee_salary (employee_id, salary_id) values
(2,11),(4,1),(6,10),(7,8), (8,1),(9,2),(10,3),(12,4),(13,5),(14,6),(17,7),(18,8),(19,9), (20,10),(21,11), (22,12),(24,13),
(25,14),(27,15),(71,1),(72,2),(73,3),(74,4),(75,5),(76,6),(77,7),(78,8),(79,9),(80,2);

--    Создать таблицу roles + Поменять тип столба role_name с int на varchar(30) + Наполнить таблицу roles 20 строками
create table roles (
 id serial primary key,
 role_name int not null unique
);
alter table roles
alter column role_name type varchar(30);

insert into roles (role_name) values 
('Junior Python developer'),('Middle Python developer'),('Senior Python developer'),('Junior Java developer'),
('Middle Java developer'),('Senior Java developer'),('Junior JavaScript developer'),
('Middle JavaScript developer'),('Senior JavaScript developer'),('Junior Manual QA engineer'),('Middle Manual QA engineer'),
('Senior Manual QA engineer'),('Project Manager'),('Designer'),('HR'),('CEO'),('Sales manager'),
('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');

--     10) Создать таблицу roles_employee
-внешний ключ для таблицы employees, поле id
-внешний ключ для таблицы roles, поле id

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null
);

-- Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id) values
(10,2),(20,4),(3,9),(5,13),(23,4),(11,2),(19,9),(22,13),(21,3),(34,4),(6,7),(1,1),(40,5),(2,6),
(39,8),(4,10),(38,11),(7,12),(37,14),(8,15),(36,16),(9,17),(35,18),(12,19),(33,20),(13,15),(28,14),
(30,13),(26,12),(14,11),(32,10),(15,9),(31,8),(16,7),(25,6),(17,5),
(29,3),(18,4),(27,2),(24,1);











