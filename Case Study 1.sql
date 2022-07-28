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

4 - A-What is the most purchased item on the menu and  B- how many times was it purchased by all customers?
A- SELECT 
 (COUNT(s.product_id)) AS most_purchased, 
  product_name
FROM sales  AS s
JOIN menu AS m
ON s.product_id = m.product_id

GROUP BY s.product_id, product_name
ORDER BY most_purchased DESC;
B- 
#just add limit 1 







