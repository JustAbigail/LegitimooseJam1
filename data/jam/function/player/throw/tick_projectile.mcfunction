# particle dripping_lava

execute store result score $Motion.X math run data get entity @s Motion[0] 10000
execute store result score $Motion.Y math run data get entity @s Motion[1] 10000
execute store result score $Motion.Z math run data get entity @s Motion[2] 10000

scoreboard players operation $Motion.Y math -= $$Gravity math

execute store result entity @s Motion[0] float 0.0001 run scoreboard players get $Motion.X math
execute store result entity @s Motion[1] float 0.0001 run scoreboard players get $Motion.Y math
execute store result entity @s Motion[2] float 0.0001 run scoreboard players get $Motion.Z math

execute as @e[type=item,tag=block.thrown.trace] at @s if entity @e[distance=..2,predicate=jam:vulnerable_to_thrown_blocks] run tag @s add block.thrown.trace.hit
execute as @e[distance=..2] if predicate jam:vulnerable_to_thrown_blocks at @s run return run function jam:player/throw/hit_entity
execute unless block ~ ~-.1 ~ #jam:ray_through run return run function jam:player/throw/hit_block