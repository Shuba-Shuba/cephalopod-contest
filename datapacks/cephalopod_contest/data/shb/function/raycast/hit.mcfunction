## hit the target
execute unless entity @e[tag=this,tag=shotgun] run scoreboard players operation @s hit = .i_ticks config
execute if entity @e[tag=this,tag=shotgun] run tag @s add hit
execute if entity @e[tag=this,tag=shotgun] run tag @s add shotgun_hit
execute if entity @s[type=snowball,tag=shb] run advancement grant @a[tag=this] only shb:nuclear_interception
kill @s[type=snowball,tag=shb]
execute as @a[tag=this] at @s run function shb:sfx/hit
#scoreboard players operation @s killerUUID0 = @e[tag=this,limit=1] UUID0
#scoreboard players operation @s killerUUID1 = @e[tag=this,limit=1] UUID1
#scoreboard players operation @s killerUUID2 = @e[tag=this,limit=1] UUID2
#scoreboard players operation @s killerUUID3 = @e[tag=this,limit=1] UUID3

## setup damage calculation
# scale by 10 b/c 1.19.4 damage system uses x10 value
# scale by 10 is already done in shb:gun/get_stats
scoreboard players operation .dmg raycast = .dmg stats
#scoreboard players operation .dmg raycast *= 10 calc

## headshot multiplier
execute if entity @a[tag=this] positioned ~0.99 ~-0.75 ~0.99 if entity @s[distance=..0.4] run scoreboard players operation .dmg raycast *= .headshot_multiplier*100 config
execute if entity @a[tag=this] positioned ~0.99 ~-0.75 ~0.99 if entity @s[distance=..0.4] run scoreboard players operation .dmg raycast /= 100 raycast
scoreboard players operation #after_headshot raycast = .dmg raycast

## falloff damage reduction
# get stats
scoreboard players operation #falloff_buffer raycast = .falloff.buffer stats
scoreboard players operation #falloff_divisor raycast = .falloff.divisor stats
scoreboard players operation .r2 raycast = .r raycast
scoreboard players operation .r3 raycast = .range stats
# falloff buffer
scoreboard players operation .r3 raycast -= #falloff_buffer raycast
scoreboard players operation .r2 raycast < .r3 raycast
# falloff divisor
scoreboard players operation #tmp_range raycast = .r3 raycast
scoreboard players operation #tmp_range raycast *= #falloff_divisor raycast
scoreboard players operation #tmp_range raycast -= .r3 raycast
scoreboard players operation .r2 raycast += #tmp_range raycast
scoreboard players operation .r2 raycast /= #falloff_divisor raycast
# calculate damage after falloff
scoreboard players operation .dmg raycast *= .r2 raycast
scoreboard players operation .dmg raycast /= .r3 raycast
scoreboard players operation #after_falloff raycast = .dmg raycast

## apply damage
function shb:dmg/root