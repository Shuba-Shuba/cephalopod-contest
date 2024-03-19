scoreboard players set .bank heist 1
tellraw @a[team=blue] ["",{"selector":"@s"}," has started a heist at bank"]
data merge block 239 123 790 {Text4:'"IN PROGRESS"'}