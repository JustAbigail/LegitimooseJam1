execute if score till_roadblock timer matches 1.. run scoreboard players remove till_roadblock timer 1
execute if score till_roadblock timer matches 0 run function jam:game_logic/roadblock_start

clone 8 67 31 20 77 89 30 24 27
execute store result score blocks_left value run fill 30 24 27 42 34 85 air
execute store result bossbar minecraft:blocks_left value run scoreboard players get blocks_left value
bossbar set minecraft:blocks_left name [{"score":{"name":"blocks_left","objective":"value"}}," Blocks Left"]

execute if score till_roadblock timer matches -1 unless score bus_leaving timer matches 1.. if score blocks_left value matches 0 run function jam:game_logic/bus_leaving

execute if score bus_leaving timer matches 1.. run scoreboard players remove bus_leaving timer 1
execute if score bus_leaving timer matches 0 run function jam:game_logic/bus_leave