# 1 What is our user repeat rate?

99 / 124  = 80%

SELECT
 COUNT(*)
FROM (
SELECT 
    user_id,
    COUNT(DISTINCT order_id)
from dev_db.dbt_harrisondewulfmolliecom.stg_orders
GROUP BY 1
HAVING COUNT(DISTINCT order_id) >= 2)

# 2. What are good indicators of a user who will likely purchase again?

 - Was the 1st ordered delivered and did the shipment experience delays?
 - How many items were in the order
 - The total amount of the 1st order
 - Where the consumer is located

# 3. Explain the product mart models you added. Why did you organize the models in the way you did?

Created 2 layers, intermediate and business logix. Intermediate is where I joined staging modes and applied some more transformations related to the product department. The business layer is where I applied business logic to identify trends and risks for the website traffic. 

# 4. Paste in an image of your DAG from the docs. These commands will help you see the full DAG

- Not sure how to show the pic in a readme file. image.png


# 5. What assumptions are you making about each model? 

- Any order should have 1 or more products included
- User table should not have dupp ids (or 2 people have the same id)
- User table should not have any null ids or we can't link to any other table
- Price of any product should be positive or we would pay people to send product

# 6. Did you find any “bad” data as you added and ran tests on your models? 

- Not yet

# 7. Explain how you would ensure these tests are passing regularly and how you would alert stakeholders about bad data getting through.

- set a schedule to build and test each morning
- depending on severity, if it impacted major dashboard I would send a automated slack messsage or post an update in the dashboard that the data is out of synce. 

# 8. Which products had their inventory change from week 1 to week 2? 

- None so far

