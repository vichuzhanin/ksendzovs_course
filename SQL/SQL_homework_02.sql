-- Создать таблицу employees
create table employees(
	employee_id serial primary key,
	employee_name varchar (50) not null
)

-- Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('Victoria Boyd'),
('Robert Gonzalez'),
('Ramona Peters'),
('David Wise'),
('Virginia Ortega'),
('Patricia Gilbert'),
('Walter Jackson'),
('Rhonda Higgins'),
('James Lewis'),
('Samuel Fowler'),
('John Johnson'),
('Kim Harris'),
('Jeffrey Bailey'),
('Ann Powell'),
('Larry Williams'),
('Gary Hernandez'),
('Anthony Patton'),
('Timothy McKenzie'),
('Patricia Obrien'),
('Karen Williams'),
('Glenn Phillips'),
('Jennie Pierce'),
('Travis Kim'),
('James Brown'),
('Charles Stanley'),
('Danny Clark'),
('Linda Banks'),
('Walter Sanders'),
('David Simpson'),
('Anna Baldwin'),
('Craig Jackson'),
('Patricia Lucas'),
('Lisa Delgado'),
('Brian Cooper'),
('Victor Johnson'),
('Charles Williams'),
('Charles Foster'),
('Joyce Pierce'),
('Sarah Reynolds'),
('Kelly Moody'),
('Bruce Baker'),
('Stephanie Powers'),
('Priscilla Singleton'),
('Lois Johnston'),
('Marvin Martinez'),
('Linda Quinn'),
('William McKinney'),
('Morris Johnson'),
('Viola Brown'),
('Leroy Simmons'),
('Patsy Garcia'),
('Shawn Martin'),
('Eduardo Moore'),
('David Vargas'),
('Mary Caldwell'),
('Christopher Daniel'),
('Jonathan Jones'),
('Teresa Vega'),
('Laura Cortez'),
('Connie Herrera'),
('Judy Maxwell'),
('Jeff Gomez'),
('Amanda Thomas'),
('Gwendolyn Morgan'),
('Kyle Blake'),
('Melanie Lewis'),
('Kenneth Ray'),
('Thomas Johnson'),
('Ray Wright'),
('Kathryn Reid');

-- Создать таблицу salary
create table salary(
	salary_id serial primary key,
	monthly_salary int not null
)

-- Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

-- Создать таблицу employee_salary
create table employee_salary(
	employee_salary_id serial primary key,
	employee_id int unique not null,
	salary_id int not null
)

-- Наполнить таблицу employee_salary 40 строками
insert into employee_salary(employee_id, salary_id)
values (63, 6),
(62, 5),
(43, 12),
(7, 6),
(60, 13),
(19, 16),
(1, 4),
(55, 8),
(8, 16),
(51, 16),
(35, 12),
(57, 4),
(27, 4),
(68, 12),
(13, 7),
(54, 10),
(47, 2),
(39, 6),
(48, 13),
(37, 11),
(49, 11),
(2, 15),
(70, 10),
(33, 11),
(66, 7),
(20, 15),
(22, 4),
(34, 3),
(59, 12),
(69, 3),
(71, 1),
(72, 12),
(73, 11),
(74, 14),
(75, 2),
(76, 6),
(77, 8),
(78, 14),
(79, 10),
(80, 6);

-- Создать таблицу roles
create table roles(
	roles_id serial primary key,
	role_name int unique not null
)

-- Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- Создать таблицу roles_employee
create table roles_employee(
	roles_employee_id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(employee_id),
	foreign key (role_id)
		references roles(role_id)
)

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(66, 1),
(42, 2),
(17, 15),
(14, 6),
(13, 8),
(68, 10),
(2, 16),
(9, 11),
(70, 12),
(16, 14),
(47, 17),
(64, 18),
(58, 19),
(40, 15),
(59, 20),
(15, 8),
(50, 7),
(12, 9),
(27, 18),
(51, 19),
(61, 20),
(43, 18),
(30, 2),
(41, 4),
(38, 6),
(39, 1),
(67, 3),
(8, 5),
(28, 7);

-- Проверка корректности создания таблицы employees
select * from employees

-- Проверка корректности создания таблицы salary
select * from salary

-- Проверка корректности создания таблицы employee_salary
select * from employee_salary

-- Проверка корректности создания таблицы roles
select * from roles

-- Проверка корректности создания таблицы roles_employee
select * from roles_employee
