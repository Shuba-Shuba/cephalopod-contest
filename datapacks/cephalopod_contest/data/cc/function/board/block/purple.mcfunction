data modify storage cc:board tmp.effects set value [\
    "effect.health_down",\
    "effect.speed_down",\
    "effect.damage_down",\
    "effect.gravity_up"\
]
function cc:board/effect/add_random
function cc:board/effect/apply
execute if entity @s[tag=effect.health_down] run tellraw @a [{text:"",color:"gray"},{color:"red",text:"-30% max health"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.speed_down] run tellraw @a [{text:"",color:"gray"},{color:"red",text:"-30% movement speed"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.damage_down] run tellraw @a [{text:"",color:"gray"},{color:"red",text:"-30% attack damage"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.gravity_up] run tellraw @a [{text:"",color:"gray"},{color:"red",text:"+30% gravity"}," for ",{selector:"@s",color:"white"}," until their next turn"]