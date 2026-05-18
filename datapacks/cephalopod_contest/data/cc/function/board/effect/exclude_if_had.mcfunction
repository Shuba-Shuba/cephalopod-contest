$execute if entity @s[tag=$(tag)] run data remove storage cc:board tmp.effects[$(i)]
execute if data storage cc:board {tmp:{i:0}} run return 1
execute store result storage cc:board tmp.i int .999999 run data get storage cc:board tmp.i
function cc:board/effect/get_tag with storage cc:board tmp
function cc:board/effect/exclude_if_had with storage cc:board tmp