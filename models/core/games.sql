with games as (
    select * from {{ ref('source_games') }}
)

select * from games