execute store result score .l calc if entity @a[tag=winner]
scoreboard players operation .l calc *= -1 calc
scoreboard players operation .l calc += .n calc
scoreboard players set #tmp calc 1600
scoreboard players operation #tmp calc *= .l calc
scoreboard players operation #tmp calc *= .l calc
scoreboard players operation #tmp calc /= .n calc
scoreboard players operation #tmp calc /= .n calc
scoreboard players operation #dec calc = #tmp calc
scoreboard players operation #floor calc = #tmp calc
scoreboard players operation #floor calc /= 100 calc
scoreboard players operation #dec calc %= 100 calc
scoreboard players operation @a[tag=winner] board_rewards += #tmp calc
execute if score #dec calc matches 10.. if entity @a[tag=winner] run tellraw @a [{selector:"@a[tag=winner]",color:"green"}," earned +$",{score:{name:"#floor",objective:"calc"}},".",{score:{name:"#dec",objective:"calc"}}]
execute if score #dec calc matches ..9 if entity @a[tag=winner] run tellraw @a [{selector:"@a[tag=winner]",color:"green"}," earned +$",{score:{name:"#floor",objective:"calc"}},".0",{score:{name:"#dec",objective:"calc"}}]