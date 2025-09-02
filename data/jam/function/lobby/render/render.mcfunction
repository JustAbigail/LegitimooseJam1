data modify storage jam:temp ObjNameShort set value "Lobby"
function jam:lobby/sidebar/clear {ObjNameShort: "Lobby"}

execute store result score $PlayersQueued temp store result storage jam:temp PlayersQueued int 1 if entity @a[team=queued]
function jam:lobby/render/_qc with storage jam:temp
function jam:lobby/sidebar/append_line with storage jam:temp

execute as @a[team=queued] run function jam:lobby/render/ppq

data modify storage jam:temp Text set value {text: " Game Status:", color: "#ff8c00"}
function jam:lobby/sidebar/append_line with storage jam:temp


execute if score game_active value matches 1 run function jam:lobby/render/in_session
execute if score game_active value matches 0 run function jam:lobby/render/waiting