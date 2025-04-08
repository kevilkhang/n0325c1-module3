create database football_management;

use football_management;

create table coach (
id_coach int primary key auto_increment,
coach_name varchar(255) not null
);

create table team (
id_team int primary key auto_increment,
id_coach int unique,
team_name varchar(255) not null,
foreign key (id_coach) references coach (id_coach)
);

create table player (
id_player int primary key auto_increment,
id_team int unique,
player_name varchar(255) not null,
number int,
foreign key (id_team) references team (id_team)
);

create table position (
id_position int primary key auto_increment,
position_name varchar(255) not null
);

create table football_match (
id_match int primary key auto_increment,
team_A int,
team_B int,
date_time datetime,
foreign key (team_A) references team (id_team),
foreign key (team_B) references team (id_team),
check (team_A != team_B)
);

create table position_player (
id_player int,
id_position int,
primary key (id_player, id_position),
foreign key (id_player) references player (id_player),
foreign key (id_position) references position (id_position)
);

create table match_player (
id_player int,
id_match int,
id_team int,
primary key (id_player, id_match),
foreign key (id_player) references player (id_player),
foreign key (id_match) references football_match (id_match),
foreign key (id_team) references team (id_team)
);bank_account


select * from team;

drop table football_match;

drop table match_player;