# check if payload cart is being pushed
scoreboard players operation .payload_prev game = .payload game
execute store result score .payload game if entity @a[team=blue,distance=..2,gamemode=adventure]

# check if enemy blocking cart
execute if score .payload game matches 1.. if entity @a[team=red,distance=..2,gamemode=adventure] run title @a[team=blue,distance=..2] actionbar {"text":"Blocked by enemy","color":"red"}
execute if score .payload game matches 1.. if entity @a[team=red,distance=..2,gamemode=adventure] run scoreboard players set .payload game 0

# cart changed states
execute if score .payload game matches 0 if score .payload_prev game matches 1 run function lobster:payload_unpush
execute if score .payload game matches 1.. if score .payload_prev game matches 0 run function lobster:payload_push

# cart being pushed
execute if score .payload game matches 1.. run function lobster:payload_push_init