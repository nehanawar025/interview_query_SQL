# Explaination of the Code

## First CTE
<img width="316" alt="image" src="https://github.com/user-attachments/assets/ea47af31-406d-4745-9900-b3cf72a578d5">

This table counts the posts per job ID for each user. For example, user_ID 100 will display 1 for all job_ID 20, 21, and 22. For user_ID 101, it will display 2 for job_ID 22.

<img width="179" alt="image" src="https://github.com/user-attachments/assets/87cc9c42-19a8-4a04-b386-d93c3a1d7715">

## 2nd CTE
<img width="407" alt="image" src="https://github.com/user-attachments/assets/23dce486-b8c3-45d4-9427-7dde20f72401">
<br>
<img width="136" alt="image" src="https://github.com/user-attachments/assets/63239ed7-ee83-4495-90df-f3a2e42f7df8">


- For example, in counting_tb, for user_id 100, the maximum post_count is 1 across all job_ids, so the post type is classified as 'sp' (single post).
- If a user has different post_count values, including 1 and 2, the classification is based on the maximum post_count. So, as the maximum post_count is 2, the post type will be classified as 'mp' (multiple posts).


## Query part

<img width="391" alt="image" src="https://github.com/user-attachments/assets/b7dc0d31-fdc7-4ddc-9e3c-bf54bfdef6ea">

In this last part, I added the number of single and multiple posts to display the output.
