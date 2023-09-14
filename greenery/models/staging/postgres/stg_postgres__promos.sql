with source as(
    select * from {{ source('postgres', 'promos') }}
)

, renamed_recast as (
    select
        PROMO_ID
        , DISCOUNT
        , STATUS
    from source
)

select * from renamed_recast