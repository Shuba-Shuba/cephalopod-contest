# reset shoot timer
scoreboard players set %missile eng_time 0

# copy sentry's builder uuid to system memory so that it is easier to check
scoreboard players operation %system UUID0 = @s builderUUID0
scoreboard players operation %system UUID1 = @s builderUUID1
scoreboard players operation %system UUID2 = @s builderUUID2
scoreboard players operation %system UUID3 = @s builderUUID3

# find original builder to prevent them fom being shot
execute as @a[scores={Kit_ID=23}] if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tag @s add owner

# sentry launches homing missile at nearest *visible* player within 20 blocks
execute anchored eyes facing entity @p[distance=..20,gamemode=adventure,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] eyes if entity @p[distance=..20,gamemode=adventure,tag=!owner,nbt=!{active_effects:[{id:"minecraft:invisibility"}]},nbt=!{active_effects:[{id:"minecraft:resistance"}]}] run function battle:eng/sentry/missile_summon