with rank_table as(
    select 
        user_id,
        created_at,
        product_id,
        quantity,
        rank() over(
            partition by user_id 
            order by created_at, id
            ) as purchase_rank
    from
        transactions
)    

select
    user_id,
    created_at,
    product_id,
    quantity
from
    rank_table
where 
    purchase_rank = 3




