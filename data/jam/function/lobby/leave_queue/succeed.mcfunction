playsound block.note_block.bell master @s
tellraw @s [{text: ">", color: "white", bold: true}, {text: ">", color: "#ff8c00"}, {text: ">", color: "green"}, " ", {text: "Left queue", bold: false}]
team join in_lobby
function jam:lobby/render/render
function jam:lobby/update_queue