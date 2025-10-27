create database assignment;

use assignment;
create table salesman (
salesman_id int auto_increment primary key,
name varchar(50),
city varchar(50),
commission decimal);

INSERT INTO salesman (salesman_id, name, city, commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);

select * from salesman;

create table customer (customer_id int auto_increment primary key,
cust_name varchar(50) not null,
city varchar(30) not null,
grade int(3) not null,
salesman_id int ,
foreign key (salesman_id) references salesman(salesman_id));

ALTER TABLE customer MODIFY grade INT NULL;

INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id)
VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);

select * from customer;


desc customer;

create table orders (
ord_no int auto_increment primary key,
purch_amt float not null,
ord_date date not null,
customer_id int,
salesman_id int,
foreign key (customer_id) references customer(customer_id),
foreign key (salesman_id) references salesman(salesman_id));

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
    (70001, 150.50, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26,  '2012-10-05', 3002, 5001),
    (70004, 110.50, '2012-08-17', 3009, 5003),
    (70007, 948.50, '2012-09-10', 3005, 5002),
    (70005, 2400.60,'2012-07-27', 3007, 5001),
    (70008, 5760.00,'2012-09-10', 3002, 5001),
    (70010, 1983.43,'2012-10-10', 3004, 5006),
    (70003, 2480.40,'2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002),
    (70011, 75.29,  '2012-08-17', 3003, 5007),
    (70013, 3045.60,'2012-04-25', 3002, 5003);


create table emp_details(
emp_id int auto_increment primary key,
emp_Fname varchar(50) not null,
emp_Lname varchar(50) not null,
emp_dept int not null);

INSERT INTO emp_details (emp_id, emp_Fname, emp_Lname, emp_dept)
VALUES
    (127323, 'Michale',  'Robbin',     57),
    (526689, 'Carlos',   'Snares',     63),
    (843795, 'Enric',    'Dosio',      57),
    (328717, 'Jhon',     'Snares',     63),
    (444527, 'Joseph',   'Dosni',      47),
    (659831, 'Zanifer',  'Emily',      47),
    (847674, 'Kuleswar', 'Sitaraman',  57),
    (748681, 'Henrey',   'Gabriel',    47),
    (555935, 'Alex',     'Manuel',     57),
    (539569, 'George',   'Mardy',      27),
    (733843, 'Mario',    'Saule',      63),
    (631548, 'Alan',     'Snappy',     27),
    (839139, 'Maria',    'Foster',     57);



create table item_mast(
pro_id int auto_increment primary key,
pro_name varchar(50) not null,
pro_price int not null,
pro_com int not null );

INSERT INTO item_mast (pro_id, pro_name, pro_price, pro_com)
VALUES
    (101, 'Motherboard',      3200.00, 15),
    (102, 'Keyboard',          450.00, 16),
    (103, 'ZIP drive',         250.00, 14),
    (104, 'Speaker',           550.00, 16),
    (105, 'Monitor',          5000.00, 11),
    (106, 'DVD drive',         900.00, 12),
    (107, 'CD drive',          800.00, 12),
    (108, 'Printer',          2600.00, 13),
    (109, 'Refill cartridge',  350.00, 13),
    (110, 'Mouse',             250.00, 12);
    
    
    CREATE TABLE regions (
    regionid INT(11) primary key NOT NULL,
    regionname VARCHAR(25)
    
);

alter table regions modify regionid int(11) unsigned  not null;

desc regions;

INSERT INTO regions (regionid, regionname) VALUES
    (1, 'Europe'),
    (2, 'Americas'),
    (3, 'Asia'),
    (4, 'Middle East and Africa');
    

CREATE TABLE countries (
    countryid CHAR(2) NOT NULL,
    countryname VARCHAR(40),
    regionid INT(11) UNSIGNED NOT NULL,
    PRIMARY KEY (countryid)
);

desc countries;

INSERT INTO countries (countryid, countryname, regionid) VALUES
    ('IT', 'Italy', 1), ('JP', 'Japan', 3),
    ('US', 'United States of America', 2), ('CA', 'Canada', 2),
    ('CN', 'China', 3), ('IN', 'India', 3),
    ('AU', 'Australia', 3), ('ZW', 'Zimbabwe', 4),
    ('SG', 'Singapore', 3), ('UK', 'United Kingdom', 1),
    ('FR', 'France', 1), ('DE', 'Germany', 1),
    ('ZM', 'Zambia', 4), ('EG', 'Egypt', 4),
    ('BR', 'Brazil', 2), ('CH', 'Switzerland', 1),
    ('NL', 'Netherlands', 1), ('MX', 'Mexico', 2),
    ('KW', 'Kuwait', 4), ('IL', 'Israel', 4),
    ('DK', 'Denmark', 1), ('HK', 'HongKong', 3),
    ('NG', 'Nigeria', 4), ('AR', 'Argentina', 2),
    ('BE', 'Belgium', 1);
    
    
    ALTER TABLE countries ADD FOREIGN KEY (regionid) REFERENCES regions(regionid);
    
    CREATE TABLE locations (
    locationid INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    streetaddress VARCHAR(40),
    postalcode VARCHAR(12),
    city VARCHAR(30) NOT NULL,
    stateprovince VARCHAR(25),
    countryid CHAR(2) NOT NULL,
    PRIMARY KEY (locationid)
);

INSERT INTO locations (locationid, streetaddress, postalcode, city, stateprovince, countryid) VALUES
    (1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT'),
    (1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT'),
    (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
    (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP'),
    (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
    (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
    (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
    (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
    (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
    (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
    (2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN'),
    (2100, '1298 Vileparle E', '490231', 'Bombay', 'Maharashtra', 'IN'),
    (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
    (2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG'),
    (2400, '8204 Arthur St', NULL, 'London', NULL, 'UK'),
    (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
    (2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK'),
    (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
    (2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
    (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
    (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
    (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
    (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');
    
    ALTER TABLE locations
    ADD FOREIGN KEY (countryid) REFERENCES countries(countryid);
    
    
    CREATE TABLE departments (
    departmentid INT(11) UNSIGNED NOT NULL,
    departmentname VARCHAR(30) NOT NULL,
    managerid INT(11) UNSIGNED,
    locationid INT(11) UNSIGNED,
    PRIMARY KEY (departmentid)
);
    
    
    INSERT INTO departments (departmentid, departmentname, managerid, locationid) VALUES
    (10, 'Administration', 200, 1700),
    (20, 'Marketing', 201, 1800),
    (30, 'Purchasing', 114, 1700),
    (40, 'Human Resources', 203, 2400),
    (50, 'Shipping', 121, 1500),
    (60, 'IT', 103, 1400),
    (70, 'Public Relations', 204, 2700),
    (80, 'Sales', 145, 2500),
    (90, 'Executive', 100, 1700),
    (100, 'Finance', 108, 1700),
    (110, 'Accounting', 205, 1700),
    (120, 'Treasury', NULL, 1700),
    (130, 'Corporate Tax', NULL, 1700),
    (140, 'Control And Credit', NULL, 1700),
    (150, 'Shareholder Services', NULL, 1700),
    (160, 'Benefits', NULL, 1700),
    (170, 'Manufacturing', NULL, 1700),
    (180, 'Construction', NULL, 1700),
    (190, 'Contracting', NULL, 1700),
    (200, 'Operations', NULL, 1700),
    (210, 'IT Support', NULL, 1700),
    (220, 'NOC', NULL, 1700),
    (230, 'IT Helpdesk', NULL, 1700),
    (240, 'Government Sales', NULL, 1700),
    (250, 'Retail Sales', NULL, 1700),
    (260, 'Recruiting', NULL, 1700),
    (270, 'Payroll', NULL, 1700);
    
    
    ALTER TABLE departments
    ADD FOREIGN KEY (locationid) REFERENCES locations(locationid);
    -- this table is to be make , run this query after making this table
     ALTER TABLE departments
    ADD FOREIGN KEY (managerid) REFERENCES employees(employeeid);
    
    CREATE TABLE jobs (
    jobid VARCHAR(10) NOT NULL,
    jobtitle VARCHAR(35) NOT NULL,
    minsalary DECIMAL(8, 0) UNSIGNED,
    maxsalary DECIMAL(8, 0) UNSIGNED,
    PRIMARY KEY (jobid)
);
    
    INSERT INTO jobs (jobid, jobtitle, minsalary, maxsalary) VALUES
    ('ADPRES', 'President', 20000, 40000),
    ('ADVP', 'Administration Vice President', 15000, 30000),
    ('ADASST', 'Administration Assistant', 3000, 6000),
    ('FIMGR', 'Finance Manager', 8200, 16000),
    ('FIACCOUNT', 'Accountant', 4200, 9000),
    ('ACMGR', 'Accounting Manager', 8200, 16000),
    ('ACACCOUNT', 'Public Accountant', 4200, 9000),
    ('SAMAN', 'Sales Manager', 10000, 20000),
    ('SAREP', 'Sales Representative', 6000, 12000),
    ('PUMAN', 'Purchasing Manager', 8000, 15000),
    ('PUCLERK', 'Purchasing Clerk', 2500, 5500),
    ('STMAN', 'Stock Manager', 5500, 8500),
    ('STCLERK', 'Stock Clerk', 2000, 5000),
    ('SHCLERK', 'Shipping Clerk', 2500, 5500),
    ('ITPROG', 'Programmer', 4000, 10000),
    ('MKMAN', 'Marketing Manager', 9000, 15000),
    ('MKREP', 'Marketing Representative', 4000, 9000),
    ('HRREP', 'Human Resources Representative', 4000, 9000),
    ('PRREP', 'Public Relations Representative', 4500, 10500);
    
    
    CREATE TABLE employees (
    employeeid INT(11) UNSIGNED NOT NULL,
    firstname VARCHAR(20),
    lastname VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phonenumber VARCHAR(20),
    hiredate DATE NOT NULL,
    jobid VARCHAR(10) NOT NULL,
    salary DECIMAL(8, 2) NOT NULL,
    commissionpct DECIMAL(2, 2),
    managerid INT(11) UNSIGNED,
    departmentid INT(11) UNSIGNED,
    PRIMARY KEY (employeeid)
);

-- first 20 

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', STR_TO_DATE('17-JUN-1987', '%d-%b-%Y'), 'ADPRES', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', STR_TO_DATE('21-SEP-1989', '%d-%b-%Y'), 'ADVP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', STR_TO_DATE('13-JAN-1993', '%d-%b-%Y'), 'ADVP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', STR_TO_DATE('03-JAN-1990', '%d-%b-%Y'), 'ITPROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', STR_TO_DATE('21-MAY-1991', '%d-%b-%Y'), 'ITPROG', 6000, NULL, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', STR_TO_DATE('25-JUN-1997', '%d-%b-%Y'), 'ITPROG', 4800, NULL, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', STR_TO_DATE('05-FEB-1998', '%d-%b-%Y'), 'ITPROG', 4800, NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', STR_TO_DATE('07-FEB-1999', '%d-%b-%Y'), 'ITPROG', 4200, NULL, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', STR_TO_DATE('17-AUG-1994', '%d-%b-%Y'), 'FIMGR', 12000, NULL, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', STR_TO_DATE('16-AUG-1994', '%d-%b-%Y'), 'FIACCOUNT', 9000, NULL, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', STR_TO_DATE('28-SEP-1997', '%d-%b-%Y'), 'FIACCOUNT', 8200, NULL, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', STR_TO_DATE('30-SEP-1997', '%d-%b-%Y'), 'FIACCOUNT', 7700, NULL, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', STR_TO_DATE('07-MAR-1998', '%d-%b-%Y'), 'FIACCOUNT', 7800, NULL, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', STR_TO_DATE('07-DEC-1999', '%d-%b-%Y'), 'FIACCOUNT', 6900, NULL, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', STR_TO_DATE('07-DEC-1994', '%d-%b-%Y'), 'PUMAN', 11000, NULL, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', STR_TO_DATE('18-MAY-1995', '%d-%b-%Y'), 'PUCLERK', 3100, NULL, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', STR_TO_DATE('24-DEC-1997', '%d-%b-%Y'), 'PUCLERK', 2900, NULL, 114, 30),
(117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', STR_TO_DATE('24-JUL-1997', '%d-%b-%Y'), 'PUCLERK', 2800, NULL, 114, 30),
(118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', STR_TO_DATE('15-NOV-1998', '%d-%b-%Y'), 'PUCLERK', 2600, NULL, 114, 30),
(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', STR_TO_DATE('10-AUG-1999', '%d-%b-%Y'), 'PUCLERK', 2500, NULL, 114, 30);


-- second 20 

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', STR_TO_DATE('18-JUL-1996', '%d-%b-%Y'), 'STMAN', 8000, NULL, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', STR_TO_DATE('10-APR-1997', '%d-%b-%Y'), 'STMAN', 8200, NULL, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', STR_TO_DATE('01-MAY-1995', '%d-%b-%Y'), 'STMAN', 7900, NULL, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', STR_TO_DATE('10-OCT-1997', '%d-%b-%Y'), 'STMAN', 6500, NULL, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', STR_TO_DATE('16-NOV-1999', '%d-%b-%Y'), 'STMAN', 5800, NULL, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', STR_TO_DATE('16-JUL-1997', '%d-%b-%Y'), 'STCLERK', 3200, NULL, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', STR_TO_DATE('28-SEP-1998', '%d-%b-%Y'), 'STCLERK', 2700, NULL, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', STR_TO_DATE('14-JAN-1999', '%d-%b-%Y'), 'STCLERK', 2400, NULL, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', STR_TO_DATE('08-MAR-2000', '%d-%b-%Y'), 'STCLERK', 2200, NULL, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', STR_TO_DATE('20-AUG-1997', '%d-%b-%Y'), 'STCLERK', 3300, NULL, 121, 50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', STR_TO_DATE('30-OCT-1997', '%d-%b-%Y'), 'STCLERK', 2800, NULL, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', STR_TO_DATE('16-FEB-1997', '%d-%b-%Y'), 'STCLERK', 2500, NULL, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', STR_TO_DATE('10-APR-1999', '%d-%b-%Y'), 'STCLERK', 2100, NULL, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', STR_TO_DATE('14-JUN-1996', '%d-%b-%Y'), 'STCLERK', 3300, NULL, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', STR_TO_DATE('26-AUG-1998', '%d-%b-%Y'), 'STCLERK', 2900, NULL, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', STR_TO_DATE('12-DEC-1999', '%d-%b-%Y'), 'STCLERK', 2400, NULL, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', STR_TO_DATE('06-FEB-2000', '%d-%b-%Y'), 'STCLERK', 2200, NULL, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', STR_TO_DATE('14-JUL-1995', '%d-%b-%Y'), 'STCLERK', 3600, NULL, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', STR_TO_DATE('26-OCT-1997', '%d-%b-%Y'), 'STCLERK', 3200, NULL, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', STR_TO_DATE('12-FEB-1998', '%d-%b-%Y'), 'STCLERK', 2700, NULL, 123, 50);

-- 3rd 20 batch

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', STR_TO_DATE('06-APR-1998', '%d-%b-%Y'), 'STCLERK', 2500, NULL, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', STR_TO_DATE('17-OCT-1995', '%d-%b-%Y'), 'STCLERK', 3500, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', STR_TO_DATE('29-JAN-1997', '%d-%b-%Y'), 'STCLERK', 3100, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', STR_TO_DATE('15-MAR-1998', '%d-%b-%Y'), 'STCLERK', 2600, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', STR_TO_DATE('09-JUL-1998', '%d-%b-%Y'), 'STCLERK', 2500, NULL, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', STR_TO_DATE('01-OCT-1996', '%d-%b-%Y'), 'SAMAN', 14000, 0.4, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', STR_TO_DATE('05-JAN-1997', '%d-%b-%Y'), 'SAMAN', 13500, 0.3, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', STR_TO_DATE('10-MAR-1997', '%d-%b-%Y'), 'SAMAN', 12000, 0.3, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', STR_TO_DATE('15-OCT-1999', '%d-%b-%Y'), 'SAMAN', 11000, 0.3, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', STR_TO_DATE('29-JAN-2000', '%d-%b-%Y'), 'SAMAN', 10500, 0.2, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', STR_TO_DATE('30-JAN-1997', '%d-%b-%Y'), 'SAREP', 10000, 0.3, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', STR_TO_DATE('24-MAR-1997', '%d-%b-%Y'), 'SAREP', 9500, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', STR_TO_DATE('20-AUG-1997', '%d-%b-%Y'), 'SAREP', 9000, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', STR_TO_DATE('30-MAR-1998', '%d-%b-%Y'), 'SAREP', 8000, 0.2, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', STR_TO_DATE('09-DEC-1998', '%d-%b-%Y'), 'SAREP', 7500, 0.2, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', STR_TO_DATE('23-NOV-1999', '%d-%b-%Y'), 'SAREP', 7000, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', STR_TO_DATE('30-JAN-1996', '%d-%b-%Y'), 'SAREP', 10000, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', STR_TO_DATE('04-MAR-1996', '%d-%b-%Y'), 'SAREP', 9500, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', STR_TO_DATE('01-AUG-1996', '%d-%b-%Y'), 'SAREP', 9000, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', STR_TO_DATE('10-MAR-1997', '%d-%b-%Y'), 'SAREP', 8000, 0.3, 146, 80);


-- 4th set of 20

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', STR_TO_DATE('15-DEC-1997', '%d-%b-%Y'), 'SAREP', 7500, 0.3, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', STR_TO_DATE('03-NOV-1998', '%d-%b-%Y'), 'SAREP', 7000, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', STR_TO_DATE('11-NOV-1997', '%d-%b-%Y'), 'SAREP', 10500, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', STR_TO_DATE('19-MAR-1999', '%d-%b-%Y'), 'SAREP', 9500, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', STR_TO_DATE('24-JAN-2000', '%d-%b-%Y'), 'SAREP', 7200, 0.10, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', STR_TO_DATE('23-FEB-2000', '%d-%b-%Y'), 'SAREP', 6800, 0.10, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', STR_TO_DATE('24-MAR-2000', '%d-%b-%Y'), 'SAREP', 6400, 0.10, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', STR_TO_DATE('21-APR-2000', '%d-%b-%Y'), 'SAREP', 6200, 0.10, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', STR_TO_DATE('11-MAR-1997', '%d-%b-%Y'), 'SAREP', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', STR_TO_DATE('23-MAR-1998', '%d-%b-%Y'), 'SAREP', 10000, 0.20, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', STR_TO_DATE('24-JAN-1998', '%d-%b-%Y'), 'SAREP', 9600, 0.20, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', STR_TO_DATE('23-FEB-1999', '%d-%b-%Y'), 'SAREP', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', STR_TO_DATE('24-MAR-1999', '%d-%b-%Y'), 'SAREP', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', STR_TO_DATE('21-APR-2000', '%d-%b-%Y'), 'SAREP', 6100, 0.10, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', STR_TO_DATE('11-MAY-1996', '%d-%b-%Y'), 'SAREP', 11000, 0.30, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', STR_TO_DATE('19-MAR-1997', '%d-%b-%Y'), 'SAREP', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', STR_TO_DATE('24-MAR-1998', '%d-%b-%Y'), 'SAREP', 8600, 0.20, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', STR_TO_DATE('23-APR-1998', '%d-%b-%Y'), 'SAREP', 8400, 0.20, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', STR_TO_DATE('24-MAY-1999', '%d-%b-%Y'), 'SAREP', 7000, 0.15, 149, NULL),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', STR_TO_DATE('04-JAN-2000', '%d-%b-%Y'), 'SAREP', 6200, 0.10, 149, 80);


-- 5th set of 20

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', STR_TO_DATE('24-JAN-1998', '%d-%b-%Y'), 'SHCLERK', 3200, NULL, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', STR_TO_DATE('23-FEB-1998', '%d-%b-%Y'), 'SHCLERK', 3100, NULL, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', STR_TO_DATE('21-JUN-1999', '%d-%b-%Y'), 'SHCLERK', 2500, NULL, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', STR_TO_DATE('03-FEB-2000', '%d-%b-%Y'), 'SHCLERK', 2800, NULL, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', STR_TO_DATE('27-JAN-1996', '%d-%b-%Y'), 'SHCLERK', 4200, NULL, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', STR_TO_DATE('20-FEB-1997', '%d-%b-%Y'), 'SHCLERK', 4100, NULL, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', STR_TO_DATE('24-JUN-1998', '%d-%b-%Y'), 'SHCLERK', 3400, NULL, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', STR_TO_DATE('07-FEB-1999', '%d-%b-%Y'), 'SHCLERK', 3000, NULL, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', STR_TO_DATE('14-JUN-1997', '%d-%b-%Y'), 'SHCLERK', 3800, NULL, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', STR_TO_DATE('13-AUG-1997', '%d-%b-%Y'), 'SHCLERK', 3600, NULL, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', STR_TO_DATE('11-JUL-1998', '%d-%b-%Y'), 'SHCLERK', 2900, NULL, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', STR_TO_DATE('19-DEC-1999', '%d-%b-%Y'), 'SHCLERK', 2500, NULL, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', STR_TO_DATE('04-FEB-1996', '%d-%b-%Y'), 'SHCLERK', 4000, NULL, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', STR_TO_DATE('03-MAR-1997', '%d-%b-%Y'), 'SHCLERK', 3900, NULL, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', STR_TO_DATE('01-JUL-1998', '%d-%b-%Y'), 'SHCLERK', 3200, NULL, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', STR_TO_DATE('17-MAR-1999', '%d-%b-%Y'), 'SHCLERK', 2800, NULL, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', STR_TO_DATE('24-APR-1998', '%d-%b-%Y'), 'SHCLERK', 3100, NULL, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', STR_TO_DATE('23-MAY-1998', '%d-%b-%Y'), 'SHCLERK', 3000, NULL, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', STR_TO_DATE('21-JUN-1999', '%d-%b-%Y'), 'SHCLERK', 2600, NULL, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', STR_TO_DATE('13-JAN-2000', '%d-%b-%Y'), 'SHCLERK', 2600, NULL, 124, 50);

-- 6th set of 7

INSERT INTO employees (employeeid, firstname, lastname, email, phonenumber, hiredate, jobid, salary, commissionpct, managerid, departmentid) VALUES
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', STR_TO_DATE('17-SEP-1987', '%d-%b-%Y'), 'ADASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', STR_TO_DATE('17-FEB-1996', '%d-%b-%Y'), 'MKMAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', STR_TO_DATE('17-AUG-1997', '%d-%b-%Y'), 'MKREP', 6000, NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', STR_TO_DATE('07-JUN-1994', '%d-%b-%Y'), 'HRREP', 6500, NULL, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', STR_TO_DATE('07-JUN-1994', '%d-%b-%Y'), 'PRREP', 10000, NULL, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', STR_TO_DATE('07-JUN-1994', '%d-%b-%Y'), 'ACMGR', 12000, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', STR_TO_DATE('07-JUN-1994', '%d-%b-%Y'), 'ACACCOUNT', 8300, NULL, 205, 110);


ALTER TABLE employees
    ADD FOREIGN KEY (jobid) REFERENCES jobs(jobid),
    ADD FOREIGN KEY (departmentid) REFERENCES departments(departmentid),
    ADD FOREIGN KEY (managerid) REFERENCES employees(employeeid);
    


CREATE TABLE jobhistory (
    employeeid INT(11) UNSIGNED NOT NULL,
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    jobid VARCHAR(10) NOT NULL,
    departmentid INT(11) UNSIGNED NOT NULL,
    UNIQUE (employeeid, startdate)
);


INSERT INTO jobhistory (employeeid, startdate, enddate, jobid, departmentid) VALUES
    (102, STR_TO_DATE('13-Jan-1993', '%d-%b-%Y'), STR_TO_DATE('24-Jul-1998', '%d-%b-%Y'), 'ITPROG', 60),
    (101, STR_TO_DATE('21-Sep-1989', '%d-%b-%Y'), STR_TO_DATE('27-Oct-1993', '%d-%b-%Y'), 'ACACCOUNT', 110),
    (101, STR_TO_DATE('28-Oct-1993', '%d-%b-%Y'), STR_TO_DATE('15-Mar-1997', '%d-%b-%Y'), 'ACMGR', 110),
    (201, STR_TO_DATE('27-Feb-1996', '%d-%b-%Y'), STR_TO_DATE('19-Dec-1999', '%d-%b-%Y'), 'MKREP', 20),
    (114, STR_TO_DATE('24-Mar-1998', '%d-%b-%Y'), STR_TO_DATE('31-Dec-1999', '%d-%b-%Y'), 'STCLERK', 50),
    (122, STR_TO_DATE('01-Jan-1999', '%d-%b-%Y'), STR_TO_DATE('31-Dec-1999', '%d-%b-%Y'), 'STCLERK', 50),
    (200, STR_TO_DATE('17-Sep-1987', '%d-%b-%Y'), STR_TO_DATE('17-Jun-1993', '%d-%b-%Y'), 'ADASST', 90),
    (176, STR_TO_DATE('24-Mar-1998', '%d-%b-%Y'), STR_TO_DATE('31-Dec-1998', '%d-%b-%Y'), 'SAREP', 80),
    (176, STR_TO_DATE('01-Jan-1999', '%d-%b-%Y'), STR_TO_DATE('31-Dec-1999', '%d-%b-%Y'), 'SAMAN', 80),
    (200, STR_TO_DATE('01-Jul-1994', '%d-%b-%Y'), STR_TO_DATE('31-Dec-1998', '%d-%b-%Y'), 'ACACCOUNT', 90);

ALTER TABLE jobhistory ADD UNIQUE INDEX ( 
employeeid, 
startdate 
); 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
-- write a SQL query to find customers who are either from the city 'NewYork' or
-- who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.

select * from customer where city = "NewYork" or grade<101 ;

-- write a SQL query to find all the customers in ‘New York’ city who have agradevalue above 100. Return customer_id, cust_name, city, grade, and salesman_id.

select * from customer where city = "NewYork" and grade>=101;

-- Write a SQL query that displays order number, purchase amount, and the
-- achieved and unachieved percentage (%) for those orders that exceed 50%of thetarget value of 6000.

select * from orders;

select ord_no , purch_amt , (purch_amt*100)/6000 as percentage from orders where purch_amt >= 3000;

-- write a SQL query to calculate the total purchase amount of all orders. Returntotal purchase amount

select sum(purch_amt) as total_amount from orders;

-- write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount.\

select * from orders;
select * from customer;

select customer_id , purch_amt from orders where purch_amt =(
select max(purch_amt) from orders);

-- write a SQL query to calculate the average product price. Return average product
-- price.

select * from item_mast;
select avg(pro_price) as avg_price from item_mast;

-- write a SQL query to find those employees whose department is located at ‘Toronto’. Return first name, last name, employee ID, job ID.

select * from departments;
select * from employees;
select * from locations;

select employeeid, firstname,lastname,jobid from employees where departmentid in(
select departmentid from departments where locationid =(
select locationid from locations where city = "Seattle"));

