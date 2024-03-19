clear @s nether_star
effect give @a[team=global,tag=!out] slowness 2 255 false
effect give @a[team=global,tag=!out] jump_boost 2 255 false
tellraw @a [{"selector":"@s"}," activated Stun The Sinful!"]
schedule function lobster:return_ability 25s