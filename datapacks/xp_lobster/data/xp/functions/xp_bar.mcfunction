# for x = xp levels, xp points = 
# x < 15    2x+7
# x = 15    37
# 15<x<31   5x-38
# x = 31    117 or 121 (idk)
# 31 < x    9x-158

# reset pts
xp set @s 0 points

### binary conversion
# 512
execute if score in xp_calc matches 512.. run xp add @s 512 points
execute if score in xp_calc matches 512.. run scoreboard players remove in xp_calc 512

# 256
execute if score in xp_calc matches 256.. run xp add @s 256 points
execute if score in xp_calc matches 256.. run scoreboard players remove in xp_calc 256

# 128
execute if score in xp_calc matches 128.. run xp add @s 128 points
execute if score in xp_calc matches 128.. run scoreboard players remove in xp_calc 128

# 64
execute if score in xp_calc matches 64.. run xp add @s 64 points
execute if score in xp_calc matches 64.. run scoreboard players remove in xp_calc 64

# 32
execute if score in xp_calc matches 32.. run xp add @s 32 points
execute if score in xp_calc matches 32.. run scoreboard players remove in xp_calc 32

# 16
execute if score in xp_calc matches 16.. run xp add @s 16 points
execute if score in xp_calc matches 16.. run scoreboard players remove in xp_calc 16

# 8
execute if score in xp_calc matches 8.. run xp add @s 8 points
execute if score in xp_calc matches 8.. run scoreboard players remove in xp_calc 8

# 4
execute if score in xp_calc matches 4.. run xp add @s 4 points
execute if score in xp_calc matches 4.. run scoreboard players remove in xp_calc 4

# 2
execute if score in xp_calc matches 2.. run xp add @s 2 points
execute if score in xp_calc matches 2.. run scoreboard players remove in xp_calc 2

# 1
execute if score in xp_calc matches 1.. run xp add @s 1 points
execute if score in xp_calc matches 1.. run scoreboard players remove in xp_calc 1

xp set @s 0 levels