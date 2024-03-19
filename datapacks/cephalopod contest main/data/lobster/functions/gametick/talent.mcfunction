# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec
execute if score %second game matches ..0 if entity @a[tag=!stage,tag=!stage_done,tag=!ded,tag=!out] run function lobster:talent_end
execute if score %second game matches ..0 unless entity @a[tag=!stage,tag=!stage_done,tag=!ded,tag=!out] run function lobster:talent_vote

# talent show stuff
execute if score %map game matches 0 as @a[tag=stage] at @s run tp @s[x=590,dx=22,z=512,dz=15.1] ~ ~ 528.4000001
scoreboard players reset @a[tag=stage] talent_vote
scoreboard players enable @a[tag=!stage,tag=!out] talent_vote
scoreboard players set @a[scores={talent_vote=..-2}] talent_vote -1
scoreboard players set @a[scores={talent_vote=2..}] talent_vote 1