{{config(materialized = 'view')}}

with products as (
    select
        *
    from {{ ref('int_products') }}
),

order_items as (
    select
        *
    from {{ ref('int_order_items') }}
),

orders as (
    select
        *
    from {{ ref('int_orders') }}
)

SELECT 
      DATE_TRUNC(DAY, o.created_at) AS ordered_date
    , o.order_id
    , user_id
    , promo_id
    , address_id
    , p.product_id
    , p.name
    , o_i.quantity AS quantity_ordered
    , tracking_id
    , shipping_service
    , estimated_delivery_at
    , delivered_at
    , status
FROM orders o 
LEFT JOIN order_items o_i
    ON o.order_id = o_i.order_id
LEFT JOIN products p 
    ON o_i.product_id = p.product_id