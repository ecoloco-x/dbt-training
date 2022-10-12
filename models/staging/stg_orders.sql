select 
--from raw orders
orderid,
orderddate,
shipdate,
shipmode,
ordersellingprice,
ordercostprice,
(ordersellingprice - ordercostprice) as orderprofit,
--from raw customer
c.customerid,
c.customername,
c.segment,
c.country,
--from raw product
p.productid,
p.productname,
category,
subcategory
from {{ ref('raw_orders') }} o
left join {{ ref('raw_customer') }} c
on c.customerid = o.customerid
left join {{ ref('raw_product') }} p
on p.productid = o.productid
