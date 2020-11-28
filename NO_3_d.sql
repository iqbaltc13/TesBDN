SELECT 

    pcpf.payment_channel_code,
    min(pcpf.admin_fee) as cheapest_admin_fee
    
    pp.name as cheapest_payment_provider,
   

FROM 
    
    payment_provider pp,
    payment_channel_provider_fee pcpf

WHERE 
    pcpf.payment_provider_code = pp.code

GROUP BY
    pcpf.payment_channel_code