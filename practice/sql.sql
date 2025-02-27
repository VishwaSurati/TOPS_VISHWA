create TABLE Sales(
sale_id int primary key ,
product_id int,
quality_sold int,
sale_date date,
total_price decimal(10,2)
);

INSERT INTO Sales(sale_id, product_id, quality_sold, sale_date, total_price) values
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

select * from sales;

create table Product(
product_id int primary key,
product_name varchar(100),
category varchar(50),
unit_price decimal(10,2)
);

insert into product(product_id, product_name, category, unit_Price)values
(101, 'laptop', 'electronics', 500.00),
(102, 'smartphone', 'electronics', 300.00),
(103, 'headphone', 'electronics', 30.00),
(104, 'keyboard', 'electronics', 20.00),
(105, 'mouse', 'electronics', 15.00);

select product_name, unit_price from product;  

select quality_sold,total_price from sales where total_price > 100;

select * from products where category = 'electronics';

select sum(total_price) as total_revenue from sales;

select sum(quality_sold) as total_quality_sold from sales;

select sale_date, COUNT(sale_id) as sales_count from sales group by sale_date;

 select product_name,unit_price from products order by unit_price desc;
 
 select sale_id,product_id,total_price from sales where quality_sold >4;
 
 select product_name , unit_price from products where unit_price between 20 and 600;









