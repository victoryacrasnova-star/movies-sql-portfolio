-- All genres
select * from genre;

-- Movies with rating > 8.5
select title, rating, runtime
from movie
where rating > 8.5
order by rating desc;

-- Movies longer than 120 minutes
select title, rating, runtime
from movie
where runtime > 120;

-- Movies with genre name (JOIN)
select m.title, m.rating, m.runtime, g.name as genre
from movie m
join genre g on m.genre_id = g.id;

-- Number of movies per genre
select g.name, count(m.id) as movie_count
from movie m
join genre g on m.genre_id = g.id
group by g.name
order by movie_count desc;

-- Genres with avg rating > 8 and runtime > 120
select g.name, avg(m.rating) as avg_rating
from movie m
join genre g on m.genre_id = g.id
where m.runtime > 120
group by g.name
having avg(m.rating) > 8
order by avg_rating desc;
