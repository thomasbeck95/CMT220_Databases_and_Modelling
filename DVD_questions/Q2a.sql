
select * from film
where language_id <> 1
;

select film_id, title
from film
where original_language_id is not null
;

