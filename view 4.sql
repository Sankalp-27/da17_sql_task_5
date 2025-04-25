select * from orders

select * from order_items

select o.order_id as orders , o.customer_id as orders , o.order_date as orders , o.total_amount as orders , o.status as orders,
oi.order_item_id as order_items , oi.order_id as order_items , oi.product_id as order_items ,
oi.price as order_items ,oi.quantity as order_items
from orders as o
right join order_items as oi
on o.order_id = oi.order_item_id


CREATE VIEW orders_order_items_view AS
SELECT o.order_id, o.customer_id, o.order_date, o.total_amount,o.status AS order_status,  
oi.order_item_id,oi.product_id,oi.price AS item_price,   oi.quantity
FROM orders AS o
RIGHT JOIN order_items AS oi ON o.order_id = oi.order_id
where  o.status  = 'pending'
group by  o.order_id , o.customer_id,o.order_date,oi.order_item_id
having oi.price > 15
order by oi.quantity ASC;

INSERT INTO orders (order_id,customer_id, order_date, total_amount, status)
VALUES( 274,274, '2022-06-01 12:00:00+00', 167.50, 'Shipped')

 INSERT INTO order_items (order_id, product_id, price, quantity)
VALUES(844, 435, 40.90, 7)	

update orders set customer_id = 274 where order_id = 275

update order_items set order_id =844 where order_item_id = 845

delete from orders where order_id = 275;

delete from order_items where order_item_id = 845;