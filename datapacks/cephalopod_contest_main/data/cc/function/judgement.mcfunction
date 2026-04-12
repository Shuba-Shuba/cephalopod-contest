clear @s turtle_egg
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,attributes:[{id:"follow_range",base:100},{id:"attack_damage",base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,attributes:[{id:"follow_range",base:100},{id:"attack_damage",base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,attributes:[{id:"follow_range",base:100},{id:"attack_damage",base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,attributes:[{id:"follow_range",base:100},{id:"attack_damage",base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,attributes:[{id:"follow_range",base:100},{id:"attack_damage",base:15}]}
effect give @e[type=vex] glowing infinite 0 true
tellraw @a [{selector:"@s"}," activated Day Of Judgement"]
schedule function cc:return_ability 25s