use store_simple;

select * from store;

select category, count(category) from store
   group by category;

select
    category,
    sum(price * sold_num) as max_cost
from store
group by category
order by max_cost desc
limit 5;
