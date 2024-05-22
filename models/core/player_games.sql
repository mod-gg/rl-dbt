with player_games as (
    select *
    from {{ ref('source_games_blue_players') }}

    union all

    select *
    from {{ ref('source_games_orange_players') }}
)

select * from player_games