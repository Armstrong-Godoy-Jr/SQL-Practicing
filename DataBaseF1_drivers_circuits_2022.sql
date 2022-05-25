-- Creating Database: 

create database F1_2022
default character set utf8
default collate utf8_general_ci
;

use F1_2022;

-- Creating Table drivers:  

create table drivers (
id int not null auto_increment,
`name` varchar(250) not null,
date_of_birth date,
team varchar(250),
country varchar(250),
podiums tinyint,
grands_prix_entered int,
world_championships tinyint,
highest_race_finished tinyint,
highest_grid_position tinyint,
primary key (id)

) default charset = utf8;

describe drivers;

-- Modifying the name of the first column from id to id_driver 
alter table drivers
rename column id to id_driver;

-- Creating table 'grand_prix'
create table grand_prix (
id_grand_prix int not null auto_increment,
grand_prix_name varchar(250) not null,
first_grand_prix year(4),
number_of_laps int,
circuit_length int,
race_distance int,
lap_record time,
primary key (id_grand_prix)
) default charset = utf8;

describe grand_prix;

-- Inserting data into table 'drivers'

insert into drivers values 
(default, 'Alexander Albon', '1996-03-23', 'Williams', 'Thailand', '2', '43', '0', '3', '4'),
(default, 'Fernando Alonso', '1981-07-29', 'Alpine', 'Spain', '98', '342', '2', '1', '1'),
(default, 'Valtteri Bottas', '1989-08-28', 'Alfa Romeo', 'Finland', '67', '184', '0', '1', '1'),
(default, 'Pierre Gasly', '1996-02-07', 'AlphaTauri', 'France', '3', '92', '0', '1', '2'),
(default, 'Lewis Hamilton', '1985-01-07', 'Mercedes', 'United Kingdom', '183', '294', '7', '1', '1'),
(default, 'Nicholas Latifi', '1995-06-29', 'Williams', 'Canada', '0', '45', '0', '7', '10'),
(default, 'Charles Leclerc', '1997-10-16', 'Ferrari', 'Monaco', '17', '87', '0', '1', '1'),
(default, 'Kevin Magnussen', '1992-10-05', 'Haas', 'Denmark', '1', '126', '0', '2', '4'),
(default, 'Lando Norris', '1999-11-13', 'McLaren', 'United Kingdom', '6', '66', '0', '2', '1'),
(default, 'Esteban Ocon', '1996-09-17', 'Alpine', 'France', '2', '95', '0', '1', '3'),
(default, 'Sergio Perez', '1990-01-26', 'Red Bull Racing', 'Mexico', '18', '220', '0', '1', '1'),
(default, 'Daniel Ricciardo', '1989-07-01', 'McLaren', 'Australia', '32', '216', '0', '1', '1'),
(default, 'George Russell', '1998-02-15', 'Mercedes', 'United Kingdom', '3', '66', '0', '2', '2'),
(default, 'Carlos Sainz', '1996-02-07', 'Ferrari', 'Spain', '9', '147', '0', '2', '2'),
(default, 'Mick Schumacher', '1999-03-22', 'Haas', 'Germany', '0', '27', '0', '11', '10'),
(default, 'Lance Stroll', '1998-10-29', 'Aston Martin', 'Canada', '3', '106', 'N/A', '3', '1'),
(default, 'Yuki Tsunoda', '2000-05-11', 'AlphaTauri', 'Japan', 'N/A', '28', 'N/A', '4', '7'),
(default, 'Max Verstapen', '1997-09-30', 'Red Bull Racing', 'Netherlands', '64', '147', '1', '1', '1'),
(default, 'Sebastian Vettel', '1987-03-22', 'Aston Martin', 'Germany', '122', '284', '4', '1', '1'),
(default, 'Zhou Guanyu', '1999-05-30', 'Alfa Romeo', 'China', 'N/A', '6', 'N/A', '10', '12')

;

-- Inserting data into table 'grand_prix'

insert into grand_prix values
(default, 'BAHRAIN', '2004', '57', '5.412', '308.238', '1:31:447'),
(default, 'SAUDI ARABIA', '2021', '50', '6.174', '308.45', '1:30:734'),
(default, 'AUSTRALIA', '1996', '58', '5.278', '306.124', '1:20:260'),
(default, 'ITALY', '1980', '63', '4.909', '309.049', '1:15:484'),
(default, 'UNITED STATES', '2022', '57', '5.412', '308.326', '1:31:361'),
(default, 'SPAIN', '1991', '66', '4.675', '308.424', '1:18:149'),
(default, 'MONACO', '1950', '78', '3.337', '260.286', '1:12:909'),
(default, 'AZERBAIJAN', '2016', '51', '6.003', '306.049', '1:43:009'),
(default, 'CANADA', '1978', '70', '4.361', '305.27', '1:13:078'),
(default, 'GREAT BRITAIN', '1950', '52', '5.891', '306.198', '1:27:097'),
(default, 'AUSTRIA', '1970', '71', '4.318', '306.452', '1:05:619'),
(default, 'FRANCE', '1971', '53', '5.842', '309.69', '1:32:740'),
(default, 'HUNGARY', '1986', '70', '4.381', '306.63', '1:16:627'),
(default, 'BELGIUM', '1950', '44', '7.004', '308.052', '1:46:286'),
(default, 'NETHERLANDS', '1952', '72', '4.259', '306.587', '1:11:097'),
(default, 'ITALY', '1950', '53', '5.793', '306.72', '1:21>046'),
(default, 'SINGAPORE', '2008', '61', '5.063', '308.706', '1:41:905'),
(default, 'JAPAN', '1987', '53', '5.807', '307.471', '1:30:983'),
(default, 'UNITED STATES 2', '2012', '56', '5.513', '308.405', '1:36:169'),
(default, 'MEXICO', '1963', '71', '4.304', '305.354', '1:17:774'),
(default, 'BRAZIL', '1973', '71', '4.309', '305.879', '1:10:540'),
(default, 'ABU DHABI', '2009', '58', '5.281', '306.183', '1:26:103')
;

select * from grand_prix;










