-- Question 1
select round(sum(P.price*O.quantity),2) as Revenue
from order_details as O
join pizzas as P
on P.pizza_id = O.pizza_id;

-- Question 2
select pizza_id, price
from pizzas
where price in (
select max(price)
from pizzas
);

-- Question 3
select P.size, sum(O.quantity)
from order_details as O
join pizzas as P
on P.pizza_id = O.pizza_id
group by P.size
order by count(O.order_details_id) desc;

-- Question 4
select PT.name, sum(O.quantity) as Total_Quantity
from pizzas as P
join order_details as O
on P.pizza_id = O.pizza_id
join pizza_types as PT
on PT.pizza_type_id = P.pizza_type_id
group by PT.name
order by sum(O.quantity) desc limit 5;

--  Question 5
select PT.category, sum(OD.quantity) as Total_Quantity
from pizzas as P
join order_details as OD
on P.pizza_id = OD.pizza_id
join pizza_types as PT
on P.pizza_type_id = PT.pizza_type_id
group by PT.category;

-- Question 6
select hour(order_time) as hour, count(order_id) as Total_orders
from orders
group by hour(order_time);

-- Question 7
select category, count(name) as pizza_types
from pizza_types
group by category;

-- Question 8
select round(avg(Total_orders),0) as Avg_pizza_ordered
from
(select O.order_date, sum(OD.quantity) as Total_orders
from order_details as OD
join orders as O
on OD.order_id = O.order_id
group by O.order_date
) as Total_per_day;

-- Question 9
select PT.name, sum(OD.quantity*P.price) as Total_Revenue_per_pizza
from pizza_types as PT
join pizzas as P
on PT.pizza_type_id = P.pizza_type_id
join order_details as OD
on OD.pizza_id = P.pizza_id
group by PT.name
order by sum(OD.quantity*P.price) desc limit 3;

-- Question 10
WITH TotalSales AS (
    SELECT SUM(OD.quantity * P.price) AS total_sales
    FROM order_details AS OD
    JOIN pizzas AS P ON P.pizza_id = OD.pizza_id
),
CategorySales AS (
    SELECT PT.category AS category, SUM(OD.quantity * P.price) AS category_sales
    FROM pizza_types AS PT
    JOIN pizzas AS P ON PT.pizza_type_id = P.pizza_type_id
    JOIN order_details AS OD ON OD.pizza_id = P.pizza_id
    GROUP BY PT.category
)
SELECT CS.category AS categories, ROUND(CS.category_sales / TS.total_sales * 100, 2) AS total_sales_percent
FROM CategorySales AS CS
JOIN TotalSales AS TS;

-- Question 11
select order_date, round(sum(Total_sales) over (order by order_date),2) as Cum_revenue
from
(select O.order_date as order_date, sum(OD.quantity*P.price) as Total_sales
from orders as O
join order_details as OD
on O.order_id = OD.order_id
join pizzas as P
on P.pizza_id = OD.pizza_id
group by O.order_date) as Total_sales_per_day;

-- Question 12
With Pizza_Category_Revenue AS (select PT.category, PT.name, sum(OD.quantity*P.price) as Revenue
from pizza_types as PT
join pizzas as P
on PT.pizza_type_id = P.pizza_type_id
join order_details as OD
on OD.pizza_id = P.pizza_id
group by PT.category, PT.name),
Pizza_all_ranking as(
select category, name, revenue, rank() over (partition by category order by Revenue desc) as OverRank
from Pizza_Category_Revenue)
select category, name, revenue, OverRank
from Pizza_all_ranking
where OverRank <= 3;