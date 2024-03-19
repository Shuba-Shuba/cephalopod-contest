# weed price
scoreboard players set .in prng 3
execute if score #WEED money matches ..40 run scoreboard players add .in prng 1
execute if score #WEED money matches 60.. run scoreboard players remove .in prng 1
function shb:rng
scoreboard players remove .out prng 1
scoreboard players operation #WEED money += .out prng
scoreboard players operation .out prng = #WEED money
scoreboard players remove .out prng 50
execute if score .out prng matches 1.. run data modify block 0 71 16 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 0 71 16 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 0 71 16 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block 238 123 772 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 238 123 772 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 238 123 772 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block -488 117 1039 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block -488 117 1039 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block -488 117 1039 front_text.messages[0] set value '["WEED: $",{"score":{"name":"#WEED","objective":"money"}},{"text":" ±0","color":"yellow"}]'
scoreboard players operation #weed1 money = #WEED money
scoreboard players operation #weed1 money *= #100 money
scoreboard players operation #weed1 money /= #weed_emerald money
scoreboard players operation #weed2 money = #weed1 money
scoreboard players operation #weed1 money /= #100 money
scoreboard players operation #weed2 money %= #100 money
data modify block -1 71 16 front_text.messages[0] set value '[{"score":{"name":"#weed1","objective":"money"}},".",{"score":{"name":"#weed2","objective":"money"}},"/emerald"]'

# joint price
scoreboard players set .in prng 5
execute if score #JOINT money matches ..120 run scoreboard players add .in prng 1
execute if score #JOINT money matches 180.. run scoreboard players remove .in prng 1
function shb:rng
scoreboard players remove .out prng 2
scoreboard players operation #JOINT money += .out prng
scoreboard players operation .out prng = #JOINT money
scoreboard players remove .out prng 150
execute if score .out prng matches 1.. run data modify block 0 71 16 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 0 71 16 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 0 71 16 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block 238 123 772 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 238 123 772 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 238 123 772 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block -488 117 1039 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block -488 117 1039 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block -488 117 1039 front_text.messages[1] set value '["JOINT: $",{"score":{"name":"#JOINT","objective":"money"}},{"text":" ±0","color":"yellow"}]'
scoreboard players operation #joint1 money = #JOINT money
scoreboard players operation #joint1 money *= #100 money
scoreboard players operation #joint1 money /= #joint_emerald money
scoreboard players operation #joint2 money = #joint1 money
scoreboard players operation #joint1 money /= #100 money
scoreboard players operation #joint2 money %= #100 money
data modify block -1 71 16 front_text.messages[1] set value '[{"score":{"name":"#joint1","objective":"money"}},".",{"score":{"name":"#coke2","objective":"money"}},"/emerald"]'

# coke price
scoreboard players set .in prng 11
execute if score #COKE money matches ..265 run scoreboard players add .in prng 2
execute if score #COKE money matches 365.. run scoreboard players remove .in prng 2
function shb:rng
scoreboard players remove .out prng 5
scoreboard players operation #COKE money += .out prng
scoreboard players operation .out prng = #COKE money
scoreboard players remove .out prng 315
execute if score .out prng matches 1.. run data modify block 0 71 16 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 0 71 16 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 0 71 16 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block 238 123 772 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 238 123 772 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 238 123 772 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block -488 117 1039 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block -488 117 1039 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block -488 117 1039 front_text.messages[2] set value '["COKE: $",{"score":{"name":"#COKE","objective":"money"}},{"text":" ±0","color":"yellow"}]'
scoreboard players operation #coke1 money = #COKE money
scoreboard players operation #coke1 money *= #100 money
scoreboard players operation #coke1 money /= #coke_emerald money
scoreboard players operation #coke2 money = #coke1 money
scoreboard players operation #coke1 money /= #100 money
scoreboard players operation #coke2 money %= #100 money
data modify block -1 71 16 front_text.messages[2] set value '[{"score":{"name":"#coke1","objective":"money"}},".",{"score":{"name":"#coke2","objective":"money"}},"/emerald"]'

# heroin price
scoreboard players set .in prng 25
execute if score #BTH money matches ..460 run scoreboard players add .in prng 3
execute if score #BTH money matches 660.. run scoreboard players remove .in prng 3
function shb:rng
scoreboard players remove .out prng 12
scoreboard players operation #BTH money += .out prng
scoreboard players operation .out prng = #BTH money
scoreboard players remove .out prng 560
execute if score .out prng matches 1.. run data modify block 0 71 16 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 0 71 16 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 0 71 16 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block 238 123 772 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block 238 123 772 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block 238 123 772 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" ±0","color":"yellow"}]'
execute if score .out prng matches 1.. run data modify block -488 117 1039 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" +","color":"green"},{"score":{"name":".out","objective":"prng"},"color":"green"}]'
execute if score .out prng matches ..-1 run data modify block -488 117 1039 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}}," ",{"score":{"name":".out","objective":"prng"},"color":"red"}]'
execute if score .out prng matches 0 run data modify block -488 117 1039 front_text.messages[3] set value '["B.T.H.: $",{"score":{"name":"#BTH","objective":"money"}},{"text":" ±0","color":"yellow"}]'
scoreboard players operation #bth1 money = #BTH money
scoreboard players operation #bth1 money *= #100 money
scoreboard players operation #bth1 money /= #bth_emerald money
scoreboard players operation #bth2 money = #bth1 money
scoreboard players operation #bth1 money /= #100 money
scoreboard players operation #bth2 money %= #100 money
data modify block -1 71 16 front_text.messages[3] set value '[{"score":{"name":"#bth1","objective":"money"}},".",{"score":{"name":"#bth2","objective":"money"}},"/emerald"]'