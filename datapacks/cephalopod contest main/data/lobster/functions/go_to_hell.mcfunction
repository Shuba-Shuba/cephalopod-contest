scoreboard players set @a fake_prayers 0
fill -239 89 677 -238 89 678 air destroy
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 1
effect give @a[distance=..5] resistance 3 255 true
schedule function lobster:repair_hell 10t