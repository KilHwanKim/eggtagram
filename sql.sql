drop database if exists spring;
CREATE DATABASE spring default CHARACTER SET UTF8;

GRANT ALL PRIVILEGES ON spring.* TO studyuser@localhost IDENTIFIED BY 'mysql';
USE spring;
drop table if exists tbl_follow ;
drop table if exists tbl_like ;
drop table if exists tbl_file ;
drop table if exists tbl_article ;
drop table if exists tbl_user;
create table tbl_user(
email varchar(1000) not null,
nickname varchar(100) not null primary key,
pwd varchar(1000) not null,
usercomment varchar(1000) default "Hello!",
ismen tinyint(1) default 1
);




create table tbl_article(
ano int(255) auto_increment primary key,
nickname varchar(100) not null,
content varchar(1000),
regdate timestamp default now()
);
alter table tbl_article add foreign key (nickname) references tbl_user(nickname) on delete cascade;



create table tbl_follow(
fno int(255) auto_increment primary key,
follower varchar(100),
target varchar(100)
);
alter table tbl_follow add foreign key (follower) references tbl_user(nickname) on delete cascade;
alter table tbl_follow add foreign key (target) references tbl_user(nickname) on delete cascade;


create table tbl_like(
ano int(255),
cno int(255),
nickname varchar(100)
);
alter table tbl_like add foreign key (ano) references tbl_article(ano) on delete cascade;
alter table tbl_like add foreign key (nickname) references tbl_user(nickname) on delete cascade;



create table tbl_file(
uuid varchar(100) not null primary key,
nickname varchar(100),
ano int(255),
fname varchar(500),
ftype tinyint(1),
savedir varchar(100)
);
alter table tbl_file add foreign key (ano) references tbl_article(ano) on delete cascade;
alter table tbl_file add foreign key (nickname) references tbl_user(nickname) on delete cascade;









