
SELECT  sales.product_id,customer_id,sum(price) as total_pay
FROM  sales
join menu
ON sales.product_id=menu.product_id
GROUP BY customer_id






