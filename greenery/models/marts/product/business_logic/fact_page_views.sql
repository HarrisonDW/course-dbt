{{config(materialized = 'table')}}

with source as (
    select * from {{ ref('int_fact_page_views') }}
)

select * from source