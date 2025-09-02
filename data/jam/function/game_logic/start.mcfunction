function jam:bus_move/preset2tunnel
tp @a[tag=!isnt_playing] 89 50 37
tag @a[tag=!isnt_playing] add ingame
scoreboard players set till_roadblock timer 600
scoreboard players set roadblock_tier value 0
schedule function jam:bus_move/tunnel_sound_play 1s append
scoreboard players set game_active value 1
kill @e[type=zombie]

