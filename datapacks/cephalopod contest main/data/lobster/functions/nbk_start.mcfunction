#scoreboard players set %tree game -1
tellraw @a "Starting Nitro Boat Karts..."
function lobster:countdown/5
schedule function lobster:countdown/4 1s
schedule function lobster:countdown/3 2s
schedule function lobster:countdown/2 3s
schedule function lobster:countdown/1 4s
schedule function lobster:mode/nbk 5s