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

This CTE table is used for the ranking based on the `created_at` and `id` columns for each `user_id`. 

