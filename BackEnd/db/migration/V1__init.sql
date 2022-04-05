create table customer (
                          id bigint generated by default as identity,
                          customer_email varchar(255),
                          customer_name varchar(255),
                          phone_number varchar(15),
                          primary key (id)
);

create table salon_schedule (
                                id bigint generated by default as identity,
                                staff_id bigint,
                                staff_name varchar(25),
                                staff_email varchar(255),
                                schedule_type bigint,
                                day_of_the_week varchar(255),
                                is_holiday boolean,
                                created_date timestamp,
                                last_modified_date timestamp,
                                primary key (id)
);

create table staff (
                       id bigint generated by default as identity,
                       staff_email varchar(255),
                       staff_name varchar(25),
                       staff_role varchar(10),
                       phone_number varchar(15),
                       primary key (id)
);

create table salon_booking (
                               id bigint generated by default as identity,
                               booking_date date,
                               booking_date_time timestamp,
                               booking_time time,
                               created_date timestamp,
                               customer_id bigint,
                               customer_name varchar(25),
                               customer_email varchar(255),
                               hair_cut_type varchar(25),
                               last_modified_date timestamp,
                               staff_id bigint,
                               staff_name varchar(25),
                               staff_email varchar(255),
                               primary key (id)
);

insert into staff values(1, 'youchanwilliamlee@gmail.com', 'Youchan', 'ADMIN', '+610412345678');
insert into staff values(2, 'whs_william@gmail.com', 'William', 'STAFF', '+610400111222');
insert into staff values(3, 'whs_jane@gmail.com', 'Jane', 'STAFF', '+610411222333');
insert into staff values(4, 'whs_mark@gmail.com', 'Mark', 'STAFF', '+610422333444');

insert into salon_schedule values (1, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'MONDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (2, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'TUESDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (3, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'WEDNESDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (4, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'THURSDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (5, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'FRIDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (6, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'SATURDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (7, 1, 'Youchan', 'youchanwilliamlee@gmail.com', 0, 'SUNDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');

insert into salon_schedule values (8, 2, 'William', 'whs_william@gmail.com', 1, 'MONDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (9, 2, 'William', 'whs_william@gmail.com', 1, 'TUESDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (10, 2, 'William', 'whs_william@gmail.com', 1, 'WEDNESDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (11, 2, 'William', 'whs_william@gmail.com', 1, 'THURSDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (12, 2, 'William', 'whs_william@gmail.com', 1, 'FRIDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (13, 2, 'William', 'whs_william@gmail.com', 1, 'SATURDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (14, 2, 'William', 'whs_william@gmail.com', 1, 'SUNDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');

insert into salon_schedule values (15, 3, 'Jane', 'whs_jane@gmail.com', 2, 'MONDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (16, 3, 'Jane', 'whs_jane@gmail.com', 2, 'TUESDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (17, 3, 'Jane', 'whs_jane@gmail.com', 2, 'WEDNESDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (18, 3, 'Jane', 'whs_jane@gmail.com', 2, 'THURSDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (19, 3, 'Jane', 'whs_jane@gmail.com', 2, 'FRIDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (20, 3, 'Jane', 'whs_jane@gmail.com', 2, 'SATURDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (21, 3, 'Jane', 'whs_jane@gmail.com', 2, 'SUNDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');

insert into salon_schedule values (22, 4, 'Mark', 'whs_mark@gmail.com', 3, 'MONDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (23, 4, 'Mark', 'whs_mark@gmail.com', 3, 'TUESDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (24, 4, 'Mark', 'whs_mark@gmail.com', 3, 'WEDNESDAY', 0, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (25, 4, 'Mark', 'whs_mark@gmail.com', 3, 'THURSDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (26, 4, 'Mark', 'whs_mark@gmail.com', 3, 'FRIDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (27, 4, 'Mark', 'whs_mark@gmail.com', 3, 'SATURDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');
insert into salon_schedule values (28, 4, 'Mark', 'whs_mark@gmail.com', 3, 'SUNDAY', 1, '2022-03-23 00:00:00', '2022-03-23 00:00:00');

insert into salon_booking values (1,'2022-04-01','2022-04-06 11:00:00','11:00:00', '2022-04-01 16:02:04',1,'Scott','scott@gmail.com','MENS_HAIR_CUT','2022-03-24 16:02:04',2,'William','whs_william@gmail.com');
insert into salon_booking values (2,'2022-04-02','2022-04-08 12:00:00','12:00:00', '2022-04-02 16:02:04',2,'James','james@gmail.com','TREATMENT','2022-03-24 16:02:04',2,'William','whs_william@gmail.com');
insert into salon_booking values (3,'2022-04-03','2022-04-09 13:00:00','13:00:00', '2022-04-03 16:02:04',3,'Michelle','michelle@gmail.com','WOMENS_PERM','2022-03-24 16:02:04',3,'Jane','whs_jane@gmail.com');
insert into salon_booking values (4,'2022-04-04','2022-04-10 14:00:00','14:00:00', '2022-04-04 16:02:04',4,'Sharlot','sharlot@gmail.com','MENS_HAIR_CUT','2022-03-24 16:02:04',4,'Mark','whs_mark@gmail.com');