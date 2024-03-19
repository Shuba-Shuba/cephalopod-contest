clear @s turtle_egg
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:15}]}
summon vex ~ ~ ~ {Team:"nun",LifeTicks:400,Attributes:[{Name:generic.follow_range,Base:100},{Name:generic.attack_damage,Base:15}]}
effect give @e[type=vex] glowing infinite 0 true
tellraw @a [{"selector":"@s"}," activated Day Of Judgement"]
schedule function cc:return_ability 25s