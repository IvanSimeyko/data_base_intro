use project_simple;
select count(1) from project;
select avg(budget) from project;

select
    avg(datediff(project_finish, project_start)) as avg_days,
    max(datediff(project_finish, project_start)) as max_days,
    min(datediff(project_finish, project_start)) as min_days,
    client_name
from project where project_finish > project_start
group by client_name
order by max_days desc
limit 10;

select 
    count(1),
    sum(budget),
    avg(datediff(project_finish, project_start)) as avg_days
from project