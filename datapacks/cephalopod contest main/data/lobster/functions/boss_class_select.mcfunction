execute on attacker run tag @s add clicker
execute on target run tag @s add clicker
data remove entity @s attack
data remove entity @s interaction

execute if entity @s[tag=kit_fly] run scoreboard players set @a[tag=clicker] boss_fight_class 0
execute if entity @s[tag=kit_fly] run title @a[tag=clicker] actionbar "Selected class: Movement"
execute if entity @s[tag=kit_bomb] run scoreboard players set @a[tag=clicker] boss_fight_class 1
execute if entity @s[tag=kit_bomb] run title @a[tag=clicker] actionbar "Selected class: Bomber"
execute if entity @s[tag=kit_melee] run scoreboard players set @a[tag=clicker] boss_fight_class 2
execute if entity @s[tag=kit_melee] run title @a[tag=clicker] actionbar "Selected class: Melee"
execute if entity @s[tag=kit_archer] run scoreboard players set @a[tag=clicker] boss_fight_class 3
execute if entity @s[tag=kit_archer] run title @a[tag=clicker] actionbar "Selected class: Archer"
execute as @a[tag=clicker] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

tag @a remove clicker