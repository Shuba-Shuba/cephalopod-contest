# process last performer
tag @a[tag=stage] add stage_done
scoreboard players set @a[tag=stage] talent_rating 0
scoreboard players operation @a[tag=stage] talent_rating += @a[tag=!stage,tag=!out] talent_vote
tellraw @a ["",{"selector":"@a[tag=stage]"},"'s final rating: ",{"score":{"objective":"talent_rating","name":"@a[tag=stage,limit=1]"}}]

# explode loser(s)
scoreboard players set #least talent_rating 0
scoreboard players operation #least talent_rating < @a[tag=stage_done] talent_rating
execute as @a[tag=stage_done] if score @s talent_rating = #least talent_rating run function cc:landed
tag @a[tag=!ded,tag=!out] add winner
function cc:end