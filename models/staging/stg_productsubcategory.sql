

with source as (
      select * from {{ source('src_postgres', 'vw_productsubcategory') }}
),
renamed as (
    select
        {{ adapter.quote("productsubcategory") }},
        {{ adapter.quote("productcategoryid") }},
        {{ adapter.quote("productsubcategoryid") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  