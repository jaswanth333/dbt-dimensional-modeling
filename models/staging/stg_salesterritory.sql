-- {{ config(schema='staging') }}

with source as (
      select * from {{ source('src_postgres', 'vw_salesterritory') }}
),
renamed as (
    select
        {{ adapter.quote("territoryid") }},
        {{ adapter.quote("salesterritoryname") }},
        {{ adapter.quote("Group") }},
        {{ adapter.quote("saleslastyear") }},
        {{ adapter.quote("salesytd") }},
        {{ adapter.quote("countryregioncode") }},
        {{ adapter.quote("costlastyear") }},
        {{ adapter.quote("costytd") }},
        {{ adapter.quote("modifieddate") }}
    from source
)
select * from renamed
  