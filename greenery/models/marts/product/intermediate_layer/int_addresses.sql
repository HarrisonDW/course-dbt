{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_addresses') }}
)

select * from source