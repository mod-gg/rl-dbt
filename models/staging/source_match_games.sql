{{ config(materialized='view') }}

with source_data as (

    select *
    from {{ source('rocket_league', 'source_octane_games__match__games') }}
)

select *
from source_data