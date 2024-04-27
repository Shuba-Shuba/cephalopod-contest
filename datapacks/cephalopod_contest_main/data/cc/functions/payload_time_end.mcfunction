# win
tag @a[team=red] add winner
tellraw @a [{"text":"Time ran out - ","color":"green"},{"text":"RED","color":"red"}," team wins!"]

# end
execute as @a[tag=!ded,tag=!out] run function battle:kits/clear_kit
function cc:end