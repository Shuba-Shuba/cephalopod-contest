clear @a[tag=!out]
scoreboard players set %mode game 69
tp @a[tag=!out] 123 64 -438 90 0
scoreboard objectives setdisplay sidebar
playsound minecraft:music_disc.ward record @a 123 64 -438
scoreboard players set #shards game 0
tellraw @a [{"text":"\n[CRITICAL ERROR]:\n","color":"red"},{"text":"You are cheating! This is supposed to be obfuscated text!","obfuscated":true}]
bossbar set cc:time name {"text":"the shard room","obfuscated":true}
bossbar set cc:time max 3
bossbar set cc:time value 0
give @a[tag=!out,advancements={cc:shards={shard1=true}}] minecraft:amethyst_shard
give @a[tag=!out,advancements={cc:shards={shard2=true}}] minecraft:prismarine_shard
give @a[tag=!out,advancements={cc:shards={shard3=true}}] minecraft:echo_shard