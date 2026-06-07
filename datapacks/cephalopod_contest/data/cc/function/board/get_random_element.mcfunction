# arr = array of elements to choose from

# @return = int: "/data get" value of chosen element
# element = any: chosen element
# i = int: index of chosen element
execute store result score #length calc run data get storage cc:board tmp.arr
execute store result score #tmp calc run random value 1..
execute store result storage cc:board tmp.i int 1 run scoreboard players operation #tmp calc %= #length calc
# overwrites tmp
return run function cc:board/get_element with storage cc:board tmp