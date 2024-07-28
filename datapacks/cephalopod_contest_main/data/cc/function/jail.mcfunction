scoreboard players set @s deaths 0
scoreboard players set @s jail_time 600
tellraw @s "You have been incarcerated. You can either wait out your sentence, or rightclick the guard to bribe them and get out. All of your guns have been removed except your shoddy shotty."
clear @s carrot_on_a_stick
clear @s ender_eye
clear @s iron_nugget[custom_name='{"text":"Bullet","italic":false}',custom_data={ammo:{type:1b}}] 32
give @s iron_nugget[custom_name='{"text":"Bullet","italic":false}',custom_data={ammo:{type:1b}}] 32
function shb:give/carrot/pistol_bad
scoreboard players set 4 jail_time 4
scoreboard players operation .count jail_time %= 4 jail_time
execute if score .count jail_time matches 0 run tp @s 285 144 789
execute if score .count jail_time matches 1 run tp @s 292 144 789
execute if score .count jail_time matches 2 run tp @s 285 144 795
execute if score .count jail_time matches 3 run tp @s 292 144 795