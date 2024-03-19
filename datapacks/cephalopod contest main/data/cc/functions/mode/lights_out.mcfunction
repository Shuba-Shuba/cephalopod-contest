# begin
function cc:camera_end
scoreboard players set %mode game 0
execute store result bossbar cc:time max run scoreboard players get time.lights_out config
execute store result bossbar cc:time value run scoreboard players get time.lights_out config
scoreboard players operation %second game = time.lights_out config
playsound minecraft:music_disc.ward music @a[tag=!out,tag=!ded] 0 69 0 1 0 1
effect give @a[tag=!out,tag=!ded] blindness infinite 0 true
effect give @a[tag=!out,tag=!ded] regeneration 5 255 true
execute store result score .out prng run random value 0..4
execute if score .out prng matches 0 as @a[tag=!out,tag=!ded] run give @s wooden_sword{Unbreakable:1b,CustomModelData:3}
execute if score .out prng matches 1 as @a[tag=!out,tag=!ded] run function shb:give/pistol
execute if score .out prng matches 2 as @a[tag=!out,tag=!ded] run function shb:give/shotgun
execute if score .out prng matches 3 as @a[tag=!out,tag=!ded] run function shb:give/musket
execute if score .out prng matches 4 as @a[tag=!out,tag=!ded] run function shb:give/rocket