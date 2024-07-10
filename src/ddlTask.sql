create table if not exists courses(
                                      id serial primary key ,
                                      course_name varchar,
                                      price int,
                                      start_time date


);


insert into courses(course_name,price,start_time)
values ('Java',14000,'2019 09 01'),
       ('JS',14000,'2019-09-01'),
       ('PYTHON',10000,'2018-01-15');




create table students(
                         id serial primary key,
                         first_name varchar,
                         last_name varchar,
                         age int,
                         email varchar,
                         course_id int references courses(id)
);


insert into students(first_name, last_name, age, email, course_id)
values ('Zhanbolot','Kurmushuev',23,'z7024601@gmail.com',1),
       ('Baktulan','Nazarbay uluu',24,'baktulan@gmail.com',2),
       ('Asyl','Berdibekov',23,'asyl@gmail.com',3);





create table instructors(
                            id serial primary key ,
                            first_name varchar,
                            last_name varchar,
                            age int ,
                            salary int ,
                            email varchar,
                            course_id int references courses (id)






);

insert into instructor( first_name, last_name, age, salary, email, course_id)
values ('Aijamal','Asangazieva',26,40000,'aijamail@gmail.com',1),
       ('Aizat','Dusheeva',25,35000,'aizat@gmail.com',2),
       ('Omur','Esenov',24,35000,'omur@gmail.com',3);


create table university(
                           id serial primary key ,
                           name varchar,
                           direction varchar,
                           addres varchar,
                           start_time_birth date
);



insert into university(name,direction, addres, start_time_birth)
values ('HARVORD','IT','USA','1885-03-31'),
       ('OXVORD','Medicine','London','1845-01-01');

create table students_university (
                                     id serial primary key ,
                                     first_name varchar,
                                     last_name varchar,
                                     age int ,
                                     emil varchar,
                                     university_id int references university(id)

);


insert into students_university(first_name, last_name,age,emil,university_id)
values  ('Jim','Bich',33,'jim23@gmail.com',1),
        ('David','Beckham',29,'dav09@gmail.com',2);


create table footballClubs(
                              id serial primary key ,
                              name_club varchar,
                              playing_liga varchar



);

insert into footballClubs(name_club,playing_liga)
values ('Barcelona','LaLiga'),
       ('RealMadrid','LaLiga');


create table if not exists player(
    id serial primary key ,
    name varchar,
   sure_name varchar,
                                     age int,
                                     number int ,
                                     football_club_id int references FootballClubs (id)



    );

insert into player (name, sure_name, age, number, football_club_id)
values ('Leonel','Messi',35,10,1),
       ('Cristiano','Ronaldo',37,7,2);


create table counters (
    id serial primary key,
    name varchar,
    how_many_city int ,
    square varchar
);

insert into counters( name, how_many_city, square)
values ('Kyrgyzstan',50,'200000km'),
       ('USA',89,'3000000km');


create table citys (
    id serial primary key ,
    name varchar,
    people int ,
    square varchar,
    counters_id int references counters (id)
);

insert into citys(name,people,square,counters_id)
values ('Bishkek',150000,'100000km',1),
       ('New York',2000000,'3000000km',2);



create database java14;
create table people
(
    id         INT,
    first_name VARCHAR(50),
    last_name  VARCHAR(50),
    email      VARCHAR(50),
    gender     VARCHAR(50),
    age        int,
    language   VARCHAR(50)
);
