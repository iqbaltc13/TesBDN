SELECT 

   pc.*

FROM 
    
    
    payment_channel pc
    
WHERE pc.code NOT IN (
    SELECT 
        payment_channel_code
    FROM
        transaction
    WHERE
        paid_at < now()
    AND 
        paid_at >= now() - interval '24 hour'
) 
  
   



    