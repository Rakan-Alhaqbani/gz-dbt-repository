with 

source as (

    select * from {{ source('raw', 'criteo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaing_name,
        Cast(ads_cost as FLOAT64)  as ads_cost,
        impression,
        click

    from source

)

select * from renamed
