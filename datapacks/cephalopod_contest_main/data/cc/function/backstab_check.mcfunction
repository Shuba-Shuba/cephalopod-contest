tag @s add filter

# attack reach varies from 3 to 4.24 blocks b/c reach is cylindrical but distance=..x is spherical
# MATH:
# near end there is @a[tag=filter,limit=1,distance=..x]
# for this x, and theta = angle for valid backstab:
# theta = 4*arcsin(x/2)
# x = 2*sin(theta/4)
# for x = 0.765367, theta = 90 degrees or pi/2
# for x = 1.000000, theta = 120 degrees or 2pi/3
# for x = 1.217523, theta = 150 degrees or 5pi/6
# for x = 1.414214 or sqrt(2), theta = 180 degrees or pi
tag @s remove can_be_backstabbed
execute at @s anchored eyes as @p[distance=0.01..4.25,scores={class=0}] facing entity @s eyes rotated ~ 0 anchored feet positioned ^ ^ ^1 rotated as @a[tag=filter,limit=1] rotated ~180 0 positioned ^ ^ ^-1 if entity @a[tag=filter,limit=1,distance=..1.217523] run scoreboard players set @s backstab_valid 1
tag @a[scores={backstab_valid=1}] add backstab_valid
execute if entity @a[scores={backstab_valid=1}] run tag @s add can_be_backstabbed
tag @s remove filter