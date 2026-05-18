$dialog show @s {\
    type: "minecraft:multi_action",\
    title: "Choose a player to duel",\
    inputs: [],\
    can_close_with_escape: false,\
    after_action: "none",\
    pause: false,\
    exit_action: {\
        label: "Choose random player",\
        width: 300,\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger board_duel_opponent set -1"\
        }\
    },\
    columns: 1,\
    actions: $(actions)\
}