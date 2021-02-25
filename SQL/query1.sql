-- b. Write a SQL query to count the number of unique products in a warehouse?

        SELECT w.w_id
            ,w.w_name
            ,p.p_name
            ,COUNT(DISTINCT p_name)
        FROM stocks AS s
        JOIN wearhouse as w
            ON w.w_id = s.wh_id
        JOIN product AS p
            ON p.p_id = s.p_id
        GROUP BY 1,2,3
        ORDER BY 1;