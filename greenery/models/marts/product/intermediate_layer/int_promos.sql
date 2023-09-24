{{config(materialized = 'view')}}

with source as (
    select 
        * 
    from {{ ref('stg_promos') }}
)

select * from source