1. What is the total amount each customer spent at the restaurant?

SELECT  sales.product_id,customer_id,sum(price) as total_pay
FROM  sales
join menu
ON sales.product_id=menu.product_id
GROUP BY customer_id

2. How many days has each customer visited the restaurant?

select sales.customer_id,count(DISTINCT  order_date) 
from sales
join  menu
on sales.product_id=menu.product_id
group by (customer_id)

3- What was the first item from the menu purchased by each customer?

SELECT customer_id,product_name, order_date
from sales	
join menu
on sales.product_id=menu.product_id
group by(customer_id)








