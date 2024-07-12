CREATE DATABASE t20_world_cup;
USE t20_world_cup;
CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL UNIQUE,
  country VARCHAR(50) NOT NULL,
  founded YEAR
);
insert into teams (name, country, founded) values('Team A', 'USA', 1901);
insert into teams (name, country, founded) values('Team B', 'UK', 1990);
insert into teams (name, country, founded) values('Team C', 'Spain', 1920);
insert into teams (name, country, founded) values('Team D', 'Germany', 1997);
insert into teams (name, country, founded) values('Team E','Italy', 1905);
insert into teams (name, country, founded) values('Team F', 'France', 1999);
insert into teams (name, country, founded) values('Team G', 'Brazil', 1910);
insert into teams (name, country, founded) values('Team H', 'Argentina', 1913);
insert into teams (name, country, founded) values ('Team I', 'Mexico', 1922);
insert into teams (name, country, founded) values ('Team J', 'Netherlands', 1987);
insert into teams (name, country, founded) values ('Team K', 'india', 2024);

select * from teams;

SELECT * FROM teams WHERE name='TEam C';   

SELECT * FROM teams WHERE founded < 1987;

UPDATE teams SET country = 'hyderabad' WHERE country = 'Team E';

DELETE FROM teams WHERE name='Team E';

rails generate model Player name:string age:integer position:string team:references

rails generate Teams name:string country:string founded:integer