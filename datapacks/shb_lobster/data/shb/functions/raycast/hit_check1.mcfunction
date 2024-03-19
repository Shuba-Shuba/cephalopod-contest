tag @s add filter
execute as @a[tag=this,limit=1] if predicate shb:looking_at_filter as @e[tag=filter,limit=1] run function shb:raycast/hit
tag @s remove filter
#say hit check