tellraw @a ["skipping ",{"selector":"@s"}," because they landed on a glue trap last turn..."]
setblock ~ ~ ~ air destroy
tag @s remove glued
schedule function cc:board/end_turn 2s