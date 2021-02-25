-- c. Write a SQL query to count the total number of products per warehouse?

        select w.w_name, COUNT(p_name) AS product_count
        FROM stocks AS s
        JOIN wearhouse as w
            ON w.w_id = s.wh_id
        JOIN product AS p
            ON p.p_id = s.p_id
        GROUP BY 1;