(select name as results
from users join movie_rating
on users.user_id = movie_rating.user_id
group by movie_rating.user_id
order by count(movie_rating.user_id) desc, name limit 1)

union all

(select title
from movies join movie_rating
on movie_rating.movie_id = movies.movie_id
and created_at between '2020-02-01' and '2020-02-29'
group by movie_rating.movie_id
order by avg(rating) desc, title limit 1)
