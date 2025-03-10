--a
select *
from staff
UNION
select *
from customers;

--b
select NInumber
from staff
UNION
select NInumber
from customers
;
--c
select NInumber
from staff
INTERSECT
select NInumber
from customers
;
--d
select NInumber
from staff
EXCEPT
select NInumber
from customers
;

--note to self that EXCEPT is used for difference

--e
select *
from staff
NATURAL JOIN Customers;

--f
-- note to self CROSS JOIN == Cartesian Product
select *
from staff
CROSS JOIN Customers;