RDBMS SQL for creating table

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
