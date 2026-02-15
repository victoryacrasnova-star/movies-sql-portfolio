-- PROJECT: movies_sql_homework
-- DATABASE: movies_db

create table genre(
	id serial primary key,
	name varchar(100) not null unique
);

create table movie(
	id serial primary key,
	title text not null,
	rating numeric(3,1) not null,
	runtime integer not null,
	genre_id integer references genre(id)
);

alter table movie
add constraint unique_movie_title unique (title);
