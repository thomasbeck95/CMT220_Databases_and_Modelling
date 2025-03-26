select first_name || ' ' || last_name, sum(amount)
from payment
join customer using(customer_id)
group by customer_id
;