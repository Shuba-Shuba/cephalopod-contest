# exclude effects player already has
execute store result storage cc:board tmp.i int .999999 run data get storage cc:board tmp.effects
data modify storage cc:board tmp.tag set from storage cc:board tmp.effects[-1]
function cc:board/effect/exclude_if_had with storage cc:board tmp

# fail if no available effects
execute store result score #length calc run data get storage cc:board tmp.effects
execute unless score #length calc matches 1.. run return fail

# get random available effect
execute store result score #effect calc run random value 1..
execute store result storage cc:board tmp.i int 1 run scoreboard players operation #effect calc %= #length calc
function cc:board/effect/get_tag with storage cc:board tmp

# apply effect tag
function cc:board/effect/add_tag with storage cc:board tmp

data remove storage cc:board tmp
return 1