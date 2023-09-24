{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_products') }}
)

select * from source