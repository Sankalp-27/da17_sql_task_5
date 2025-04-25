select * from catering_orders

select * from menu_orders

select co.order_id ,co.customer_name , co.event_date , co.menu, co.total_cost,co.status ,co.created_at,
mo.menu_id , mo.menu_name , mo.category , mo.price
from catering_orders as co
inner join menu_orders as mo
on co.order_id = mo.menu_id

CREATE VIEW catering_menu_orders as
select co.order_id ,co.customer_name , co.event_date , co.menu, co.total_cost,co.status ,co.created_at,
mo.menu_id , mo.menu_name , mo.category , mo.price
from catering_orders as co
inner join menu_orders as mo
on co.order_id = mo.menu_id
where co.status  = 'confirmed'
group by co.order_id , co.menu,co.total_cost,mo.menu_id,mo.price
HAVING co.total_cost > 1600
order by mo.price asc;

select * from catering_menu_orders

insert into menu_orders (menu_id , menu_name, category ,price) values (268,'dahi wada', 'snakes', 140.00);

INSERT INTO catering_orders (order_id,customer_name, event_date, menu, total_cost, status) VALUES
(256,'san Corp', '2026-07-07', 'Menu z', 3500.00, 'confirmed');

update catering_orders set customer_name = 'ABC Corp' where order_id = 0;

delete from menu_orders where menu_id = 268