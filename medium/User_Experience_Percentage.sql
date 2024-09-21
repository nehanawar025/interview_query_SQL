with cte_previous as(
    select *,
    lag(position_name) over(partition by user_id order by start_date) as previous_role
    from user_experiences
)


select count(distinct user_id)/(select count(distinct user_id) from cte_previous) as percentage
from cte_previous
where position_name = 'Data Scientist' and previous_role = 'Data Analyst'
