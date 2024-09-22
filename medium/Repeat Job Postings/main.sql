with counting_tb as(
    select 
        user_id,
        job_id,
        count(*) as post_count
    from
        job_postings
    group by 
        user_id, 
        job_id
),

post_type as(
    SELECT 
        user_id,
        CASE WHEN max(post_count) > 1 THEN 'mp' ELSE 'sp' END as type
    FROM 
        counting_tb
    group by
        user_id
)

select 
    sum(case when type = 'mp' then 1 else 0 end) as multiple_posts,
    sum(case when type = 'sp' then 1 else 0 end) as single_post 
from
    post_type
