## apply damage
# convert x10 integer on scoreboard to x1 float on data storage
execute store result storage shb:dmg damage.value float 0.1 run scoreboard players get .dmg raycast
# remove data suffix and convert float to string
data modify storage shb:dmg damage.value set string storage shb:dmg damage.value 0 -1
# apply damage value as function parameter - no scoreboard tree necessary
function shb:dmg/apply/real with storage shb:dmg damage

## check for sentry kills
execute if entity @s[advancements={shb:killed_by_sentry=true}] run scoreboard players add @e[tag=sentry,tag=this] sentry_kill 1
advancement revoke @s only shb:killed_by_sentry