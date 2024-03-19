# %prev_boss_hp game  = dragon hp last tick
# %after_boss_hp game = dragon hp after hit
advancement revoke @s only lobster:hit_dragon
execute store result score %after_boss_hp game run data get entity @e[type=ender_dragon,limit=1] Health 10
scoreboard players operation #dmg calc = %prev_boss_hp game
scoreboard players operation #dmg calc -= %after_boss_hp game
scoreboard players add #dmg calc 5
scoreboard players operation #dmg calc /= 10 calc
scoreboard players operation @s boss_damage += #dmg calc
scoreboard players operation @s boss_points += #dmg calc