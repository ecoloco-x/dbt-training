select orderid, 
(ordersellingprice - ordercostprice) as orderprofit 
from {{ ref('raw_orders') }}
where orderprofit < 0