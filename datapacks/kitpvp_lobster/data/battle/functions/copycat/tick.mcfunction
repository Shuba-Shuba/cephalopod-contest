execute as @a[scores={Kit_ID=25}] at @s if entity @p[gamemode=adventure,distance=0.01..8] run function battle:copycat/copy
execute as @a[scores={Kit_ID=25}] at @s unless entity @p[gamemode=adventure,distance=0.01..8] run function battle:copycat/no_copy
scoreboard players add %second arrow_time 1
scoreboard players add %second2 arrow_time 1
scoreboard players add %second3 arrow_time 1
execute if score %second arrow_time matches 100.. as @a[scores={Kit_ID=25}] run function battle:copycat/second
execute if score %second2 arrow_time matches 200.. as @a[scores={Kit_ID=10}] run function battle:arrows/ender_arrow
execute if score %second3 arrow_time matches 40.. as @a[scores={Kit_ID=31}] run function battle:arrows/brick
execute if score %mode game matches 21 as @a[tag=!out,gamemode=adventure] at @s if entity @e[type=item,distance=..2.5] run function battle:copycat/item_check