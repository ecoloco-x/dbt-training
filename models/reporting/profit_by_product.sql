select 
    productid,
    productname,
    category,
    subcategory,
sum(orderprofit) as profit,
count(productid) as nb_product
from {{ ref('stg_orders') }}
group by 1,2,3,4