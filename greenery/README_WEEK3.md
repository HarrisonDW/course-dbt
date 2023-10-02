# Part 1 What is our overall conversion rate?

1.276817

select 
    SUM(session_count) / SUM(order_count) as total_conversion
from dev_db.dbt_harrisondewulfmolliecom.fact_daily_product_conversions

# Part 1 What is our overall conversion rate?

select 
    product_id,
    SUM(session_count) / SUM(order_count) as product_conversion
from dev_db.dbt_harrisondewulfmolliecom.fact_daily_product_conversions
GROUP BY 1

Top 10 
615695d3-8ffd-4850-bcf7-944cf6d3685b	1.511628
6f3a3072-a24d-4d11-9cef-25b0b5f8a4af	1.5
a88a23ef-679c-4743-b151-dc7722040d8c	1.4375
e2e78dfc-f25c-4fec-a002-8e280d61a2f2	1.4
843b6553-dc6a-4fc4-bceb-02cd39af0168	1.387755
80eda933-749d-4fc6-91d5-613d29eb126f	1.37037
c7050c3b-a898-424d-8d98-ab0aaad7bef4	1.363636
55c6a062-5f4a-4a8b-a8e5-05ea5e6715a3	1.347826
e5ee99b6-519f-4218-8b41-62f48f59f700	1.346939
bb19d194-e1bd-4358-819e-cd1f1b401c0c	1.344828

# Part 2: We’re getting really excited about dbt macros after learning more about them and want to apply them to improve our dbt project. 

Created event_types macro to flatten a column

# Part 3 Add a post hook to your project to apply grants to the role “reporting”. 

Done. 

# Part 4 Install a package (i.e. dbt-utils, dbt-expectations) and apply one or more of the macros to your project

Done. 

# Part 5 Show (using dbt docs and the model DAGs) how you have simplified or improved a DAG using macros and/or dbt packages

Was able to flatten the events tables and go directly to a fact_event tables

# Part 6. dbt Snapshots

Pathos dropped to 0 in inventory
Philodendron dropped to 15 in inventory
Bamboo dropped to 44 in inventory
ZZplant dropped to 53 in inventory
Monstera dropped to 50 in inventory
String of pearls dropped to 0 in inventory