select 
    customerid,
    customername,
    segment,
    country,
sum(orderprofit) as profit,
count(customerid) as nb_customer
from {{ ref('stg_orders') }}
group by 1,2,3,4