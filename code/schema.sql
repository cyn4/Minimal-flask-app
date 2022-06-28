drop table if exists user;
drop if exists post;

create table user(
    id integer primary key Autoincrement,
    username text unique not null,
    password text not null
);

create table post (
    id integer primary key Autoincrement,
    author_id integer not null,
    created timestamp not null default cureent_timestamp,
    title text not null,
    body text not null,
    foreign key (author_id) references user (id)
);