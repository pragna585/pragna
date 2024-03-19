select * from orders;

select order_status,count(*) as  order_count
from orders group by 1;

select order_date,count(*)
from orders group by 1
order by 2 desc;

select to_char(order_date,'yyyy-mm'),count(*)
from orders group by 1
order by 2 desc;

select * from order_items;

select order_item_order_id,
round(sum(order_item_subtotal)::numeric,2) as order_revenue
from order_items group by 1
order by 1;

select o.order_id, 
o.order_date,
oi.order_item_id,
oi.order_item_product_id,
oi.order_item_subtotal

from orders as o
right outer join  order_items as oi
  on o.order_id = oi.order_item_order_id ;
  
  select count(distinct order_id) from orders;
select count(distinct order_item_order_id) from order_items;