clear @s sugar
effect give @s speed 5 0 false
effect give @a[team=global,tag=!out] darkness 5 0 false
effect give @a[team=global,tag=!out] glowing 5 0 false
tellraw @a [{"selector":"@s"}," activated Super Nun!"]
schedule function cc:return_ability 25s