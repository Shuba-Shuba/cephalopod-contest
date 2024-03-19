# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
execute store result score %players game if entity @a[tag=!out,tag=!ded,gamemode=adventure]
execute if score %players game matches ..1 run tag @a[tag=!out,tag=!ded,gamemode=adventure,limit=1] add winner
execute if score %players game matches ..1 run function lobster:end
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec
execute if score %second game matches 0 if score %tick game matches 0 run tag @a[tag=!out,tag=!ded,gamemode=adventure] add winner
execute if score %second game matches 0 if score %tick game matches 0 run function lobster:end

# blindness
execute if score %second game matches 40 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 39 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 35 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 34 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 30 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 29 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 25 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 24 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 20 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 19 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 15 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 14 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 10 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 9 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true

execute if score %second game matches 5 run effect clear @a[tag=!out,tag=!ded,gamemode=!spectator] blindness
execute if score %second game matches 4 run effect give @a[tag=!out,tag=!ded,gamemode=!spectator] blindness infinite 255 true