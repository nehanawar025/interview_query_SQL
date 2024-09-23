# Question
<p align="center">
  <img width="680" alt="image" src="https://github.com/user-attachments/assets/077ee2ad-cc35-46d7-a509-a421511267c2">
</p>

# Code
<p align="center">
  <img width="320" src="https://github.com/nehanawar025/interview_query_SQL/blob/main/medium/Third%20Purchase/image/carbon.png" alt="image">
</p>

# Explaination
## CTE Table

```
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

```

This CTE table is used for the ranking based on the `created_at` and `id` columns for each `user_id` . I did `order by` firstly by `created_at` because those are the initial purchases for that particular `user_id`. However, the `id` column is also necessary for fetching the initial purchase records made on the same day. 
That is why I have written `order by created_at, id` inside `over()`


## Last Part

```
select
    user_id,
    created_at,
    product_id,
    quantity
from
    rank_table
where 
    purchase_rank = 3
order by    
    user_id

```

This part is for the output table, showing the final output with the third purchase for every `user_id`. Lastly, the data will be ordered in ascending order based on the `user_id` column.

