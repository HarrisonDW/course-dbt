## Which products had their inventory change from week 3 to week 4? 

Pothos
Bamboo
Philodendron
Monstera
String of pearls
ZZ Plant

select 
    s.product_id,
    p.name,
    count(*)
from dev_db.dbt_harrisondewulfmolliecom.snapshot_products s
left join dev_db.dbt_harrisondewulfmolliecom.dim_products p
    on s.product_id = p.product_id
where s.dbt_valid_from > '2023-10-02'
order by 3 desc


## Which products had the most fluctuations in inventory?

Pothos
Bamboo
Monstera
ZZ Plant
Philodendron

select 
    s.product_id,
    p.name,
    count(*)
from dev_db.dbt_harrisondewulfmolliecom.snapshot_products s
left join dev_db.dbt_harrisondewulfmolliecom.dim_products p
    on s.product_id = p.product_id
group by 1,2
order by 3 desc



## Did we have any items go out of stock in the last 3 weeks? 

Pothos
String of pearls

select 
    s.product_id,
    p.name,
    count(*)
from dev_db.dbt_harrisondewulfmolliecom.snapshot_products s
left join dev_db.dbt_harrisondewulfmolliecom.dim_products p
    on s.product_id = p.product_id
where s.dbt_valid_from > '2023-10-02'
and s.inventory = 0
group by 1,2
order by 3 desc

## How are our users moving through the product funnel?

PAGE_TO_CART_conversion 
0.807958

CART_TO_CHECKOUT_conversion
0.773019

Shipped Conversion
0.927978


## Which steps in the funnel have largest drop off points?

Cart to Checkout

## if your organization is thinking about using dbt, how would you pitch the value of dbt/analytics engineering to a decision maker at your organization?

 governance, reliability, reduce time investment to maintain data structure

## if your organization is using dbt, what are 1-2 things you might do differently / recommend to your organization based on learning from this course?

use the exposure lineage to see which critical models drive our top 3 most important dashboards

## if you are thinking about moving to analytics engineering, what skills have you picked that give you the most confidence in pursuing this next step?

re-usability, create data frames that don't pigeon hole analyst and allow them to use output for difference use cases 

## how would you go about setting up a production/scheduled dbt run of your project in an ideal state?

Rely on DBT Cloud, easy to setup for small teams

1. Daily run starting around 6am so all data is fresh at 8am
    - gives us time to review any failed pipelines at 8am to the business has all the right data by 9am
2. Would be interested to identify which models cost the most to run/ take the most time so the data team can improve performance overtime and use it as one of our main KPIs