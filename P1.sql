-- create database
drop database if exists bookmyshow;
create database bookmyshow;
use bookmyshow;


-- create tables
create table theatre (
    theatre_id int auto_increment primary key,
    name varchar(100) not null,
    location varchar(100) not null
);

create table screen (
    screen_id int auto_increment primary key,
    theatre_id int not null,
    screen_name varchar(50) not null,
    foreign key (theatre_id) references theatre(theatre_id)
);

create table movie (
    movie_id int auto_increment primary key,
    title varchar(100) not null,
    duration_minutes int not null,
    genre varchar(50),
    language varchar(50)
);

create table showdetails (
    show_id int auto_increment primary key,
    screen_id int not null,
    movie_id int not null,
    show_date date not null,
    show_time time not null,
    foreign key (screen_id) references screen(screen_id),
    foreign key (movie_id) references movie(movie_id)
);


-- insert sample data into the tables
insert into theatre (name, location) values
('pvr cinemas', 'bangalore'),
('inox', 'mumbai'),
('cinepolis', 'delhi');

select * from theatre;

insert into screen (theatre_id, screen_name) values
(1, 'screen 1'),
(1, 'screen 2'),
(2, 'screen 1'),
(3, 'screen 1');

select * from screen;

insert into movie (title, duration_minutes, genre, language) values
('inception', 148, 'sci-fi', 'english'),
('kgf chapter 2', 168, 'action', 'kannada'),
('oppenheimer', 180, 'drama', 'english'),
('3 idiots', 170, 'comedy', 'hindi');

select * from movie;

insert into showdetails (screen_id, movie_id, show_date, show_time) values
(1, 1, '2025-08-24', '10:00:00'),
(1, 2, '2025-08-24', '14:00:00'),
(2, 3, '2025-08-24', '18:00:00'),
(3, 2, '2025-08-25', '12:30:00'),
(4, 4, '2025-08-25', '15:00:00');

select * from showdetails;
