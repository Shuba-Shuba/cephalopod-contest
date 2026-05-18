data modify storage cc:board tmp.effects set value [\
    "effect.health_up",\
    "effect.speed_up",\
    "effect.damage_up",\
    "effect.no_knockback"\
]
function cc:board/effect/add_random
function cc:board/effect/apply
execute if entity @s[tag=effect.health_up] run tellraw @a [{text:"",color:"gray"},{color:"green",text:"+30% max health"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.speed_up] run tellraw @a [{text:"",color:"gray"},{color:"green",text:"+30% movement speed"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.damage_up] run tellraw @a [{text:"",color:"gray"},{color:"green",text:"+30% attack damage"}," for ",{selector:"@s",color:"white"}," until their next turn"]
execute if entity @s[tag=effect.no_knockback] run tellraw @a [{text:"",color:"gray"},{color:"green",text:"No knockback taken"}," by ",{selector:"@s",color:"white"}," until their next turn"]