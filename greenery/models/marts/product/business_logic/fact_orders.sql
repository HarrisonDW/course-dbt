{{config(materialized = 'table')}}

with source as (
    select * from {{ ref('int_fact_orders') }}
)

select * from source