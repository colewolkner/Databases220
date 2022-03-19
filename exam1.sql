create table class
(
    id            int auto_increment,
    class_name    varchar(10) not null,
    class_subject varchar(10) not null,
    constraint id
        unique (id)
);

create table class_roster
(
    id         int auto_increment
        primary key,
    class_id   int not null,
    student_id int not null,
    constraint class_id
        unique (class_id),
    constraint id
        unique (id),
    constraint student_id
        unique (student_id)
);

create table grade
(
    id        int auto_increment
        primary key,
    grade_num tinyint null,
    constraint id
        unique (id)
);

create table student
(
    id         int auto_increment
        primary key,
    firstname  varchar(15) not null,
    lastname   varchar(15) not null,
    grade_id   int         not null,
    address_id int         not null,
    constraint id
        unique (id)
);

create table student_address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    constraint id
        unique (id)
);


