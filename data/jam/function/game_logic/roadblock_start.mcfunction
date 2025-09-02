scoreboard players set till_roadblock timer -1
function jam:terrain/clear
scoreboard players add roadblock_tier value 1
execute store result score terrain_var value run random value 1..3
function jam:terrain/place
function jam:roadblock/place
function jam:bus_move/tunnel2road
stopsound @a
schedule clear jam:bus_move/tunnel_sound_play
