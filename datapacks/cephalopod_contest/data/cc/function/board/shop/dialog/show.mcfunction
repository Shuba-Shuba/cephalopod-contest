$dialog show @s {\
    type: "minecraft:multi_action",\
    title: $(shop_title),\
    inputs: [],\
    can_close_with_escape: true,\
    after_action: "none",\
    pause: false,\
    exit_action: {\
        label: "Exit shop without buying anything",\
        width: 300,\
        action: {\
            type: "minecraft:run_command",\
            command: "trigger board_shop set -1"\
        }\
    },\
    columns: 1,\
    actions: $(shop_listings)\
}