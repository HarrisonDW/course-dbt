{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_order_items') }}
)

select * from source