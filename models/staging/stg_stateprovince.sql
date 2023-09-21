-- {{ config(schema='staging') }}

with source as (
      select * from {{ source('src_postgres', 'vw_stateprovince') }}
),
renamed as (
    select
        {{ adapter.quote("territoryid") }},
        {{ adapter.quote("stateprovinceid") }},
        {{ adapter.quote("statprovincename") }},
        {{ adapter.quote("isonlystateprovinceflag") }},
        {{ adapter.quote("countryregioncode") }},
        {{ adapter.quote("stateprovincecode") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  