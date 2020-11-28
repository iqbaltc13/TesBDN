SELECT 

    t.transaction_no,
    c.customer_email,
    t.amount,
    pc.name as payment_channel_name,
    pp.name as payment_provider_name,
    t.paid_at

FROM 
    transaction t,
    customer c,
    payment_channel pc,
    payment_provider pp,

WHERE 
    t.customer_id = c.id
AND 
    t.payment_channel_code = pc.code
AND 
    t.payment_provider_code = pp.code
AND
    t.status = "SUCCESS"
AND
    t.paid_at < now()
AND 
    t.paid_at >= now() - interval '24 hour' 