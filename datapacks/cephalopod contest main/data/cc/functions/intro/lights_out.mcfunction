gamemode spectator @a[tag=!out]
scoreboard players set %camera game 0
scoreboard players set %map game 0
#tellraw @a "\nLights Out:\nHold on for a moment, I gotta replace the lightbulbs. Don't kill each other while I'm busy.\n"
schedule function cc:mode/lights_out 8s
tp @a[tag=!out] 0 80 0