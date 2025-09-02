$scoreboard players set $Sidebar.$(ObjNameShort).NextLine value 0
$scoreboard players set $Sidebar.$(ObjNameShort).NextScore value 0

execute if data storage jam:temp {ObjNameShort: "Lobby"} run data modify storage jam:temp Objective set value "info.lobby"
execute if data storage jam:temp {ObjNameShort: "Spectator"} run data modify storage jam:temp Objective set value "info.spec"
execute if data storage jam:temp {ObjNameShort: "InGame"} run data modify storage jam:temp Objective set value "info.ingame"

function jam:lobby/sidebar/_cl with storage jam:temp