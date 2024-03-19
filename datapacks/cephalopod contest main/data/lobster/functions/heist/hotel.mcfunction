scoreboard players set .hotel heist 1
tellraw @a[team=blue] ["",{"selector":"@s"}," has started a heist at hotel"]
data merge block 219 123 770 {Text4:'"IN PROGRESS"'}