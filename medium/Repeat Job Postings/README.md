# Explaination of the Code

## First CTE
<img width="316" alt="image" src="https://github.com/user-attachments/assets/ea47af31-406d-4745-9900-b3cf72a578d5">

The purpose of this table is to count the post per job ID for each user. For example, for user_ID 100, it will display 1 for all job_ID 20, 21,22. for user_ID 101 it will display 2 for job_ID 22.

<img width="179" alt="image" src="https://github.com/user-attachments/assets/87cc9c42-19a8-4a04-b386-d93c3a1d7715">

## 2nd CTE
<img width="407" alt="image" src="https://github.com/user-attachments/assets/23dce486-b8c3-45d4-9427-7dde20f72401">

In this table, I set up the post type for each user_ID. For example, for user_id 100, the maximum number of post_count is 1, so it will be 'sp'. If some user would have post_count both 1 and 2 for their respective job_ids, then it will only take the maximum post_count, which is 2, and set up the type to be 'mp'.


## Query part
Now, in this last part, I calculated the number of single posts and multiple posts to display the real output
