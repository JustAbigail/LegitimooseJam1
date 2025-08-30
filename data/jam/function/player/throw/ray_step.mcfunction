tag @s remove block.thrown.ray.new

# execute if score $Throw.Ray.Steps value >= $Throw.Ray.MaxSteps value run return 

# Check for collisions
execute if entity @e[distance=..0.2] run return run function jam:player/throw/ray_hit_entity
execute unless block ~ ~ ~ #jam:ray_through run return run function jam:player/throw/ray_hit_block

scoreboard players add $Throw.Ray.Steps value 1

execute store result storage jam:temp Speed float 0.01 run scoreboard players get @s attack.speed

