SELECT 

    sum(t.amount) as total_transaction_amount,
    c.customer_email
    

FROM 
    transaction t,
    customer c

WHERE 
    t.customer_id = c.id


AND
    EXTRACT(MONTH FROM t.paid_at) = EXTRACT(MONTH FROM now())
    
AND 
    EXTRACT(YEAR FROM t.paid_at) = EXTRACT(YEAR FROM now())

GROUP BY
    t.customer_id,
ORDER BY
    sum(t.amount)
DESC
ORDER BY
    c.customer_email
ASC
LIMIT 10 