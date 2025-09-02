scoreboard players set bus_leaving timer -1
function jam:bus_move/road2tunnel
scoreboard players set bus_leaving timer -1
scoreboard players set till_roadblock timer 600
schedule function jam:bus_move/tunnel_sound_play 1t append
kill @e[type=zombie]
