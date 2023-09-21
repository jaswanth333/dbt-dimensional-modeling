

with source as (
      select * from {{ source('src_postgres', 'vw_productcategory') }}
),
renamed as (
    select
        {{ adapter.quote("productcategoryid") }},
        {{ adapter.quote("productcategory") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  