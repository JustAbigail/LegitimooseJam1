execute if score till_roadblock timer matches 1.. run scoreboard players remove till_roadblock timer 1
#execute if score roadblock_tier value matches 4 if score till_roadblock timer matches 0 run function jam:bus_move/tunnel2arena
execute if score till_roadblock timer matches 0 run function jam:game_logic/roadblock_start


clone 8 67 31 20 77 89 30 24 27
execute store result score blocks_left value run fill 30 24 27 42 34 85 air
execute store result bossbar minecraft:blocks_left value run scoreboard players get blocks_left value
execute if score blocks_left value matches 1.. run bossbar set blocks_left players @a[tag=ingame]
execute unless score blocks_left value matches 1.. run bossbar set blocks_left players
bossbar set minecraft:blocks_left name [{"score":{"name":"blocks_left","objective":"value"}}," Blocks Left"]

execute if score game_active value matches 1 if score till_roadblock timer matches -1 unless score bus_leaving timer matches 1.. if score blocks_left value matches 0 run function jam:game_logic/bus_leaving

execute if score bus_leaving timer matches 1.. run scoreboard players remove bus_leaving timer 1
execute if score bus_leaving timer matches 0 run function jam:game_logic/bus_leave

execute if score game_active value matches 0 if score game_start timer matches 1.. run scoreboard players remove game_start timer 1

scoreboard players set cones_existing value 0
execute as @e[type=zombie] run scoreboard players add cones_existing value 1
execute if score till_roadblock timer matches -1 if score cones_existing value matches ..4 run function jam:game_logic/spawn_cones

execute positioned 89 44 39 as @a[dx=8,dy=1,dz=51] run damage @s 1000
execute unless entity @a[tag=ingame] if score game_active value matches 1 run function jam:game_logic/end