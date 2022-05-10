create table school8.class
(
    id            int auto_increment
        primary key,
    class_subject varchar(15) not null,
    constraint id
        unique (id)
);

create table school8.grade
(
    id        int auto_increment
        primary key,
    grade_num int not null,
    constraint id
        unique (id)
);

create table school8.student
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    email     varchar(20) null,
    gradeid   int         null,
    constraint id
        unique (id),
    constraint student_ibfk_1
        foreign key (gradeid) references school8.grade (id)
);

create index gradeid
    on school8.student (gradeid);

create table school8.student_address
(
    id        int auto_increment
        primary key,
    street    varchar(15) not null,
    num       int         not null,
    zip       int         not null,
    studentid int         not null,
    constraint id
        unique (id),
    constraint student_address_ibfk_1
        foreign key (studentid) references school8.student (id)
);

create index studentid
    on school8.student_address (studentid);

create table school8.student_class_association
(
    studentid int not null,
    classid   int not null
);


