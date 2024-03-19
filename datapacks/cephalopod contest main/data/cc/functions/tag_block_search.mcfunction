# find the block this arrow hit
scoreboard players set #bool game 0
$execute store success score #bool game positioned ~.1 ~ ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~-.1 ~ ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~.1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~-.1 ~ if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~ ~.1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 store success score #bool game positioned ~ ~ ~-.1 if block ~ ~ ~ $(name) run tp @s ~ ~ ~
$execute unless score #bool game matches 1 run function cc:tag_block_search_deep {"name":"$(name)"}

# summon "tagged block"
execute if score #bool game matches 1 at @s align xyz run summon slime ~.5 ~ ~.5 {Tags:["tnt_arc","init"],NoAI:1b,Size:1,Invulnerable:1b,Team:"no_pvp",active_effects:[{id:"minecraft:glowing",duration:-1,amplifier:0b,show_particles:0b,show_ambient:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}

# copy ownerUUID from marker (arrow's passenger) to tagUUID of "tagged block"
scoreboard players operation .sys UUID0 = @s ownerUUID0
scoreboard players operation .sys UUID1 = @s ownerUUID1
scoreboard players operation .sys UUID2 = @s ownerUUID2
scoreboard players operation .sys UUID3 = @s ownerUUID3
execute at @s align xyz positioned ~.5 ~ ~.5 as @e[type=slime,tag=init] run function cc:tag_block