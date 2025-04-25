select * from furniture

select * from sales

select f.furniture_id ,f.name , f.description , f.price , f.material, f.color , f.dimensions,f.weight ,f.stock_quantity, f.category,
s.sale_id , s.sale_name ,s.sale_date ,s.sale_quantity , s.payment_method , s.category ,s.furniture_id
from furniture as f
left join sales as s
on s.sale_id = f.furniture_id 



CREATE VIEW furniture_sales_view AS
SELECT f.furniture_id, f.name, f.description,f.price,f.material,f.color, 
f.dimensions,f.weight, f.stock_quantity, f.category AS furniture_category, 
s.sale_id, s.sale_name, s.sale_date,s.sale_quantity, s.payment_method, 
s.category AS sales_category 
FROM furniture AS f
LEFT JOIN sales AS s 
ON s.furniture_id = f.furniture_id
WHERE
    f.stock_quantity > 0  
GROUP BY
    f.furniture_id, f.name, f.description, f.price, f.material, f.color, f.dimensions, f.weight, f.stock_quantity, f.category,
    s.sale_id, s.sale_name, s.sale_date, s.payment_method, s.category 
ORDER BY
    f.name ASC, s.sale_date DESC;


select * from furniture_sales_view


INSERT INTO furniture (name, description, price, material, color, dimensions, weight, stock_quantity, category) VALUES
('double bed ', 'Comfortable double bed for your bed room', 12899.99, 'Fabric', 'Gray', '80x36x32 inches', 150.50, 10, 'bed Room');

insert into furniture_sales_view (name, description, price, material, color, dimensions, weight, stock_quantity, category) VALUES
('double bed ', 'Comfortable double bed for your bed room', 12899.99, 'Fabric', 'Gray', '80x36x32 inches', 150.50, 10, 'bed Room');

delete furniture_sales_view  from furniture where f.name = double bed ;

update sales set sale_name = 'Sale-001'  where sale_id = 0;

