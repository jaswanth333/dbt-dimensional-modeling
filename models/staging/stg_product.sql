
with source as (
      select * from {{ source('src_postgres', 'vw_product') }}
),
renamed as (
    select
        {{ adapter.quote("productname") }},
        {{ adapter.quote("Size") }},
        {{ adapter.quote("listprice") }},
        {{ adapter.quote("modifieddate") }},
        {{ adapter.quote("reorderpoint") }},
        {{ adapter.quote("sellstartdate") }},
        {{ adapter.quote("daystomanufacture") }},
        {{ adapter.quote("Style") }},
        {{ adapter.quote("discontinueddate") }},
        {{ adapter.quote("standardcost") }},
        {{ adapter.quote("productmodelid") }},
        {{ adapter.quote("productsubcategoryid") }},
        {{ adapter.quote("productline") }},
        {{ adapter.quote("makeflag") }},
        {{ adapter.quote("sizeunitmeasurecode") }},
        {{ adapter.quote("color") }},
        {{ adapter.quote("safetystocklevel") }},
        {{ adapter.quote("productid") }},
        {{ adapter.quote("productnumber") }},
        {{ adapter.quote("weight") }},
        {{ adapter.quote("finishedgoodsflag") }},
        {{ adapter.quote("sellenddate") }},
        {{ adapter.quote("Class") }},
        {{ adapter.quote("weightunitmeasurecode") }}

    from source
)
select * from renamed
  