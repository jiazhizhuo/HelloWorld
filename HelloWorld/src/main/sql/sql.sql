drop database if exists blog;
CREATE DATABASE blog CHARACTER SET 'utf8'  COLLATE 'utf8_general_ci';
use blog;

drop table if exists user;
create table user(
	id varchar(32),
	password varchar(32),
	name varchar(128),
	primary key(id)
);


drop table if exists blogs;
create table blogs(
       id int(32) auto_increment,
       user_id varchar(32),
       file_path varchar(128),
       title varchar(64),
       brief_info varchar(256),
       create_time datetime,
       primary key(id),
       foreign key(user_id) references user(id)
);
