# find which recipe was crafted
execute store success score .r craft run recipe take @s shb:shell
execute if score .r craft matches 1 run scoreboard players set .id craft 1

# give items crafted
function shb:craft/give