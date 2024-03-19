tag @r[tag=tmp_unteamed] add tmp_join_team
team join red @a[tag=tmp_join_team]
tag @a[tag=tmp_join_team] remove tmp_unteamed
tag @a[tag=tmp_join_team] remove tmp_join_team

tag @r[tag=tmp_unteamed] add tmp_join_team
team join blue @a[tag=tmp_join_team]
tag @a[tag=tmp_join_team] remove tmp_unteamed
tag @a[tag=tmp_join_team] remove tmp_join_team

execute if entity @a[tag=tmp_unteamed] run function cc:team_loop