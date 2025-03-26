-- 2 - 2 Get the customer who has spent the highest amount on rentals.

select * from customer;

select first_name || ' ' || last_name, sum(amount) as total_spend
from payment
join customer using(customer_id)
group by customer_id
order by total_spend desc
limit 1
;