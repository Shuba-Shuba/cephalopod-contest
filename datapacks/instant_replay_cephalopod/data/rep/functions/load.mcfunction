scoreboard objectives add anchor_id dummy
scoreboard objectives add anchor_index dummy
scoreboard objectives add rep_record dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

scoreboard objectives add config dummy
execute unless score rep.replay_length config = rep.replay_length config run scoreboard players set rep.replay_length config 100
execute unless score rep.recording config = rep.recording config run scoreboard players set rep.recording config 0

tellraw @a "Reloaded instant replay."