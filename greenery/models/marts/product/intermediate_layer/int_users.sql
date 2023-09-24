{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_users') }}
)

select * from source