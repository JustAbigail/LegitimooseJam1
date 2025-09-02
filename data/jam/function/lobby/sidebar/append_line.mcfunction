# Appends a line to any of the game's sidebar scoreboards
# Inputs: jam:temp Text, macro ObjNameShort
# Outputs: ret -> number in fake player name as a handle for future changes
# WARNING: THE RETURNED HANDLES CAN BE INVALIDATED AND LEAD TO UNDEFINED BEHAVIOUR UPON CALLING SIDEBAR/CLEAR

$execute store result storage jam:temp Line int 1 run scoreboard players get $Sidebar.$(ObjNameShort).NextLine value
$execute store result storage jam:temp Score int 1 run scoreboard players get $Sidebar.$(ObjNameShort).NextScore value

execute if data storage jam:temp {ObjNameShort: "Lobby"} run data modify storage jam:temp Objective set value "info.lobby"
execute if data storage jam:temp {ObjNameShort: "Spectator"} run data modify storage jam:temp Objective set value "info.spec"
execute if data storage jam:temp {ObjNameShort: "InGame"} run data modify storage jam:temp Objective set value "info.ingame"

function jam:lobby/sidebar/_al with storage jam:temp

execute store result score $ReturnValue temp run data get storage jam:temp Line 1

$scoreboard players add $Sidebar.$(ObjNameShort).NextLine value 1
$scoreboard players remove $Sidebar.$(ObjNameShort).NextScore value 1

return run scoreboard players get $ReturnValue temp