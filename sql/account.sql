create table account(
    id int(10) not null auto_increment primary key,
    username varchar(100) not null,
    password varchar(100) not null
);
alter table account add unique index account_username_idx(username);