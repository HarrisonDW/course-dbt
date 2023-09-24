{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_orders') }}
)

select * from source