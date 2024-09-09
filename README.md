<h1>Pizza Sales Analysis</h1>

<h2>Description</h2>
This project is designed to analyze a pizza restaurant's sales data using SQL queries. The goal is to derive actionable insights that can help the business understand customer behavior, optimize its offerings, and improve overall operations. This project is not just about running SQL queries; it's about using data to drive business decisions. By analyzing various aspects of pizza sales, we can provide the restaurant with valuable insights that can help in improving customer satisfaction, optimizing inventory, enhancing marketing strategies, and ultimately boosting profitability.
<br />

<h2>Project walk-through:</h2>

<p>
Question 1: Calculate the total revenue generated from pizza sales: <br/>
<img src="https://i.imgur.com/9kW9m87.png" height="80%" width="80%" alt="Solution 1"/>
<br />
Explanation: Revenue is generated whenever a pizza is sold. In our database, the price of each pizza is stored in the 'pizzas' table, and the quantity of pizzas sold in each order is stored in the 'order_details' table. To calculate the total revenue, we multiply the price of each pizza by the quantity sold in each order and then sum these values across all orders. This gives us the total amount of money earned from pizza sales. Knowing the total revenue is crucial for financial analysis, budget planning, and assessing the financial health of the business. <br/>
<br />
Question 2: Identify the highest-priced pizza: <br/>
<img src="https://i.imgur.com/2X9ju6J.png" height="80%" width="80%" alt="Solution 2"/>
<br />
Explanation: Different pizzas are priced differently based on ingredients, size, and other factors. The 'pizzas' table contains the prices for each pizza. By examining all the prices, we can identify the maximum value to determine which pizza is the most expensive. This information is useful for understanding premium offerings and can help in marketing strategies that highlight luxury or special pizzas. <br/>
<br />
Question 3: Identify the most common pizza size ordered. <br/>
<img src="https://i.imgur.com/AvweP6B.png" height="80%" width="80%" alt="Solution 3"/>
<br />
Explanation: Pizzas come in various sizes, and each order specifies a size in the 'order_details' table. By grouping all the orders by pizza size and summing the quantities ordered for each size, we can see which size is the most popular. This insight helps in inventory management (e.g., knowing which size boxes to stock more of) and can guide promotional activities (e.g., offering discounts on popular sizes). <br/>
<br />
Question 4: List the top 5 most ordered pizza types along with their quantities. <br/>
<img src="https://i.imgur.com/8Yt7zZ4.png" height="80%" width="80%" alt="Solution 4"/>
<br />
Explanation: Different types of pizzas appeal to different customer preferences. In the database, the 'pizza_types' table lists the different pizza types, and the 'order_details' table records how many of each type were ordered. By summing the quantities for each pizza type and ranking them, we can identify the top 5 bestsellers. This information is important for menu optimization and marketing, as it helps to focus on the pizzas that customers love the most. <br/>
<br />
Question 5: Join the necessary tables to find the total quantity of each pizza category ordered. <br/>
<img src="https://i.imgur.com/OqK7dgD.png" height="80%" width="80%" alt="Solution 5"/>
<br />
Explanation: Pizzas are grouped into categories based on their toppings or ingredients, and these categories are listed in the 'pizza_types' table. The 'order_details' table records how many pizzas were ordered. By joining these tables and summing the quantities for each category, we can see which categories are the most popular. This information helps in understanding customer preferences at a higher level and can guide decisions around menu diversity and inventory management. <br/> 
<br />
Question 6: Determine the distribution of orders by hour of the day. <br/>
<img src="https://i.imgur.com/NUyHgZD.png" height="80%" width="80%" alt="Solution 6"/>
<br />
Explanation: The 'orders' table includes timestamps for when each order was placed. By extracting the hour from these timestamps and counting the number of orders in each hour, we can see which times of day are busiest. This is valuable for operational planning, such as staffing, and for marketing, such as timing promotions during peak hours. <br/>
<br />
Question 7: Join relevant tables to find the category-wise distribution of pizzas. <br/>
<img src="https://i.imgur.com/gCO9CLK.png" height="80%" width="80%" alt="Solution 7"/>
<br />
Explanation: Pizzas are classified into various categories like vegetarian, meat, etc., and each pizza type belongs to one of these categories, as recorded in the 'pizza_types' table. By counting how many pizza types exist in each category, we can assess the variety of offerings in each category. This analysis helps in menu planning and ensuring that there is enough diversity in each category to satisfy different customer tastes. <br/>
<br />
Question 8: Group the orders by date and calculate the average number of pizzas ordered per day. <br/>
<img src="https://i.imgur.com/KWlZWJ8.png" height="80%" width="80%" alt="Solution 8"/>
<br />
Explanation: To calculate this, we first determine the total number of pizzas ordered on each day by summing the quantities from the 'order_details' table grouped by order date. Then, we calculate the average of these daily totals. This average gives us an idea of typical daily sales, which is useful for forecasting demand, managing inventory, and planning resources like staff and ingredients. <br/>
<br />
Question 9: Determine the top 3 most ordered pizza types based on revenue. <br/>
<img src="https://i.imgur.com/uPtBgAO.png" height="80%" width="80%" alt="Solution 9"/>
<br />
Explanation: Revenue for each pizza type is calculated by multiplying the price of each pizza by the quantity sold, then summing these values for each type. By ranking these sums, we can identify the top 3 pizza types in terms of revenue. These are the pizzas that contribute the most to the business’s income, making them key products to promote and ensure are always available. <br/>
<br />
Question 10: Calculate the percentage contribution of each pizza type to total revenue. <br/>
<img src="https://i.imgur.com/QUQawnv.png" height="80%" width="80%" alt="Solution 10"/>
<br />
Explanation: First, we calculate the total revenue generated by all pizza sales. Then, for each pizza type, we calculate the revenue it generates and express this as a percentage of the total revenue. This shows us which pizzas are most important to the business in terms of financial contribution, helping to identify key products and possibly underperforming ones. <br/>
<br />
Question 11: Analyze the cumulative revenue generated over time. <br/>
<img src="https://i.imgur.com/rueSHzQ.png" height="80%" width="80%" alt="Solution 11"/>
<br />
Explanation: Cumulative revenue is calculated by summing daily revenues in a running total. By tracking this cumulative sum over time, we can visualize how the business’s income grows and identify patterns such as seasonal spikes or consistent growth. This analysis is useful for long-term financial planning and understanding the impact of marketing efforts or other changes over time. <br/>
<br />
Question 12: Determine the top 3 most ordered pizza types based on revenue for each pizza category. <br/>
<img src="https://i.imgur.com/0PKHQqO.png" height="80%" width="80%" alt="Solution 12"/>
<br />
Explanation: For each pizza category (e.g., vegetarian, meat), we calculate the revenue generated by each pizza type within that category. Then, we rank these types and select the top 3 for each category. This detailed analysis helps in understanding which specific pizzas drive sales within their respective categories, guiding menu adjustments and targeted promotions for different customer segments. <br/>
<br />
</p>
<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
