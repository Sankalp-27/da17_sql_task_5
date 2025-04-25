select * from zoamto

select * from products

SELECT  z.zoamto_id, z.deliveryboy_name, z.order_name, z.publication_date, z.crated_by, z.price AS zoamto_price,
z.stock_quantity AS zoamto_stock_quantity,
p.product_id,  p.name AS product_name,  p.created_by AS product_creator,p.price AS product_price,  p.stock_by AS product_stock_by
FROM product AS p
LEFT JOIN zoamto AS z 
ON p.product_id = z.zoamto_id

CREATE VIEW product_zoamto_view AS
SELECT  z.zoamto_id, z.deliveryboy_name, z.order_name, z.publication_date, z.crated_by, z.price AS zoamto_price,
z.stock_quantity AS zoamto_stock_quantity,
p.product_id,  p.name AS product_name,  p.created_by AS product_creator,p.price AS product_price,  p.stock_by AS product_stock_by
FROM product AS p
LEFT JOIN zoamto AS z 
ON p.product_id = z.zoamto_id
WHERE p.price > 10 
GROUP BY z.zoamto_id, z.deliveryboy_name, z.order_name, z.publication_date, z.crated_by, z.price, z.stock_quantity,
 p.product_id, p.name, p.created_by, p.price, p.stock_by 
ORDER BY p.name ASC, z.publication_date DESC; 


INSERT INTO zoamto (id, deliveryboy_name, order_name, publication_date, created_by, price, stock_quantity) VALUES
(301, 'suresh', 'maggie', '2023-06-09', 'Restaurant z', 11.50, 8)

INSERT INTO products (product_id,name, created_by, price, stock_quantity) VALUES
(501,'Chicken curry', 'raj Restaurant', 850.00, 700)

update zoamto set deliveryboy_name = 'suresh'  where deliveryboy_name ='madan';

delete from products where product_id = 501
