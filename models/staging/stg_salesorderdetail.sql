

with source as (
      select * from {{ source('src_postgres', 'salesorderdetail') }}
),
renamed as (
    select
        {{ adapter.quote("unitpricediscount") }},
        {{ adapter.quote("unitprice") }},
        {{ adapter.quote("orderqty") }},
        {{ adapter.quote("salesorderid") }},
        {{ adapter.quote("salesorderdetailid") }},
        {{ adapter.quote("linetotal") }},
        {{ adapter.quote("specialofferid") }},
        {{ adapter.quote("productid") }},
        {{ adapter.quote("carriertrackingnumber") }},
        {{ adapter.quote("modifieddate") }}

    from source
)
select * from renamed
  