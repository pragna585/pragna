WITH order_details_cte as
(select o.*,
 oi.order_item_product_id,
 oi.order_item_subtotal,
 oi.order_item_id
 from orders as o
 join order_items as oi
 on o.order_id=oi.order_item_order_id)

select * from order_details_cte
where order_id=2;

select * from order_details_v;
select * from products;

select *
  from products as p
  left outer join order_details_v as odv
  on p.product_id=odv.order_item_product_id
 where odv.order_item_product_id is null;
 
 
 
 
 