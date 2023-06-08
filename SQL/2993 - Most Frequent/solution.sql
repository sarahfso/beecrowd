--creating and populating problem tables

create table value_table (
	amount int
);

insert into value_table (amount) 
values 
(4), 
(6),
(7),
(1),
(1),
(2),
(3),
(2),
(3),
(1),
(5),
(6),
(1),
(7),
(8),
(9),
(10),
(11),
(12),
(4),
(5),
(5),
(3),
(6),
(2),
(2),
(1);

--solution

select amount as most_frequent_value 
from value_table
group by amount
order by count(amount) desc
limit 1;