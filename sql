RDBMS table schema

create table account
(
id bigserial not null,
email char(100) not null,
password char(100),
salt char(100),
create_time timestamp with time zone,
update_time timestamp with time zone,
status char(255) not null
);


create table profile 
(
id bigserial primary key,
name char(100) not null,
birth_date date,
description text,
phone_number char(50),
gender char(10),
create_time timestamp with time zone,
update_time timestamp with time zone,
account_id bigint references account (id) 
);

