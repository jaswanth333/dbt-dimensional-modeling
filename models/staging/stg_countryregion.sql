

with source as (
      select * from {{ source('src_postgres', 'vw_countryregion') }}
),
renamed as (
    select
        {{ adapter.quote("countryregionname") }},
        {{ adapter.quote("countryregioncode") }},
        {{ adapter.quote("modifieddate") }}
    from source
)
select * from renamed
  