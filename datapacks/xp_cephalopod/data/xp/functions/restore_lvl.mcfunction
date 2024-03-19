# reset levels
xp set @s 0 levels

### binary conversion
# 512
execute if score old_levels xp_calc matches 512.. run xp add @s 512 levels
execute if score old_levels xp_calc matches 512.. run scoreboard players remove old_levels xp_calc 512

# 256
execute if score old_levels xp_calc matches 256.. run xp add @s 256 levels
execute if score old_levels xp_calc matches 256.. run scoreboard players remove old_levels xp_calc 256

# 128
execute if score old_levels xp_calc matches 128.. run xp add @s 128 levels
execute if score old_levels xp_calc matches 128.. run scoreboard players remove old_levels xp_calc 128

# 64
execute if score old_levels xp_calc matches 64.. run xp add @s 64 levels
execute if score old_levels xp_calc matches 64.. run scoreboard players remove old_levels xp_calc 64

# 32
execute if score old_levels xp_calc matches 32.. run xp add @s 32 levels
execute if score old_levels xp_calc matches 32.. run scoreboard players remove old_levels xp_calc 32

# 16
execute if score old_levels xp_calc matches 16.. run xp add @s 16 levels
execute if score old_levels xp_calc matches 16.. run scoreboard players remove old_levels xp_calc 16

# 8
execute if score old_levels xp_calc matches 8.. run xp add @s 8 levels
execute if score old_levels xp_calc matches 8.. run scoreboard players remove old_levels xp_calc 8

# 4
execute if score old_levels xp_calc matches 4.. run xp add @s 4 levels
execute if score old_levels xp_calc matches 4.. run scoreboard players remove old_levels xp_calc 4

# 2
execute if score old_levels xp_calc matches 2.. run xp add @s 2 levels
execute if score old_levels xp_calc matches 2.. run scoreboard players remove old_levels xp_calc 2

# 1
execute if score old_levels xp_calc matches 1.. run xp add @s 1 levels
execute if score old_levels xp_calc matches 1.. run scoreboard players remove old_levels xp_calc 1

# run again if 1024+ levels
execute if score old_levels xp_calc matches 1.. run function xp:restore_lvl