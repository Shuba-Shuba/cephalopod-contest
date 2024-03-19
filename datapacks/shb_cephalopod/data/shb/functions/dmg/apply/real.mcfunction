# if(.ammo.type == 5) then flamethrower
# else bullet
$execute unless score .ammo.type stats matches 5 run damage @s $(value) shb:bullet by @e[tag=this,limit=1]
$execute if score .ammo.type stats matches 5 run damage @s $(value) shb:fire by @e[tag=this,limit=1]