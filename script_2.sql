--SQL_DDL
--Первая часть.

--Таблица employees

--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);
--Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
	values  ('Jason'),
		    ('David'),
		    ('Michael'),	
	        ('Christopher'),	
	        ('James'),	
	        ('John'),	
	        ('Robert'),	
	        ('Brian'),	
	        ('William'),	
	        ('Matthew'),	
	        ('Joseph'),	
	        ('Daniel'),
	        ('Kevin'),		
	        ('Eric'),	
	        ('Jeffrey'),	
	        ('Richard'),	
	        ('Scott'),	
	        ('Mark'),	
	        ('Steven'),	
	        ('Thomas'),	
	        ('Timothy'),	
	        ('Anthony'),	
	        ('Charles'),	
	        ('Joshua'),	
	        ('Ryan'),	
	        ('Jeremy'),	
	        ('Paul'),	
	        ('Andrew'),	
	        ('Gregory'),	
	        ('Chad'),	
	        ('Kenneth'),	
	        ('Jonathan'),
	        ('Stephen'),	
	        ('Shawn'),	
	        ('Aaron'),	
	        ('Adam'),
	        ('Patrick'),
	        ('Justin'),	
	        ('Sean'),	
	        ('Edward'),	
	        ('Todd'),	
	        ('Donald'),	
	        ('Ronald'),	
	        ('Benjamin'),	
	        ('Keith'),	
	        ('Bryan'),	
	        ('Gary'),	
	        ('Jose'),
	        ('Nathan'),
	        ('Douglas'),	
	        ('Nicholas'),	
	        ('Brandon'),	
	        ('George'),	
	        ('Travis'),	
	        ('Peter'),
	        ('Craig'),	
	        ('Bradley'),
	        ('Larry'),	
	        ('Dennis'),	
	        ('Shane'),
	        ('Raymond'),	
	        ('Troy'),	
	        ('Jerry'),	
	        ('Samuel'),	
	        ('Frank'),	
	        ('Jesse'),	
	        ('Jeffery'),	
	        ('Juan'),	
	        ('Terry'),
	        ('Corey');

delete from employees where employee_name = 'Jhon';	  

--Таблица salary

--Создать таблицу salary
-- id. Serial  primary key,
--monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);
--Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
	values  (1000),
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
            (2400);
            
--Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
	values (1,1),          
		   (2,2),
		   (3,3),
		   (4,4),
		   (5,5),
		   (6,6),
		   (7,7),
		   (8,8),
		   (9,9),
		   (10,10),
		   (11,11),
		   (12,12),
		   (13,13),
		   (14,14),
		   (15,15),
		   (16,1),
		   (17,2),
		   (18,3),
		   (19,4),
		   (20,5),
		   (21,6),
		   (22,7),
		   (23,8),
		   (24,9),
		   (25,10),
		   (26,11),
		   (27,12),
		   (28,13),
		   (29,14),
		   (30,15),
		   (435,1),
		   (4535,2),
		   (345,3),
		   (23234,4),
		   (355,5),
		   (54654,6),
		   (2412,7),
		   (76,8),
		   (53,9),
		   (454,5);
				
--Таблица roles

--Создать таблицу roles
--id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);
--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);
--Наполнить таблицу roles 20 строками:
	insert into roles(role_name)
		values('Junior_Python_developer'),
	          ('Middle_Python_developer'),
              ('Senior_Python_developer'),
              ('Junior_Java_developer'),
              ('Middle_Java_developer'),
              ('Senior_Java_developer'),
              ('Junior_JavaScript_developer'),
              ('Middle_JavaScript_developer'),
              ('Senior_JavaScript_developer'),
              ('Junior_QA_engineer'),
              ('Middle_QA_engineer'),     
              ('Senior_QA_engineer'),
              ('Project_Manager'),
              ('Designer'),
              ('HR'),
              ('CEO'),
              ('Sales_manager'),
              ('Junior_Automation_QA_engineer'),
              ('Middle_Automation_QA_engineer'),
              ('Senior_Automation_QA_engineer');

--Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create  table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
	values (1,1),
	       (2,2),
	       (3,3),
	       (4,4),
	       (5,5),
	       (6,6),
	       (7,7),
	       (8,8),
	       (9,9),
	       (10,10),
	       (11,11),
	       (12,12),
	       (13,13),
	       (14,14),
	       (15,15),
	       (16,16),
	       (17,17),
	       (18,18),
	       (19,19),
	       (20,1),
	       (21,2),
	       (22,3),
	       (23,4),
	       (24,5),
	       (25,6),
	       (26,7),
	       (27,8),
	       (28,9),
	       (29,10),
	       (30,11),
	       (31,12),
	       (32,13),
	       (33,14),
	       (34,15),
	       (35,16),
	       (36,17),
	       (37,19),
	       (38,20),
	       (39,1),
	       (40,1);			