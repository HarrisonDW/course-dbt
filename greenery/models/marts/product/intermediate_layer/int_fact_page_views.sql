{{config(materialized = 'view')}}

with products as (
    select
        *
    from {{ ref('int_products') }}
),

events as (
    select
        *
    from {{ ref('int_events') }}
)

SELECT 
     DATE_TRUNC(DAY, e.created_at) AS created_date
    , p.product_id
    , name
    , COUNT(session_id) AS count_page_views
    , COUNT(user_id) AS count_users
FROM products p
LEFT JOIN events e
    ON p.product_id = e.product_id
WHERE event_type = 'page_view'
GROUP BY 1,2,3