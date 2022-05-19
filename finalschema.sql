create table actors
(
    id         int auto_increment
        primary key,
    First_name varchar(20) null,
    Last_Name  varchar(20) null,
    moviesid   int         not null
);

create index moviesid
    on actors (moviesid);

create table directors
(
    id           int auto_increment
        primary key,
    First_Name   varchar(20) null,
    Last_Name    varchar(20) null,
    Director_Age int         not null
);

create table movies
(
    id           int auto_increment
        primary key,
    Title        varchar(20) null,
    Release_Year int         not null,
    Genre        varchar(20) null,
    Rating       int         null,
    directorsid  int         null,
    actorsid     int         null,
    constraint movies_ibfk_1
        foreign key (directorsid) references directors (id),
    constraint movies_ibfk_2
        foreign key (actorsid) references actors (id)
);

alter table actors
    add constraint actors_ibfk_1
        foreign key (moviesid) references movies (id);

create index actorsid
    on movies (actorsid);

create index directorsid
    on movies (directorsid);


