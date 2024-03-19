scoreboard players set .skyscraper heist 1
tellraw @a[team=blue] ["",{"selector":"@s"}," has started a heist at skyscraper"]
data merge block 271 123 771 {Text4:'"IN PROGRESS"'}