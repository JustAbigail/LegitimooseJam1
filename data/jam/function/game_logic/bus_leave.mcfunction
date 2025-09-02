scoreboard players set bus_leaving timer -1
function jam:bus_move/road2tunnel
scoreboard players set bus_leaving timer -1
scoreboard players set till_roadblock timer 600
schedule function jam:bus_move/tunnel_sound_play 1t append
execute positioned 9 68 4 as @a[tag=ingame] unless entity @s[dx=10,dy=10,dz=26] run damage @s 1000
kill @e[type=zombie]
